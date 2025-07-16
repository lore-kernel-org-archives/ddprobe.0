Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE3E28A406
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752658794; cv=none; b=En7kBmCWmqE9RqcGE+3zIQpMAWUQWGieN1wSF+O+IpqzM/SoW8sC4nwHCUHOo66q9WsF0fH2LsERnuA5zPQi+UYxB43h+fBrkg7jSyx5gGiPZT5/ycf9RaIp61nNQPxo67v3X69s0q06x80PNKa3IgNxSMJzg7gnDVMNlt2Gl/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752658794; c=relaxed/simple;
	bh=tS4xaMHn1Gl+LUniH1sCLKZDQOVHrCNiaMoyRxt44Dk=;
	h=To:Subject:From:Message-Id:Date; b=cN2RdtNmRaefyz06NQSvRjrFzp0vPR1P+55DZgoSSSl4IyUH0Mwt7Juduejd92oWG9/I/w7u8z9RG3GOhtbgSnhVC+PBXhwyxS2NoPu0eKffZx/ZkSOgsYgLFbpEyjC3+GJorFltVAyGp5nlQtZGozVQEXAeeqxvr7LR2ksO1YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfCBRsfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfCBRsfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1921C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752658793;
	bh=tS4xaMHn1Gl+LUniH1sCLKZDQOVHrCNiaMoyRxt44Dk=;
	h=To:Subject:From:Date:From;
	b=EfCBRsfKCvVBH13BvcZuvxl27EYzfiljKeiPqkzUj3Hw/XyENpA+GUnDSGegen/au
	 sMbvx36ySdJ8qt4USC+SQ6TS8bPXv+zZH3qD3QcNrt5Fxr5hPuIk0G8vGmUD9WXQ9D
	 NkB2O06hPz7KNF4BknoAjKcjY0+5+VJacMT1UQKFGhxy4kFtitUs22C9vG+1IA0CEg
	 snSmuyd7Ano7e4Lb56y+gXiVHtNrCb3zL9V+eAmm/oE/zIyUyLw1eTMd+7RxHvCe+U
	 EJP2qUaOSG5LU4P1YWCWBLrykKz7/hs4YUttyIukeNChnZO4db7MRy2ocNdGNmINHW
	 kL9zb3pDuTUIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907BEC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265879358.9581.12905239805339243958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c98d8d0ac70b20e6649b12d7db6f444bbaa9fc0330b5269df89c68e33e7ae45
Date: Wed, 16 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752658793
