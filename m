Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DBA184
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762509594; cv=none; b=PjjXa3s6y/Q/UXKfz11qcG92mu++lnTsX83A84b6SrOcyP8Ap45qcNUODTbNnNpTveIkUAkTY3XOha4HmqTXo60qZmz0nUSljCuOZ0wLzTReXN9mhKEjuKUa/g6H3Zl3kmQd62Yds0pNt30lS0E6i1ZFNNt3GR2M/Q7hJiyNj+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762509594; c=relaxed/simple;
	bh=pcAus5LcStL7Chh8+PXnSVbZPmiI41RZY4i0ijsJx9I=;
	h=To:Subject:From:Message-Id:Date; b=j6eEhi0sKW55CR7A8vCE7Ae7B3j6o7C7J4U1j1BCC+bNm7N5VOFcktp+A/K5cn8fsnDRq/w75L5ULfR2m2zM1l/O6PDtCY+peV2RVMvYMJcGeC5nLwXlgZ6VUgUM1b5ypYtotfwNUEPfDcJ/yVNDrhARf3CYJzr9cbjSvQwfjOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E25uAbzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E25uAbzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44D3C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762509593;
	bh=pcAus5LcStL7Chh8+PXnSVbZPmiI41RZY4i0ijsJx9I=;
	h=To:Subject:From:Date:From;
	b=E25uAbzNu0tQGt0PUY9fMo43sa7M775rpmHVeJDMTl9N5azSfqPkyvJXe4JRAHqDj
	 WAHJTHIWsVYBTgrgGPEN7NpAE0QZ7VElQh18saC2gIR6HE3xQIgqUMq9uW3mbdmOle
	 5h9hVXXDA4tYtFROllSs1KMineYY1+/yw+9LDLOF5Udm6N3tCh4DyoJcCSqlmIKKp7
	 buQymLHWHjK/tjBapkVY9JRe4WmcJWjJfWTyTPXLNKI9eAfoGa7wtw2H93KF3NAyBS
	 l0Rjr7fRnv+5J/gRgcoX33DsyPgHKpeTVPFe7kLEzJQAO8wU8GA8E+j40W2Ud0jWOP
	 blxxVMzrg8nNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981CCCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250959361.1764.2644901898833506469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebd6930cf16dff861e7dca60539830543fa3d6a7375cba1a9905fe0e7ad0cc5
Date: Fri, 07 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762509593
