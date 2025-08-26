Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6CF2192E3
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756169994; cv=none; b=uwIIhoFaXd/GcoJugeKxqvAM7icm7NrGZ1vhKaXnAxZ1UNNaB2EZcbVR9825qGpp+Jga9ttzrRJ/SVsG5GLodR1NdXGAjg9fs8vuWmOxn0/7DYJVCBNUBDEe7HliWltYe42WV9KDQa4oG0NJlgaZoNYlcbd/W4HR6+Q9EVW9lEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756169994; c=relaxed/simple;
	bh=CZsG/GaT6Ji3tkmJituBpRU+4o7OmaAB18becQ2qRTU=;
	h=To:Subject:From:Message-Id:Date; b=ESexiqXxRQX9vzxfuUP9oX/rA5g182fABijlGEypEj+62F0oxYqij358KGpaYMTg4R1vgcakZefKi5ANHKou4JxguQoFZoVB0SQPwWkKL5UZ5xzriJ/CgKuUU6dFvc2p3el90b8Lcz2ZMdzuKIxPB6T79jtFKiI+sFlnHVVngnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awJPgIuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awJPgIuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFE4C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756169993;
	bh=CZsG/GaT6Ji3tkmJituBpRU+4o7OmaAB18becQ2qRTU=;
	h=To:Subject:From:Date:From;
	b=awJPgIuk9Mfz85MER/hbOTCG3Qej2SyqyCUW0NRC9eUnKa050M1/YY1GsRblBvmP8
	 fuJw9pVD3MygcHHk8REgDa7SgeQrLImfFos4M4IutEhC/nAAtNMCQfp7jEVTsNVAQZ
	 qtiv7Im8BKYn3TDpmGgWUYaI0DQRJH+A7I9I13hITAyvxJDe/Pl3nR29GCehlSv5HM
	 JtlqKt8Uo6EK/3dVi1v9hiwfYyOngNWx2ENZmQVP4EioxcCNyeZbbKct6ntdrw7/yR
	 TkuUJfEPL5I3/EMU0L8Y3Upw+J6Op09uF5+7Jiy+/bD8PHCN7zYESh/y0I1Ix5OIL9
	 p3NS6HLFamPjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E28EC8303F
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616999357.16227.8030169420314251893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86f85926e711936480bad6aecc9a74f0106ba30992a58d9a279b62f43fa344f
Date: Tue, 26 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756169993
