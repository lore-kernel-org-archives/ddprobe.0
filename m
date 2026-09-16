Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7FA446073
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789590036; cv=none; b=Z3JdtHBoXAD8MDg1jvukNC1kYpZih+F/ZHsT9uSpIRnD0dPxXRWsA+6bkFftDZq/Yut+lgZtUacBq/4DAzMZ5AK6T7WxSZEqQD973LcOaz9gyCIVwySx4ro1ryoslXrQgKWrYa25jjzAPqzBX/FXqRjXqcrU0TtYWr7E1l7Ayps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789590036; c=relaxed/simple;
	bh=K3Awo9BWB8iK4T9tIXaqVgNskt3Itv2jIA4fJKYPN5Y=;
	h=To:Subject:From:Message-Id:Date; b=nkHNnnerLhuPVRK/56T2CrkwakVzp0e+QVDb0gH2JeInfMPbFBv/WTaj44EwqteEo4HHWcSl3UNbCHuA3TRo2K9YKfaWXJnWEpbYQH2MujfdHsBAQlMS0zjcxQ2bvnbQiy+JjtmX7AVea/bYWiWds5enieOZEmQBVcz5KdFIJuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MB3SBxQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MB3SBxQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC02EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789590033;
	bh=K3Awo9BWB8iK4T9tIXaqVgNskt3Itv2jIA4fJKYPN5Y=;
	h=To:Subject:From:Date:From;
	b=MB3SBxQtl/yILbgXDz1yP5I2fyqoCOsf/GaE7ABA/Xs2srxmO885u42ECQkz0+tK+
	 nK0LvLs20UxPwfTREvNMt0gKXQncg9DA+LMU07zovWV0gYLzdamp0Khwhsv5K8NEwL
	 sG7AYl0Fo1H08mR58Uz+NlH+1A4Q4og4WODKe5jynso+xacAQFFqtwMg+p5MSKPe4t
	 F0154NABMhUYONkwSTlgTSvao+SqHVNPyJaOY6StnlNy4yGKLNdUNV+15aEUXyfHYF
	 q2135W/CMLdyugqODwz7dg9kv4vQubyWSY//QFs4h1wtvtR0LF8jhemFab3oR6K67a
	 9tAFsYRXLSLvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A6C982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959003368.28029.5696374392057121953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd9755f858113768626596f9c63695db1ce7368493317acfac113a7250192e2
Date: Wed, 16 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789590033
