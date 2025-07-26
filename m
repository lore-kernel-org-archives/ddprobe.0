Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F9D18FC80
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753527594; cv=none; b=IwhH1RmF1wI87wAXdcVX/GJWfQQcbIfvrJaW4mB4VfBjt/ClAyYdl10HHzhvQo1nc18R+YAZWcuTnbLjDvlOvfSQi8pNTLnHQyJAkSa8Tuwl5ECGyt3CJEoxCutabEWc9NyF1PNVi7X8LqqrB2lz2qa+JagTA8SYxZPfKqW9uFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753527594; c=relaxed/simple;
	bh=6Z4iNTuuezpdqqnZbH1+erBZoPU1PXFd7b98v2N9WL4=;
	h=To:Subject:From:Message-Id:Date; b=WqNDhbh06Teu6IZF1favgMZMp7Kb92FKmp2wnOoaXHhmT5TEEqdzzOeOBdQ3yBwR3uGpYmFBYoPW2I9bEvs7kMajRtmt7K3E9iJqZtvOr0LjZK7wF9Kw5ArAcJP5GPTYNDJbsuqnZeu2uj6JHUi88Isx9z12WD/RqlbMQg03nYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQqf76ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQqf76ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3799C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753527593;
	bh=6Z4iNTuuezpdqqnZbH1+erBZoPU1PXFd7b98v2N9WL4=;
	h=To:Subject:From:Date:From;
	b=GQqf76ikz6rULTwW3qoEX7VcotG97d8ZBH9hl6THqRgr4nNn/dGN7Op05FIqnp9Rz
	 SWZO5VQRhX6WpG7L2MgG5SDMymxEGD4cy0SQCmCursqPVHf1J9SUYv1TsLlUzmeTlL
	 Urw2A/dN2cxCTEmLNMgu/N9CXXwaj7Vmchc/Wo9z6knigJA01PrFeGSptfy3Rf2U+q
	 DbzWSYV9Qwgvdt7sxC2LRhY60J87LgTada3CbSYx44kxHTE0OTxg/xa+MG4JDjyavb
	 XbhPS1CMAXYNLzYxKS8J8N2ZVqmJviI9geivJ0vm2ofLrzcLZ6bOe4eTSkvpOtzQzf
	 6+WcuqQV+Pe7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B4C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352759357.28037.9823118295997130287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10fc040b40c1f96cac5339d05331ef9797f67daa9c1f16008b6560cf07f0cf1f
Date: Sat, 26 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753527593
