Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C420C254876
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743707393; cv=none; b=NYNclPGhiNLEyBY40vn4+1XmaL2pK8MkbRYYGFl8RFmfcqIxazxoBmMm4VxYYvH0JG0/puwIpsGry0LngZCLURBgseeMIuXBWHbD5IR+C7tcs57syYwYvPcpY8FrJ+gpk/koG244WRa5OlQNL6CKlwTyGMsH8tlYLetTdQ0dFaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743707393; c=relaxed/simple;
	bh=6CL6INQdy976NtDXFAMqjpWRiQ5OwBhWo1L5fOdDz20=;
	h=To:Subject:From:Message-Id:Date; b=GxPdHghs0umnHPdg0ukDDDMHuQUAeC7q7Wgapkb2ZiS5jtV9UtgbspLaLbITDtvscSiUm9K4Q9KcJcjctGgOjqqYOuub4seiLkJHdEQz9IwvlHxw5m5zC2i9OlubPyeXVLlQ8ObXmZ5QDHM4pfy03mnkoGrtuCdgcaHPr/YKLag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg8+mdv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg8+mdv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8391C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743707393;
	bh=6CL6INQdy976NtDXFAMqjpWRiQ5OwBhWo1L5fOdDz20=;
	h=To:Subject:From:Date:From;
	b=rg8+mdv8A6qL/Zb7uExg0K6tKoNosHrMvEhtyejb44JxKv4s35UQWxmp5GV70WRWE
	 H7rutIaECE22A7QjZAmrAGhvR62fMNVMJAfQo59Gc66mAc0zH0WUU7mkT4UKQgySrd
	 qDBkRz2yOCpT4RVw65rc+xt+60uLJaoRLEeFOxd+pzW+NONQgbRXxY54sHU9UYD+XU
	 F7qGcpFBb/+v175qBfNO/mVN2pNrKIosR8t5QuNh6tgLEEHndR3NrxJKoITa1VFTdS
	 d9hFttU1giorlkClokEXAgLC84U++O3KokbjXKvVO8HRSjsyoQId3am35RniNAAV2l
	 FL75vub3r6GmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E14C36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174370739361.684.2720617040042103586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104dd0205f18091c8af78d2694dc63a794504f00785f2a141e269e60519d83db
Date: Thu, 03 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743707393
