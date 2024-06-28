Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AE325634
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719600263; cv=none; b=XB343Th9rqrMsV9PVGW3GajjaZgH74nhWJJSpTDOQrotUpyCgk1F7ubHhYNKZ9ig5wlRCF+U7UUv4oOWhNM8+43EVDMgB6A8Ekdxkofbwc1FqJadPm39DG0lyaR7WVIFoGLFpknaoT1S0jspNLL/I5N80rW/XB01+4DTYUn6yeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719600263; c=relaxed/simple;
	bh=4E7y1a7VPcMCYKvYvzJ4VVwqdjHl1QLJge6kclIr54s=;
	h=To:Subject:From:Message-Id:Date; b=P/tv2sLAskwvCTNizBPWTKi/aeUn9xxnr/kIY6vDq2KNoCApOC6WwbePJ5IqvRCBOrZ6nMKDdgqx9KKHMQ/nEy1ashgJfYWPm3m1afl0Im/20DVd+S40icku7Sfrl5cjToxwVXbd21sQt/WzNPRdi03ZPW9CBWmQr0fr18lVDbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDc2XRHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDc2XRHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD77DC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719600262;
	bh=4E7y1a7VPcMCYKvYvzJ4VVwqdjHl1QLJge6kclIr54s=;
	h=To:Subject:From:Date:From;
	b=HDc2XRHMSAVNRbO95u7A7Fat1VT+oNYjB8d43XmMKBOMDBqmqL5PWQRSCT8x3LKEN
	 MEoA+QIj+PI9kTN3bVjhIGJtZWfK2pgh28m9kYoq6UPMKFlIJzmtPvCEg4jDW2/pSl
	 Zal8BTSLfITOfRcddsrZqIT4iGVqMP4Q1KPhj53OyaWy3ZdosIoGS2IrSu3YCQaC+E
	 a8om+xhhWYosVQaxvCmCwXnQddDj0fUX0wwShb+AnXtZZfFTBPv0KwPVG9nikVl/O5
	 nblxn8KnGaftcBNR+ujAo/D4qg8dkiJLuTw0a0zfSbr9xA5O9LwVcNRuME5JuwmcLM
	 VUjPHkJkbORJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91ADC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960026281.1627.4695702966641667700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136ffde859d1f8fa73ff72add7ee84e371f6b3d0b0b5689e1008de175f820674
Date: Fri, 28 Jun 2024 18:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719600262
