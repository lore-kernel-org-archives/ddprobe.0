Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1B11362
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749428994; cv=none; b=JQoilFJVpYFI2RXTigwKUr2mFQViT78gc5BwJC3rD/B9orbMpuS2+nGFOfx/Oo0jiJEqYKSRXS/92OrmWJ9CDfDGMuuNAWPrNT2tKcagRzBKWgXEkEt4ZKYwQSO6RtAEjz0ohbWZd2GlRxPs4ObKQ8avMDnFleTdwzb5PXlqWDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749428994; c=relaxed/simple;
	bh=vtRq8tWkgeLBbgIZt2K+AgotN6Pnn3cRA1BJFuBkOLs=;
	h=To:Subject:From:Message-Id:Date; b=kDgajgmUCpQDZ0VJouC1vnGVQ+KOAWWyvDG8eirteD6XMRg63Uzj411iCvqawDRpcRy/NyuZyaa1i4p7yBZkpZUWj/HigMne6sjILdYRSuql12BN+YcUKdjNJThbpUIw7csGyrcprbBjxMSb+gnvFcXy3/iSDWdAaePB1gMkeAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1zPuKce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1zPuKce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A902CC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749428993;
	bh=vtRq8tWkgeLBbgIZt2K+AgotN6Pnn3cRA1BJFuBkOLs=;
	h=To:Subject:From:Date:From;
	b=R1zPuKceUslqt2lfLvn2dMy11IX/GdvpOizdtZx9dx0q/0MCzBKa14DwNsoZeENTs
	 v7ttebG2NFi2iSeRJjBIxQFDLmi8LoT31NvXVSUWvcCoz2YSf8kD5aqMAuqR22dcis
	 iyeqL11y2sKbk2lbmN/UG6Z0Bpzrhyj5nADAzwbP+sjJ18cCHD2qRqspZhPPQHqwRq
	 BHlCnzv/BR8TSFsU1J4zRhufMFkRu0Ze0BQ/Kfi4i759caJaNvnlpi0JFc7naZgTFm
	 3gCkhMWLZ+/doQqc90pLapDPavQTcEMcFylFSGOR+TpeM0x/9z9hJ7KBq6dnGTo7RI
	 KiOT13AGy5xdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95338C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942899358.7841.9815347230527390474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57fdcc4ac6c22d766ee24d081ca87801ee54a78d73a59501056ad6a9163125d5
Date: Mon, 09 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749428993
