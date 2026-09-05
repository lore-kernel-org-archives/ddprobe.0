Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B20C47ACC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788619234; cv=none; b=bpWMz/K/5Jex3up6r3ipbZOaFPOq6yC7ma72tu4C1EhnhoFIgJMzLuY4jKqdVtnrsz6ZRLr9VA8evzxONYsidxDP2qzdpAfmVEUeMHIDQnebtMquMUnujVH3ikosPBICVLb9WcOkKGyZZV28+sR82dPaRFYUpWOL3ioyvY2H8WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788619234; c=relaxed/simple;
	bh=94NT9ucBnkOb6lYd86DCGq6crdiU+4BwkMPcEwfhI8k=;
	h=To:Subject:From:Message-Id:Date; b=q2L0/LECQu6iQp+gMO/aHF3R6LnKKmS7rTfC8ELjoHtGCysYUsIM0JWrk9ftKLyNfNxlXaAOU7/5MRnIQTaeA294i+7Z8xBeK5hq1wMRJhjVu6qFshb2VecvHvZ/+BtaXDivQDCx7g/7bK4Oo/TsVdKfpWjK8iMNxJJ6wRNOH8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBWI/Tgj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBWI/Tgj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D3FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788619233;
	bh=94NT9ucBnkOb6lYd86DCGq6crdiU+4BwkMPcEwfhI8k=;
	h=To:Subject:From:Date:From;
	b=sBWI/Tgj4PYutsHtA2wJccXlePv2CeJBBtvfDQhiVb8DdGRdhjCe9/Eoa76AlhGag
	 4TE4pMkwAb1u7AzSN/7t+k/zaqN53QioMC8rIEw5Z3yAUEFDVg5sS/YkOH36vXp6AJ
	 xH69ibNUNfk7xNP5PsdRcbFetJqJWRspEc1lw4HjFodAd6KxrGjEIQWc80/39zHvTz
	 tQee6b5S+yWVJ5qQQUORFAw0Ql+/Rp552aZIaUd0bRuRxSHqe4ZCHZm4L002YMkkh4
	 4CNq+41mxQSpUBof32ow1hzumqyuIfHyGbuQop9z0+oTvh43HVi11vx/tfWX+boETN
	 Wc38cLwTJd9/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF40C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861923369.22672.17888364596690101260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1bd9f5ed20a42e27cc95d4aade00d45a32af401301ce490423420a8db9e04aa
Date: Sat, 05 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788619233
