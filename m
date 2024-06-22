Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E31381CC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719081743; cv=none; b=BVG9fByxrXIxK2XdDDBt8RgZxy6rqKDICc46paV3cIECObTyAzT+yQZBTLo+V5xrYxndhhpcinBg/O5RbWIx74Yv9ydyhKtyTZHqmYLn9hJPOBhfSpiuSoeyB4apgXTOw4ndjlfiVWsywT5ISH1+Ga6jxHupmSFg19edc3MwxS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719081743; c=relaxed/simple;
	bh=eZrh9FPQCSUizYvGZzKed0i+Vr4gcLnU9voSBDAf6dY=;
	h=To:Subject:From:Message-Id:Date; b=UGLEa7+FzzdyBymvZRJxZ3tszignyu5DHyhZWl3nqEdIn/YoK44ipk3fE6GPAW1OQq9tBgT79rh67Uys+5httvZ9yhV+nABkXvqnhidxqg1qNdUb6TxnlkMuKxQTAuKF9fUlc2e0z98vo+ujw5l45Nqs4yrNugIBzo1lnGjamA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofq/XXmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofq/XXmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EA9C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719081742;
	bh=eZrh9FPQCSUizYvGZzKed0i+Vr4gcLnU9voSBDAf6dY=;
	h=To:Subject:From:Date:From;
	b=ofq/XXmqr4V+mUEWB0YYRdMeAk2l/9C5L6BBH6WzZA5KZ6hWrCKLRB7tcvBt74zyu
	 Jno0+Axosz74NO7T5Cpt2DWuJtmVh23Qki+443O4PjAzb5Fifw2p0UsMV9Lc1jc+WN
	 x7su7dId9TsB+3OzU4UPneQavd3dSAuzGdSIWSjdg8wZ6JAo1laPklrG1Qh/NNwIoi
	 Jm84LpfkBAph1bYH0vdnkAzAHlZy0Sn6sQMv8OWUgt7H8s7TBbTEtuZpn8s8hSd/sD
	 gMcsveT75dcpaHUqxEIpesW6nR3a7eun016mjiHBR+W39aCe2BlB++CuTaDB3kkgyM
	 09swwAGbm9XvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A9BC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908174277.17122.1505119648315337470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a0fb360f4ba5f6ef10457bc37798a740b8d90929682043b6800133967600ab
Date: Sat, 22 Jun 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719081742
