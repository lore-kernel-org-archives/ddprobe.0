Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD80379EE2
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778674834; cv=none; b=TY6r7UAuYiyjrbiMi8dls/LlSyi4U2nYs7jmm2Q88Te827HdxTvfG9Hm8xJMgQrvD4fEXRR41idQaUB9Z96qbgbLAhhpwTU2nxdLqzonNflgTggTkJc7kHG7YfHWX56/99ojBacEfKCMZlyQ7OIuYUEDqV2117ZD9iBDx7JuQWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778674834; c=relaxed/simple;
	bh=iWIvhhwX+qmFvF1SHtynoz842xXzCpnaMv/hr22MrOs=;
	h=To:Subject:From:Message-Id:Date; b=NhibOwUHmap2a3pk6Ifsh29MKtYb6sHLV8AnFBP5F01d2mvcNQNFJGdtQS6a6Xy+dGAOdV2QXN8xecDc6WHSEtbvzFCU2nsYj6qr9yMylIhrZbMXuJ1kwttXzyjE131eZocgyA6BzSGoOkhCko6H2cFUWlz3iDZr10Mjb6qZWvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UccCrFgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UccCrFgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC8FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778674833;
	bh=iWIvhhwX+qmFvF1SHtynoz842xXzCpnaMv/hr22MrOs=;
	h=To:Subject:From:Date:From;
	b=UccCrFgdUVMGS/VFsDJpxdYiaOJI9JZUG2NRHf7qe+eYKmwx2EOBF2bD9ARhTDapd
	 wxaV8sdeADm6DOOjKgcHUC2BeziPLkrUoKVcfXaqDQf6JC0yPILxUcnlkiESEIiAbB
	 S8STLVVIkYRjbgvKwl/gdhrbxTA9jvGMe3ZB6t9TcCl4dwqO15SRRuce7/Dwmkrno5
	 Xd4lfi83REh+jaXceWPfYug8Kfv/cHp5/RawMstn5Ofsd5a7BkeQbyZfBfA/HE7wdD
	 CvcW6MQtiWErR9EtKkU8zFWFHt3apsm6gXJ11SyUsMZXk+hHjtH1Ssq8rwoSonU6F+
	 PfXE/Jb3JcXjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4EDCD4F39
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867483369.14985.14808029772166766315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f130db6a03673caf53d32c6e4d90cb0ad5989d6a474d6d64610b243b18c8690c
Date: Wed, 13 May 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778674833
