Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DFF6FC7
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725135954; cv=none; b=PhjIhtlJNH1xceFHj34XBeRI550Meedj40QkTuYIpc2Wh1g4+VqfLSD28zjxWGicPDPAOc2bLTbp/z95PPDz+cqVF/MRt4fa6KNqEfQgL0lrlMsKg5VkujVTflqqTlWuxHJ3o542Y/M9clAGPcQrO+0ONVMNhndGefhDabT5cMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725135954; c=relaxed/simple;
	bh=eNOKdPw529r3qT4+Xj0oAGijl7CB8aCEEO5vBAFA27w=;
	h=To:Subject:From:Message-Id:Date; b=cbcNJYix9Rx3TPjZVIKJgBEJwfI+RN2LoGigl5Wb2ItuyINdBPqXVHWdLo8vaJaPnyyTTTLrdeztkDApa2gMI9lShl+PjTzp8swl3Ob0ZrhzeWSuvjQ2lUZioPOIk6Bqvcy1XbXkQ34mZZEE+VDT1apcGvTf2X1XmX9wWLLb4kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Viqf8H0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Viqf8H0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90E3C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725135953;
	bh=eNOKdPw529r3qT4+Xj0oAGijl7CB8aCEEO5vBAFA27w=;
	h=To:Subject:From:Date:From;
	b=Viqf8H0lMcDSpYSm0czuGqfR3X2W+bCPJLTtZwBLL504EQXogEi2K8kMnErAePhN1
	 6n7E9yPXCYzdaGfDN3+ptvsTFA41vGCgb/ivAv5E3t51SFkuMCf3ayurxRvCcJ/xmp
	 bnVhoqZIqxvTsvC7EjbZh/TpwVnSc7JQl+pRqEIB9AdWl5ziDfKpzdpwiREFXecdQM
	 lo2BgfgCt58gdwHW0Hs1aab1+fdzdVP41NB2EaKxTARJo5zLRRLiIkpJMeLR/bTvH9
	 6S2iBC0OxlaKdfbVHcWO5enEpj04CtC0jmhKyrbH95DRIu4pcDIV4TaXqyHv2T5HaS
	 DTAVCxsl5/7Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2B0CD3423
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172513595367.14052.8111197753661304173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6099ac9423ee96503865b98362021fe550d596376822e291eb686acaf5b915
Date: Sat, 31 Aug 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725135953
