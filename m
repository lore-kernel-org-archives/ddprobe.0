Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498AE4F798D
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791329434; cv=none; b=ELKhGktQrtXK77zPLBNLMwRogHuO640ySJKJK3jCtiIdMV+3Brw/VugteMs4vtOiyOjepSuDvM64FMEaii0PjGiepqpDWGedrUir4v/C3H2xFiMFlbFJ3dpXnWsszc0+TP2cpkIQOpc0zlR2COVS6Eih4R9Mo6zb+bM0aX7GPTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791329434; c=relaxed/simple;
	bh=IhXg9XuNVAhSYu+ka1gF/21kzDjeMtKHxBNftgJKiEA=;
	h=To:Subject:From:Message-Id:Date; b=f0M01IqoV6k5Am/Ar/Nfjx+bhhvcsqhN+uKflPEo34AiN4Tg8a98N+27Tk642u0WHQaEeePIr3E46j72VoW2IOUN7eougUwknSm95/HuBlrUb1kvFgf+946diIFhV0p7FVyJEXgMITM+Q4O2Ua/0ga5sAJBWqWZ46rEwFzWdW4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXGloXcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXGloXcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC46DC4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791329433;
	bh=IhXg9XuNVAhSYu+ka1gF/21kzDjeMtKHxBNftgJKiEA=;
	h=To:Subject:From:Date:From;
	b=CXGloXcz8/mc2aT5EzFPFnZoN93e3E219VrMBNbikNdSWAUjnGYbp1jx+HzvLMyQW
	 U8qJ1GCkyRRbIdR4oxgYbtKcpvlLYbqf8EmKrXjs3ksh0zlOnAvHuWyg2CuOn8hbww
	 c9Br2T2jbPJQ/CHqh8bVTFbfsDgeLDwh2gNeUMCEnXCmZxRWk0TFy/n8b/53/tpFHb
	 vqCE96Nhf4vXXUUspEP13Q+1v0XifHUWck7oBAJEP1SN6vH5AeuGtjcKXoM066o14m
	 cK0JM8AcfytCM1KT4CpA9pWEzGeM5BUTZQQrC1R2iH0ucDaDMYzjT/oqTLE2PWCPuV
	 6aDVmY7VK1HBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5DDCA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132943368.26934.352171393389916655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ed00b5fe8c75cdb22e00fee337686dff0c4a6cb3b30a8cccb776b9fc219e57
Date: Tue, 06 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791329433
