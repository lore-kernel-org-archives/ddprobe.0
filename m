Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5383027B35B
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783899514; cv=none; b=T2p9WEZKfakWBxsK+8Sh9OCuP41EYp7peH5c4eVs/v9sQ6yEW+mnn7UiXFXdEUC+z8iRQ2y9hAt/28wvltb/tKk/R+ppmQFFVMpwTe2BgF+EfAby6UgeK52qp4e4CBA9LSR8DyZiN7WkGMet+KPduz6tUTnKj8pMosJczIOtIuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783899514; c=relaxed/simple;
	bh=iWsopGegWesxJB+jGnOvXjhUDHjAr1hBbkS3QOnlP/k=;
	h=To:Subject:From:Message-Id:Date; b=Q5hnGaRIcJ05d3thWKSakl2j8+V05haUBcd0fQoLiS39jI/mURX/Dd/fV3Y66G+vzkGvG0EC7xgCTyiJnZ1BWq8kywdMbxZE6R8iLDtcUmA357JoPVyFLY2TbFUm7n/PCZ2gzNPEjiYgmarPh3Ytx3hStNSR+5u69xJpxNTthvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pev+Menh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pev+Menh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DF0C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783899513;
	bh=iWsopGegWesxJB+jGnOvXjhUDHjAr1hBbkS3QOnlP/k=;
	h=To:Subject:From:Date:From;
	b=Pev+MenhYjTT2Hq4uKUAq+4IZfcbsgXzVf9XKJEo/TP1BHuGOFCb0v4XSff64z+8x
	 R0yEevOkhWSnGO3QfbWPTo3fo5TuJiPQKTLDbDPDOnlvB2rouXIziY/I9ejG/bVC38
	 IlLN9dkgiUSM9FjlRTHFzyH0SYUGiHwyVmCLwOuCgE9Lb7ulU6Skfr+bHEzPsXjixT
	 nTx/xuMtCwgfMrnERYDJ65F1AFFYM46clbtDyODpF/hxgmZdH1Zwt1+EabZxhdpUEq
	 R59wTQCmX17Y7mkad1fjtzfURwJRGDtlOlNxtaPXN/r/YhejxCeHXdUVLbQx8mVyj4
	 gJvoK8LIWbI0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7CEC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389951368.12504.6725188552510621009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 551a7c92e15eef110028b6dd7f9d8397124e65e859992769ccd1fc4930a78f1f
Date: Sun, 12 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783899513
