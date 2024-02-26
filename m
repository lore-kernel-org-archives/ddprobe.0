Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FD0524C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708941497; cv=none; b=U3TdZJmYLRJslJQC10hqllQfL74d8n1HG7ycTVOXiHW1uXYvSZy/n2riI2cUv2vybywyEDSTSThinedFvxfns5RaKFuO5zXt7g7zUbT34xVp9/Iu3sECbxgRTvjTCoS4iSYcMdms7hyK7No1aSK0apttb+UK5RNcXmrfwQSMTas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708941497; c=relaxed/simple;
	bh=6tnwb0bthIgxiYoFl/kAyGs4uJEXzPm/1a/AoNRqRyg=;
	h=To:Subject:From:Message-Id:Date; b=g7slxmzXof5KQSY+g4gtQeqH/5x3Tj/gO3T7M2kCsT2z+MErLXjGhM5EkhoveC1xcIunx4i2TjxoPI+3OF3a34Au2WlZPx4QHuhdStr/JiUO+gD5rXOq8N+8EYHin6U1uFlWSDdu7rlqcZxJn8Ht3UKSumbQRaGRvcFXH2jVTcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpRtoTQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpRtoTQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9E1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708941496;
	bh=6tnwb0bthIgxiYoFl/kAyGs4uJEXzPm/1a/AoNRqRyg=;
	h=To:Subject:From:Date:From;
	b=YpRtoTQ6rQanmf217+3Vnw3g1GWlwsal3fmlSpjEXu/993n3e2+D6iNQhfetI08aJ
	 DaYn+QYVA2CNXFN5sPUtSSR/YFR7XHvFnrx178XrySh88zuN1QKmeVYKrjh9TEyOFf
	 K021nh7SK8rrSwOAabXFNQpfuvYs32w+D+hRIbQYZp2/l43nmfO1ATcXd2CYBdU+EZ
	 J8Q82eLPlTJQwY21Gt6MEyLv3jqPjojet8ghL6Ah+fpM6sa6MEiQj21nvF/uerl5o6
	 bQ2DLd9bbj5HdNbd1A3ZG9fb3lUu8hs2e2sQEOXElnmkDo9MgvAMAp+NCPNowYvBu7
	 Uc2sZ7mLIl7Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D6BC54E49
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170894149640.3290.9773047004886147652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6719d12f50baedca9130eb8d915a69b4917c95474312ea028fd9e83e84b820
Date: Mon, 26 Feb 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708941496
