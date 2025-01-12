Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA8714D2B7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736668554; cv=none; b=pTPg5GFoHNZqFX09QhTNVChK8gJ46yod1DxxwDCTWe/W2Cj6N8t17mNalRwLo3hDSvuRd2eBXLVN/X9iGp2unfkpE5p4vO0MaT4UcihgemFRnxwFma5+S+w6UVIYKHZbFqtoLygO/x/9jNxJpvZEz1/+xvgjRKanWWNgMdoE4Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736668554; c=relaxed/simple;
	bh=Y8fm53E+tn1eJ9vwax2NsVGWJ+IvWgsQ5a3hef8gpkA=;
	h=To:Subject:From:Message-Id:Date; b=ncp/AMI3NgwDsWi7+oz7Oh2PG3NSjLwXOcupWRfFPUz06GGV3w8U1/syUdNVgPLNomkAgaa169ZEB66ZJ6qr8idZkh/Z9Q/AIw86r/H/uHG1cF19MDMihYyXXzG4R4BbSwee5ekT3Cz5wSjuAUAfSR9J3HIQziFOA4bYJsfjI+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tndNT/xU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tndNT/xU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80F1C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736668553;
	bh=Y8fm53E+tn1eJ9vwax2NsVGWJ+IvWgsQ5a3hef8gpkA=;
	h=To:Subject:From:Date:From;
	b=tndNT/xU0pmtBwYIcW6TbNuK2P0KTmMnOnkItWg7TVI2V9sVIxlWNWzs/nMy5mUj+
	 jrl2dvDg/FxD/Zdj1kdvGGcDmhyw/QHLXgKCkJNV7DlTE72w2cxaLNr9InCN7sUPTK
	 qSf5JTs0zNKVNBLo0YrgO1MXWv+ExtFwILj1KK4/jmzWi3a0BCGaM4zXCnn83wJq2l
	 v1rL6OwbwAIVrL6RqN86Ps+56r4zoIyy/qCiFYC3P38xapFigLNm//a2hym8ZjiPei
	 fkkN/QSYLPqu7JzzpzmjTV4cLeH9ZrD8rBhskiRyW0nVgo5o3yQInP0xvrUJrcXOxG
	 Ue/cHtXplbrWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB6E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666855358.3160.8873957201903092207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de9810e522fdf59b55c5b335b37a38c340858d11468141ad0204e28462e4a46
Date: Sun, 12 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736668553
