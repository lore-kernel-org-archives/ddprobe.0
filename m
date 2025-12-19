Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D8A23C505
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766187834; cv=none; b=A7zIl3xVyEta7lPjA+EGjzkLYj55Ib8kJ5O0FRhCX7qF47Luj0o197L1fzHaoJj66HxQ129MY0a6JiuSislz06hPfBbsx0RNfuH5GBHI765I/wCBrwAYRMpi8USu7Eo/BS1p9tkh2K5A9UJOFSdJPTunLnZ46Sk5oB+ZSG0ulWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766187834; c=relaxed/simple;
	bh=gya/xNEGPr+5OegtXk/gFg3pRyPNBQd1s51JFSEHuok=;
	h=To:Subject:From:Message-Id:Date; b=fMtjdvPh2gXLyc5ZJJGJj5u8GptBdOlxAtutQ6LvvtGAq9evglcFREbOrvsUOFgTY2UPOt4LHykLAr6BxDr/DTCH82FHlw99HK3wy3/a04PRrQzMOvlpeCaRBGkyHGI0RTweyg8LCnCXOCGV3anwb0GOQSI7Owiy0gI0gLm88Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vw7BgGD3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vw7BgGD3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18FDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766187833;
	bh=gya/xNEGPr+5OegtXk/gFg3pRyPNBQd1s51JFSEHuok=;
	h=To:Subject:From:Date:From;
	b=Vw7BgGD3N5D2DPbl1hD3eAqg2Ee6PYLkIByKq8u/rwGz4L5D1DPbYZZvfQqHa7NAk
	 hJdsl3BXP/jifPro4O46ArvXArNNJygZY7M7CX+zGQBWrIS4o1KLFXvnGzr/RTfYmH
	 O0gubmc1t2WIQoHOloOjINMaBbn3cpRbDAUPYt8UkTTvPnOQHN0gBx+2SSZGqos0yV
	 FfjcRY0YP8SvxOSnDET2VfPXdN+XYF8QElA4WwuIjSYdpJZnA9+7myAJnxjwfOZ5x2
	 G5GM33/RHSLieyxndbNN/uYwt3kLBBfD23VPBpBX3iRJxrt0Od5wh87icQEJKUxmer
	 FIyw1gSNP/P7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D5E668A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618783358.1538.10409328625523479761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c265f3b0053b03a2a4c6f3e0c7647767ed979332d7387ec2ff56d427961a801
Date: Fri, 19 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766187833
