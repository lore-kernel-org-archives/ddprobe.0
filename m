Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478DB412276
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787574034; cv=none; b=Y/PUlHbikcNjGDPHqdTqqO8LidrR4uFzZ56PhYTDfPNsKyM/Htf7an4YecrLWIz1KSduGcH1g596b6GE1v6RHId2d73BmCO8pnVz81YxfEiQGfkYxDKx3WjnBFGdYPrgiXzRCk8lelW4idjRhZKrwZ5rdrVyhZZ2koukn2/xfuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787574034; c=relaxed/simple;
	bh=InrFm+e9MWWEqrx/nAfiiXQCsFuuEwMegEcqHqYVwlQ=;
	h=To:Subject:From:Message-Id:Date; b=tFEqxo5G1008JJ7swn6s92APRXPEY/95R8+1QjeuuOy0XQBljo1sSla8XNZHuNTGqM8A6OSpt4XVHXO00hIMoIIatMeZh55B+M4ThmaG4J/FiHXA30bDqh2QYqzGsy+jx5ChT1Arsa0CvsRZz4QA1UILRVLWK4yEm9/jcMQRpjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkDqLHvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkDqLHvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DE9C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787574033;
	bh=InrFm+e9MWWEqrx/nAfiiXQCsFuuEwMegEcqHqYVwlQ=;
	h=To:Subject:From:Date:From;
	b=RkDqLHvnRxoZzMkh81SmuEJHgs12Q2OWBsB53oTApTqRNNBOm/DvMD4ns6RZpgfkO
	 QUmJFMNuLov1ERhBXaI7fS9h73GFmgNGIobIyY3LV2xPmdkzxnHyKv1UYXw0vqtzEw
	 CHLc+JznOzorWGzWnUdXtLGPAscra9RhTO4XreYZ7M/hdVjG4NqOeGJqsUQR4Bzfff
	 XYdBdA+BrkN+LxnEuiyoM5f/sEX0MMCJSj68eTI1vZ/o4zSotMOQZgOorUZFqhM+5m
	 SqyU0BsfKQui4ziqkqPx20SvUDx+8EZdCtji+isfyj5eBDUqhxrwtjtXvsI6ahcG1/
	 Ri2euR/qAXPlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEF5C5DF9B
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757403369.15562.15982958933997083667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d8a4cdeb8b145d5c9e0bdde741011c8892128981006730a40448eb9b374fad
Date: Mon, 24 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787574033
