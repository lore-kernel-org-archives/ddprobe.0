Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207E1285CAA
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763395314; cv=none; b=PVklu93nQ3ZWHPWAtz65ltD0pOvq7t17Ye8cpDQtF51yVnIkkFl4+Yu4GeTZ5oLecPsXuprzKtnIYhHO4t9Og5E/DNTm3bynL5mojg5lOwkRpkvgg8/1QX0eMVM4nflQOLOZ860UssshjXljn0Hl2Xn31pTmUAMbacTM60zPKag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763395314; c=relaxed/simple;
	bh=SbjRbCOTs/foZWapk0BpDLzsUZOyN3tBboepDivDjdo=;
	h=To:Subject:From:Message-Id:Date; b=YiRpax2C0Q6C3Obv7TbHgWA8g87lyQ12OsuFKC8sZJQkhq29PsX+BhjofpZNFFRgc4Y2PO2iLbjZjddB2Rscsw5zGLtA+Jde4zTDfxyqxaGqQJPYxmfb6BMWdEL7OSUn2Rp8Dfwjcuw8+0InS7efyG9qphWtDmLV96foPkkc29k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=do6+Ap6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="do6+Ap6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50DEC19423
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763395313;
	bh=SbjRbCOTs/foZWapk0BpDLzsUZOyN3tBboepDivDjdo=;
	h=To:Subject:From:Date:From;
	b=do6+Ap6Ghef43sHovQlJTxA0WVTSJiASD9Rbn9lgobfJcu6He5s0QGdivU0iGAkgz
	 qoUi29ZMWlIMOebsc9IBA0LjAvSqwtBFtsDKJ8D5BYsgJMDdneiEVD1bQXRyg+sLLW
	 6pptagMqPfdkTq6qmsXsfoa5Oa6DIczN2qoIU4XsHTA0PFKRB6CWlvA5kAVIXeHHsY
	 doaSveq/vD1tPbEmaND1otiTDguuPPBWGmFtcIensEkM67USTGa28C9u6ZB9oBONFd
	 KtX5CjtZ0WCveT4wAD7q/C96a/6vAGYli7OdSt2YBTZLbeMnWZDUzrPVa5Ps1hpVj+
	 F8+OPiBNWwgug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98673CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 16:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339531361.3360.11204687382314387390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f035018159bdfcf8243f9e253945151489439e388bfd0e3097ddc59192bcff88
Date: Mon, 17 Nov 2025 16:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763395313
