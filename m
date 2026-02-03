Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D58D256C8B
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770159834; cv=none; b=R49TAiSMmgJKR20REfaqnR1dwGX5Cd2mXNHNANhNprvjNZJY4nRMFiQVsIg7hrFBX/xDtm98Z1hYWFIPDcohSHfPoDLOYMpBdhzo0eJWXuPm85c20yVsTvze4CcO6fpaLHDumBiBRhEppQt50rnlpdJnyKS7og74JPJJDirHe38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770159834; c=relaxed/simple;
	bh=Eb3JVqGZfXNt1xML3V5KAtbnh9u5rqy04C2PeZAl8E8=;
	h=To:Subject:From:Message-Id:Date; b=a505ZF3/nQzm/K6ZORqoIn2EgWgZ0aZN4UDhJJhNzlP9QFD5FDFLdD/ZAiNJlS9puEJIBHbXyns5CzY3hG34sH8Zb3uhRYeeyC/Zaz25wHl/KeAT+M4WiXCp6ydoP1bCoW7oYngQyjW9MFE3bzsctPiSMIAflKYkGxfsLM6YB8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUAHFjBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUAHFjBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4800C19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770159833;
	bh=Eb3JVqGZfXNt1xML3V5KAtbnh9u5rqy04C2PeZAl8E8=;
	h=To:Subject:From:Date:From;
	b=lUAHFjBra925Mc846zsyeaMC5Enq2QFcSsq8jzrMBYxhXKN0NRIK5jHK6t67T7JD1
	 wrcyJ1TyqasGrSzRkHkMVaQgtG6nDNso/x3XKjm26RvvCWAB9w6iunexCm+ms9ZqIM
	 j2XMEzEm04qB6MdLTd871W64ocX0DR0MGnjYqdO9olMpasvfcTGDBtnt9WUj25Qz24
	 47g5dpLWFcZMWEGhnGTptw2n5uaOsTK0PNn1E3VfVIT9RHjpV7EPZLtHPquHF7AS62
	 YvqyP6wb8PTl0Glxk/R9t0C4s9bteqadvIlWizisnIS3X7BSI33DMaLCriZyPegpf8
	 SSyNezsAasysg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02B9E8B37E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015983364.1772.3817799018568354553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e10e209377cf56020511df24aa9073ae5ea435d151e85a582398104d337aee7
Date: Tue, 03 Feb 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770159833
