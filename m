Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EDE2264AD
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759169394; cv=none; b=AAob6+S++Fef19f9bAmUIY4oCjSsb635eSOjXlXUHNp42daBe7lZDXaLemPt0W5Aczs3BszuyT3m8uzHpDiEwZzRP780NFVQaIHxQdzK38p8RWsZ8MEdpzSl9zkNN1d9qpSGFpMc+7f1pB+pETM00KktEbRXRg82+gLlCsILam0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759169394; c=relaxed/simple;
	bh=rV19+TyIrRNFp0BneYPVrtIzcLAagQ13VTNyT80c1Yo=;
	h=To:Subject:From:Message-Id:Date; b=uWMEOUohJh9PvCkM4Q73xpDS/lpaZbqBgrnkaeLi0JGY7bPCzwJ4xwU+G3qKr6YTO1+i1PXf//XFQ2c5QFCQ/2ohA98t+lsUgssTMCrI40COqrWx4MYRqqSvngcO/Hm/TWjUIkbRUDtpfyksEKQmAVs7ETxoBpiFl2gsZy+ZzkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6luy5pw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6luy5pw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B340FC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759169393;
	bh=rV19+TyIrRNFp0BneYPVrtIzcLAagQ13VTNyT80c1Yo=;
	h=To:Subject:From:Date:From;
	b=E6luy5pw7sTcdje7JezaW/rabrcWtPJAmryZ+GwIEgp+NMsi39pCFT7uNPnaqdopc
	 VlivrlWDf1S2LWSFS1qbaAnKCE9tYryLCqc9czT5H1bCF4OEt2R3G+/nS7ovK3xaPs
	 13d0q88oMaEOWT/EbJWzlQ3nXkowTN05C0JubNSruEycTvnTdHKy2e1/5LX3C2mQLv
	 5YBX1nioQNHSeGg2XJf8g9SQq35nDTqA/NavwY2cOZp2hTeGzQOQDhZJVhdV+oMUVZ
	 QRP5JNSTq/pfoKaYqq/WaxiDSCFmo1NAW5l/MoQcuHAh9PYo2ruooEq4+UBlVXWCbO
	 Wu4fbTl/Jkdog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962B9CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916939360.20616.6911203900504679306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df726d08728ed1a1a8408dc0f29f1125d3b6487369163cb8a823aefe99cf5470
Date: Mon, 29 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759169393
