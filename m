Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2652D0C7E
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752554394; cv=none; b=MSWyrQ73sEUXGXlb/pqN5iW3fej4mmv4ecc8aR6L2DvDr49mH5aGLMHW9b/9aI8RCoQcPmxwKqTiEurYyRaqqv/WMlgHFcmOUsc+EZcSt6QOKrSgmTxqLiSAUVkTRCbUnhhheih80zKjROAXBplTqSfcMbaq3pJjQWf2SFGbeE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752554394; c=relaxed/simple;
	bh=RmoVqdVOf92gBAn3kbkNbVV7PCefNxVt/M/j/ftl93w=;
	h=To:Subject:From:Message-Id:Date; b=GARBJ39YH7OFmwgmfem1Yt+nLMnDeKKZm65N8AUmIPYW5LVwnCWvPgnr2neIObtHFgEtQ+YGYlwnLZEnPeYO1+InSIaWTCjW77/6hdXCr8ywuOpDnB73ZcdKMnBAurYMiPlqsz/HtyROeWPKyNCsEAPecmO6V8U/X0Fjo4HFTng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmyT95Ai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmyT95Ai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD423C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752554393;
	bh=RmoVqdVOf92gBAn3kbkNbVV7PCefNxVt/M/j/ftl93w=;
	h=To:Subject:From:Date:From;
	b=EmyT95AiGg2OtlQvKWdi96dO9TQVzcEvXLHlvGH9ofjTyMMGBnQW7sswP1WcuhWhL
	 ULKfrJuaTiuzqteZQsr3hyDcja7cbkewRFGJXXaEj/ppI80cEHTs2y4NzM1y3f9OBp
	 BIhxIy+mgQJh2ta18zxubCmIFCa/qM5mv888qV9WG/TGWPK3DC3+jyS4R4LoyMsWb7
	 lkT9UbgAGfGTpnVbiZupVL93RHOSVe61miyva+0c32TDvaDuF+FbgjClRo2p5M+YTB
	 7UTO3FVPOo7m8AYY/1OBIA/Hcg4xEou+91b3GkKFJ/HZebON/+grEz1gx+Jz+QYy14
	 QrRlxT15YUlUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D41C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255439362.2350.7898306530904317254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b24d961c89c5a7e6e692548527f24e81eccd65584e594eb81400f9918d4f4f
Date: Tue, 15 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752554393
