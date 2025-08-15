Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA2E25EF82
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755298194; cv=none; b=domOm/DzMq7l2qVXHK3xuYYQ5oVbBE74y9Q3efthnRv2iORhUTyWOvW9RmWFT/C6oCZ5pvBoYv2vf2lagPg//O3SALPaJe/i9DgtSzVBpeVLCZOLcSCxfLMU14bBMZo3MqusnaiE2sPwdC/zw/neBavHxZYzfnqA6rjbNnFvKSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755298194; c=relaxed/simple;
	bh=lRTQXQhcPOD72g8a4LDdbdeO/41DA67CV4N+gzN51Zs=;
	h=To:Subject:From:Message-Id:Date; b=Tx+QYvoW0EJKGi7mwoNK+vvEgp/ZN9UJW0gbsPVd0nsDtvcP2/ISI54RE0GakcwefyC5ForMhLvZb80HqQZ3y7dSvqcmhv1faHZP8nl43KIBVA9+l9EBW4JUZpgqlBVnk9QFIRlYnb9WjPbPlAeILwwv5PiQ2KKdzRugyKiPRF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffEVJuH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffEVJuH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A36C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755298193;
	bh=lRTQXQhcPOD72g8a4LDdbdeO/41DA67CV4N+gzN51Zs=;
	h=To:Subject:From:Date:From;
	b=ffEVJuH9Mz46LBprd7o4hhcOE7quny6zy+zKpZB+ZuJMBB5MFI/jm6Sp68tTSd1aq
	 TmCCTzo2qcYor2Sag8q7e87h6Zzhag5VoF1ptp3937iaR3hF3D1j8cu1sPdCShCXpV
	 kmoXzuQ7tyzz78kCpTtZ2LMubgk5c21sKKBu8wR7cPLG2p9jCU70GEhbG7cGZ2Q6mo
	 Vi5vKLLG7VXadc0HZw8bSgE25Ie8+kaTS7oINjlXAjMAM2HxC5PRMjVATi6biSIXeV
	 TvgtZ+VkAZR4FoKp6DshUYzGauXKkjVUQyAPM25U1lu/YmUqtRFQOIbH4Znr+NVp5l
	 VmWx3O3gehjGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F8BCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529819358.24246.3737353914110222052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a7a8bd9226f2c8f118470e4e4481f5c320dc6f4d6fec50768a9b1f7126c6ef
Date: Fri, 15 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755298193
