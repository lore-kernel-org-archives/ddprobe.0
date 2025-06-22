Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE2F72AD04
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750560594; cv=none; b=smXJah0CWueBOIGjU6xsscpJGJFlTa6NEYcd8hmIYUKfFgQACRzL1BzQjQykcPXKZkbSMEtTuXa9TPLGSYOtf8sQneQjlk97ujBjo/g0IqhimBFhlZd7kgXiVTpIUxxl698vgKNNxfUjccQ7OFULWOpgY66cnvrLI3L34+an+lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750560594; c=relaxed/simple;
	bh=kFj4cJgOmn9VrlkCM1r8C12FsosBBol0R2Wy8ZN9ASM=;
	h=To:Subject:From:Message-Id:Date; b=k1VFf0MC04Wk/qHLrCJaFWqTO3i1r2Uy8UpaixVk1wYNtPAizfMpfnyojXdsL8k30TkId7mLdKzhUiCSl9kEo2X0KX77pWZZK6Cxdcms0RVr6gl7ttW7T+D4Gac4OMtWhs4T1pUtgRjuCeIw5FRjmZ6s1mn8LV4yf5Q9jD6zo7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJxvpmvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJxvpmvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750560593;
	bh=kFj4cJgOmn9VrlkCM1r8C12FsosBBol0R2Wy8ZN9ASM=;
	h=To:Subject:From:Date:From;
	b=tJxvpmvSQp6SV44eV7+FlQIffUFoY04g1lG6HvL+p6spr0kLpoVE8DHc/HLl4FgaB
	 KKZfCYzGL8xvLS+3ddP3IKt2ki+dBsf+s0b+JFuJscDV/hltp5BEUJLQb09JtVsuc3
	 6caKZfXvFiBGwcLyVOaMx8ciVy5U5C50uzH4Y9Olds5hyXtTS4/6uTaz4XRFNvfGtH
	 q25aApE4EVGUv7T5n5l5MOKhrL9MMLVrQOpEh4iS8ncSjZTghcFKmrcinMqfZ+EZZY
	 9NMQvlF+1Vp6cxht+bkAXmuIGROLmgcMbxmVO40M9R9nfrhCuDUzgnODkok2a/GWXL
	 VnTNfP9nGMtYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F978C71157
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056059357.27211.8923582173983645669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d931fd1cb09b8abe81bb1aa756e5658959801340a5c38891c8cfefe67fe89f7e
Date: Sun, 22 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750560593
