Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F02036C5B2
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785652834; cv=none; b=cnR3ssusIArGiCyv4fbUYwXTxU83fjaLiQC6/flm74faE8NBV1SpNII/3Z8WBSeKfVz9DGIfUtmLgpMD4NoaSzB7CNGCGOJ2PYF/BXCA8SoGJKEtYn+HHLCLKv5nzXGItdI1zuPcCaDuH3axnDV4CMO278mMwtikFCDj/6nF1RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785652834; c=relaxed/simple;
	bh=9Yt1gSbLcYIOfEkQ8Sbms1OLR9J37vUX0Ur7Cb1vEVA=;
	h=To:Subject:From:Message-Id:Date; b=MlX+OvUhPuSXMTxltinQlUAPGI9yGDpXcvrMH7S9kUblUiwiiclpp0waem5lspbxlIKJrwj+qEjArrQVpHkURN5ywGVwTdVjkLLPWal87NWbnO0Rh7Z+6QzKCyADnOq3nWx/rWd96bpoC77He1IMryJqQWDIDS2K5CgmIjqQuSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/xJK8x8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/xJK8x8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA25C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785652833;
	bh=9Yt1gSbLcYIOfEkQ8Sbms1OLR9J37vUX0Ur7Cb1vEVA=;
	h=To:Subject:From:Date:From;
	b=Z/xJK8x8cNz4YbmVR4enyZiTSMA/OffFV4k5df//GciS6YCx08apdQ+55nB0BcxkJ
	 E8Mq5xZ0sB+1skguYIx2DJ47cvaidU5rYPyrZfu57pwFcnppXNYOtGdmYUH4bM8fVX
	 JNtJaMlKDu/6MqdAypVD4Ed40VXq9dURDSmshfN0BVLq7gcS86QnSwqd5gc2JMdVY+
	 MJ5Bv3Kh04bVqEskN2uxE7fykiqotI62Mc/O7WJZsSRnyfn0A1O0GFUoet3CFT2tju
	 c5z8ju2+tBddSS6D4wwtu6Cqz9hlBRP6PEbg+GRJ3NcBW02EXcDRTNzaQHyPFU62Eo
	 o4VDF0N0o2vuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BECC55173
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565283367.4009.16743685839093179984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7748cab69da2c8275f28faf9e0be4ffe904116a2ab363ad2432cba054072e7d7
Date: Sun, 02 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785652833
