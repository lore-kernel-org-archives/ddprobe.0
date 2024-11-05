Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49C618F2F7
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730801153; cv=none; b=ioblH5kCKS266OUu633wloku8/T20A2zHZLCPNY06BSXT+gtNG/T9mx4bScWvbqUipVM1SkE6kZQTRBWT7awujsf1sm1j6iSoIx4ADP2NeLnBRo+mUtsipXaoJ6Lfm5X7uQv0tDHPVh45rbLwn0uObj3pqvbX27//sQyUuYk1mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730801153; c=relaxed/simple;
	bh=lDpUIg1SdM12Np03ZRYIVEaW9TeLak5BMAaKnRh+QP8=;
	h=To:Subject:From:Message-Id:Date; b=pbajjWXAHJVuPbbI/CsPkClJFI4W4RlaqA3i4D3lQ42yTT4lhmmChS8Jpf5KEoTBDGiREqE9Xrvu3r05yT2/2B52jdHww5ftlq6G6BGH71NVYNIzNNQhXwoOQSAuuJgMWS5MwOE0nCrmhyPgIC71Y2UHX4I37HnabKKE78O5AMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKo2s+BN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKo2s+BN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AA9C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730801153;
	bh=lDpUIg1SdM12Np03ZRYIVEaW9TeLak5BMAaKnRh+QP8=;
	h=To:Subject:From:Date:From;
	b=oKo2s+BNjbHpbjp+loX1ciTZh9qh0iIjgNmNklreSml4Q83/AvR9N0av2SukngSIR
	 hnQuEWXgKJlSIBc7L/0qkuWmLMJPd1H8U/2lJMgqg9SNMOqHBb7g0V3sjBa5RzoPm/
	 0Gezbih1u2GMb3RHydPBVCas0xRiYUsrQk6JGOE7PzKDrWt/L4i5QP/iaVUmkNiw2b
	 fM/UUcmHLSHkWUAAw10MmsDtf2r6aFM83UlvI7EDI8gC052W3MhIm3XJtKBQQfupXF
	 XTo2LLEgY06anaRvue2m/FZLU1kZBld8rxg1ykD/ovklV0FcgmDnMkaFsxSCm/M3tp
	 /KMa7urkAKJiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9195DD12671
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173080115358.7301.3427728064542635037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc71891a7350830c0faca34ed6db72df9873b1d5daa81f5aad108592b1568116
Date: Tue, 05 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730801153
