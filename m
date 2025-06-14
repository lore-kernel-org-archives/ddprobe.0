Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361BA19AD5C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749917994; cv=none; b=qNVy8wfeKZWlbXskmmYkXbTTPC1Tx67rIIAiJbKCjSQU3te20rZVySgJvmH25oWmRfw8qyff78CenHrV8aM3HFgQD3iz2fn+souSIU6ToYTdxGO4fmn0pWLbGfsDIfvt8frXksBTp9UXSoTKdiiJqHcgc0CxsXFOiVFAGPiU4Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749917994; c=relaxed/simple;
	bh=rvOtENiHHhTxoGblbrMVSCmS57NJ2NWwmXtV2+xBRUE=;
	h=To:Subject:From:Message-Id:Date; b=sbbc6PvzSea6X0ew9/ELsd8jS9UsS5mgB8SqVPhcONdRFLm65TnEwTe0FZKPP0vW8SFqQZd035Cnf5GpZYYQ81n+ubLX8HvfMUqIfJLAHJcddHMtGwh2cMARXekxSSkI/1CKSpNcBfcxegNuZzFU3BZSD/goYUhs2AINZypWFoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOsuBAeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOsuBAeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66DCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749917993;
	bh=rvOtENiHHhTxoGblbrMVSCmS57NJ2NWwmXtV2+xBRUE=;
	h=To:Subject:From:Date:From;
	b=QOsuBAeMEjsKxSAbfoM1CirBmYsi7/2SIyQn0EzTrOziqvw0Rjsi/y22xZVpssp3g
	 vFTrLg9ktZowBMN5J1o8hlukZp8Dk0x/H0ogb+B0I6WyOfMCqlSmzyz8noazWhf4RW
	 aONQ1eEQaVdTHSqsCSM2o7lOPA0bVfW+/VQQqdEC2bwq2/3VFZUnsAB0r/3Fu0+gX3
	 GfQDddGOGgcaBiFdUXLKMAM43eKtGLVqY38ypdmSkTElOoXaxUQCqXa/KdmMAoB/o8
	 SDyNq7/9oC7ynoO0qciDCUSC3iOJiJc/pVDlc2Yo1rQhsoFatHhYj4aQ94qCxq5kt2
	 ItP1hgZAngXcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB1C71150
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991799359.23104.17467321137508570710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6919154e40267c1885952ce0763d4066a8738b2dbf46c282bdd867af0d16071a
Date: Sat, 14 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749917993
