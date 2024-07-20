Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EC81C27
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721462754; cv=none; b=MgfERc6loedFEhLoviuRKLEEXBIjP5ar7uIAxbhT0BLBVqt97QHsBfdgubYyaqKE0k1eh21VIlKx0M0GBDOnCWmSORe9v+ulx5Yi9Dbg57ibbfbH6w9a4hlUSb6SAFbOhx0OCX/fOkuyk8uuLXOfItaqjHPqAaBrZ2ya2beQK/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721462754; c=relaxed/simple;
	bh=L7XWkYwyI0kEankS4r74zZx5c9ttPnUqLsau0QXRkKw=;
	h=To:Subject:From:Message-Id:Date; b=BzI/uvem92bjFOr5hMSMvj8TXJAn3WaKLBfNbMlE9/PjwqXZPskZxtoDAVVNxHYsfbblvGeepTmoPaIRW8MCfDGUb+OgscD/qokhitytNP2egasGWcYsEzFarFDFpBBexXyqQ9XWYw6wka8jNg+0P4qgcudhDq5roXdEkSBVkZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cByD64Y1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cByD64Y1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A703DC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721462753;
	bh=L7XWkYwyI0kEankS4r74zZx5c9ttPnUqLsau0QXRkKw=;
	h=To:Subject:From:Date:From;
	b=cByD64Y18K2eVnY1a5rYfzO5j2/ycih/Dx2AvbsYGE8IEZbSIyrrKXyyWQ6HxqGju
	 1teZ7o+DYnAhs33yI3mfcXYnBFsDxzD3tcIcEPISfT1w5ql7meOWU/5S06bDTQEbWv
	 IK4YA8buNM2wNHtlGZ5GODjuux60knN9HkxR0FF7mwg9F6gw+jQviGnPm5gZLXTvf8
	 Ev3cfvGcdcKtk9SXkzkcdj/m0pdhZwrHxftKvywvErVYTnjq0Hd9P8fdsxWItEzg9v
	 Ofb63M+F/mM5SrgUjhrQdpN4dknnQOHp4FlPH7Dz/j4q9CVTvWF/zUEM/9bNtDKt7L
	 5DrI8PaOwSsFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F8DC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172146275358.13499.8939196262393044444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3465d0bd00970276f1193c6a14c80f5a90e12212d54e47ea199966a2a204f2
Date: Sat, 20 Jul 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721462753
