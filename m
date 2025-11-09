Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2945663CB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762694394; cv=none; b=iN8OmYKuVtzLp3krh1EnKm3P0ov2gRX32FexGYG8MkDn6qpoDuVz3KQn1CTrCG3vrIdvLeSRDp70f4qtXin2sSvAV7sqEE23qU8FIMus92Xvuc/DfOb7BeOpcXdyp/vOS32NH5BvKS/rhm9Qd6uMBUPyYdLj0NuQpnx30g8WBSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762694394; c=relaxed/simple;
	bh=tqBlt5Z1MYJvN373g3Wgpzdcy5kd9s56HBVDzl9BPeE=;
	h=To:Subject:From:Message-Id:Date; b=jRq9Uvy6sQ2tZxbiC3z+9gNOgAxWrcOPidHSfGEE/F9s37tyMUlU2DH+BksmWkkI3b5edGIGp8USx+HsFJ60zrmbTSGbhL8VpT6mJlOIM8F5unKl/i6yKl416S9RVDKBOu/kQ1hCEee1Vp1ge+yJ1tB9fGbWsXagG/ahRRhG4SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTKQatmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTKQatmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDF1C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762694393;
	bh=tqBlt5Z1MYJvN373g3Wgpzdcy5kd9s56HBVDzl9BPeE=;
	h=To:Subject:From:Date:From;
	b=cTKQatmJP7XsG0g6P2aViF46GExMFDkEzS7e7rjwZ0y/WFHqGdJ9NiInD5eWGkmKJ
	 W8F6DOHnLIUYwaOm/CECIAM7mgq3/1mpTF4u+CIFXyu+EMghA1vZTCxPbCPbf0bjTx
	 gwFjtJS6VjP6YaB4rqK3zWD2ufdmDweWOTf6sCrfjj4/4NxTD99iYQPyQom+WRJLwy
	 fN48YeUglFsalU0GVf2B/si83WHSoQb3HZ5whF/mQxUIa0fW7OlUILBsfCuKf3cpkS
	 /DexmQNqM7RDuzzgAdIngNJ4toJD8JvncfCnKwO0isDhjPbPWFdhOJXhg9J+EOfTdH
	 817KklCQ+b6ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E17CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269439357.22075.16011041032107615699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c8bc472c3268a7995899d99030c60b318874dd252a283b3b6c1c619e9efb6a
Date: Sun, 09 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762694393
