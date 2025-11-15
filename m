Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5F7207A0B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763174394; cv=none; b=cUsVSHxJ1KNfnIFWK+82mLgLpINUBklQOdMhPbMOfBoXW2YlOAR9mkSVwX3sb45pe4rotwcyaLtG2QGcDzUW9GR/yoeeD5Zt5W+RvZnqnjUx6IqxRKdb2VJ6eg/2tQFYENmZ8qRFCXADmHKgEY0wyXX31r63R5d5tw18VLMgyN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763174394; c=relaxed/simple;
	bh=YycFGKfIklwW5rVXIa/PphPUL1d8u38+DMKEzgngk1o=;
	h=To:Subject:From:Message-Id:Date; b=RF+P443d2tZFxAIa/kbeVWaHsBoi8FA/vufWzsKyFEslv+VNxANkHuRlePjzGKVs/od4VWPZvxvCcckWgqysqR5RmBWJpnPFSuQ9eeJ1WYCqAj315Z0Sf5HAzvK4y6huZ8DWX3UEPQ2Mgizme9AMh6I/U3iLR//HACMnQDR4C4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLkHP39z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLkHP39z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D036EC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763174393;
	bh=YycFGKfIklwW5rVXIa/PphPUL1d8u38+DMKEzgngk1o=;
	h=To:Subject:From:Date:From;
	b=MLkHP39zk+AX1qC2O+tqEzxpmv+xDWWhBiey7BSKL0/hSoYpKO26UmL9PDkMhU271
	 ewJO14mSzbYiPUCw1FmS2kTq7mJGoPJZhBqI7Ovgxwpq0p/UK1ZK7HnMNMV0USrb2W
	 BDN07KgvmBJIZoOq/HSEvZ3wH+rV/npTLi375i96zT+N7L+07G65jZ+cdV1VbMd6WF
	 7ICQKmbCgij4XQSAr0myPQiLRqe1TTPLKGiXtWd3B4eHolZGt6uQ7Hp5oxvVjDtlSj
	 1joyotwD16mWSmrMNxM5gOdXW2Zps3ULuCh9hIGpbqjHEZpR6XD+4gXaqR5/P9OaCe
	 ay9p8X01NeK8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998C3CE8D7A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317439357.2377.15510565954275365636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08cc87c5c9cfc6036304f57b98e666ae7b67f0c6502141d265cf902210dc3e31
Date: Sat, 15 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763174393
