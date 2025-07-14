Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2420A17C77
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752491995; cv=none; b=L1S06IxrIyYBEgluJQBBL0vkrznZ7FT5ertx079CsFcuG++JCO9S3ZkhkC27sCEca8U4dgFmL9RRBfbEOhqkOYaH36u6CjDzxhHlNQ2WIefaoPrg31sf2+k34yMlTGXXH2uTl5WK8fYnXHWPd8KISxF/Bnc8TE9UzPjhzTveJCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752491995; c=relaxed/simple;
	bh=fMpDKZ9yraT88qoMad5TFcRE29JBF+E1CbcuuCMBSQU=;
	h=To:Subject:From:Message-Id:Date; b=Llph1hLw1ngNCq7Kk46t+txm2shVhBAtp/9NpX31vza9fm2qBb1IioymtB7HcjQ3zf0uh0+JZc/qw/+V38M/P65xzc0a/kPj5d45IXRVifhkvJSbN+DWKqLqlqzLgK40NrAj4Oa6nIKDSCpL/ZWF785+zlcoTDEHkCR3zkgQnPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncbYHhfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncbYHhfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBF6C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752491993;
	bh=fMpDKZ9yraT88qoMad5TFcRE29JBF+E1CbcuuCMBSQU=;
	h=To:Subject:From:Date:From;
	b=ncbYHhfxudnN9mcfRyzvbDPgMD0aRsjl8IIq7dChx6fSR5F6qqwEvYrUvtm2/qq2P
	 XZHYeaJXQY2UZzXuAhH6L5janJYkqDfFzsH1nm5QNCZZBcKOkNyLLpotVqCgIHYoHl
	 ulO8SL9z+MIdQgKoXSXjHgtSdEU0whxSdt9QOrcpcdHQkTXKrx3TLcvmjp+N2JneQq
	 HqJZgdm5iS/36EGdJVsH1v5zfkCyAmDRS7JnWDaeaydIxA00asHaoEta0fUFtVMrxB
	 snc9St2qtaOLgkz7XPpduSXYRjGI/MT4Nla/y/gkU4xNGtMJHOLi6SymTSIQuRaYwT
	 Y9opGOjMecGKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902EAC83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249199358.5762.1306003292003484725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880f1c7d6fa575bd8f5e74bce95b1e18f957ece514d5fe60cf36e448dbee4ea8
Date: Mon, 14 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752491993
