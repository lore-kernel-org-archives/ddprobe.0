Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FA72ECE86
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766090634; cv=none; b=BwLEIP/mFEoLfTzeRFIRIcXEMFnJzB9Ad3sv6jm8NF52Y4QFu6FaKZsuCH2pNlOdMWICVMZ1paFYyV+FKBnX2yEqZQQMgv4+Ft22jC5UG5ZKhNDOZc+/jm80U30Nkoum2wvdA0oMPa2U+hT2QEKGGHyB6+GrF2prcO0p24FyCiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766090634; c=relaxed/simple;
	bh=JftQQDhsfjiwB6UIEAAvwGm8xd1a1OAVnGnN41eCG1o=;
	h=To:Subject:From:Message-Id:Date; b=HUc0tdm4lB5o7Q4BcgEcX1W89TDZ3dcB5mcQeQSBpOhCAUCPLHXALjuxGj44BEcJPceupMWQEPNbfGUegTMEyj2EqhoMdALlefoGS+FnI8XjztVOO8b30kUb0pmOvjke/TX70vv4o23FX23uDLayKpPP0pFsiy/p7cKu4YOvXJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnJ2daJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnJ2daJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49B9C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766090633;
	bh=JftQQDhsfjiwB6UIEAAvwGm8xd1a1OAVnGnN41eCG1o=;
	h=To:Subject:From:Date:From;
	b=mnJ2daJxkcBMXnV4Ih5JgObWqE45nBXfswzPhWC9xa7CCay6+QyGzADXL9/WgkFx4
	 IU4IlEXMbKFXQPuhTKEMjtu+IFaPS4e9PNTNIPXksMAIk2sRO+Q55aFK/0NosFGZ20
	 C8w/YXOWgVxE7OOz7uWAC53oWh0TOuosN/pcKI/O4amBohOimEAPvsD7NEAjWcS1O/
	 +WZP9yPM0/UsdwPVQC5xRgelecyCRrXM0KIjUJf6FK6eADiOSd4RvhN8yqhIBFQzT0
	 /FwFxuF8ODvzS3IhDO8gcFnuaXJrbBArxfYeGFqSqTMXfOtk/I6KRxjBNuI4gWY0d2
	 brzv5JDhCZUBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93180D711BE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609063359.16038.5744549006050290559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5d4a9fe719f9f72c4339d1e21bad33d502d936cbea87a11c7607c282b0d102
Date: Thu, 18 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766090633
