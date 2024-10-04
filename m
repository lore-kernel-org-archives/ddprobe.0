Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C52E1D89F0
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728069354; cv=none; b=SUmFM7PugkQihi7rsYJ998MIzDihRe+th+Y6NFiSFCOE2aeXx5OdvN6BJyNM9O9nFyq7dsR7mqfQahtyh1UmgaFq2p/PDRuAddEio54gEVazbGQu71bs5RZNLu4r2tsHI/Tsedp+zzZqBEAIP3I5Qdv5MO2WyowKgwCEFetzpzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728069354; c=relaxed/simple;
	bh=lry3xYrQ/VrsP6PioUUFkK1hoVMjMUEMRZpLkGgKiCo=;
	h=To:Subject:From:Message-Id:Date; b=mhAt/dLBSp/olKqp+eiOAZKJ1LD+bO+9MpJ4kA7PeC1XdXxFmoVnPgbOhE+6HrxyILXfPKhTtPg9emxISNOq39EN1oL9/u5/EYGHStk7kxKUVOZ2qmUWZnj106SLfqi3dCUScey4VX+auHfAW1WFdabSHcij6KNKDcWwd0b1lwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0rAuHJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0rAuHJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F0AC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728069353;
	bh=lry3xYrQ/VrsP6PioUUFkK1hoVMjMUEMRZpLkGgKiCo=;
	h=To:Subject:From:Date:From;
	b=d0rAuHJPKbdYjUpIFatEUvOffk71QxyC8RtkuyT/qg8U5dX4FOE6YzNsL4FrmczVr
	 jEQ+bkGbmL1UkE0P5BmaxNG3q1gKph1k74o205MMXlk8xKGVcmgMY9Hk3Pso640sct
	 jNT93L3+BnFY7RsOvti53I2Xp3adMEY14yZpuuEny9CeyMQGs3IltGYkfqx5hWHdfv
	 DHMbf4OghzJfE1vg2BbD1a9OYKDM5rSH5P5LgsQnbBJOGeIHDExkPsjxlECKlOikvu
	 677De85jzovI68qgfgvVbOyHD3xMHoQXb/Z8gtcj8fjvg89ucw9Bz4K/5NopVVyxDB
	 bSQrhxmYq/YnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C137CF8856
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806935362.25573.12961449409074840835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b58b64c4b3a42868a26becaf89863246a6d9e1a6f44a400a94477e15ac253221
Date: Fri, 04 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728069353
