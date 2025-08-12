Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C374814A60F
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754986793; cv=none; b=iNLgm4kSmInOZi6Y0FDZi/eMMHkcEMETT3RTNIghkRfNbdNTeI9qSL9UlMXGEw/EPyA0AwEmdhnoZIBv0tnzcM8AtSt8dVe9zGnRlcGITxL/KYx39MmxtN2Whu3VF4/YPg+kPFT5IDkfTvYTrjlw5nCJp4lMd9UECBIw4o+P5Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754986793; c=relaxed/simple;
	bh=0uBiEZHfJaxuDn+A8OK3ZJ4KhJEudxLVVLJJXyWFz6E=;
	h=To:Subject:From:Message-Id:Date; b=t2zlpBPpUe45YPbLOkkyoBGQpF1HMh/yr9Jy4lDjxaTCiAYXDo3Pz5adtcrM2lrOlP0oq14CpwlN24DEEz4MEVNK32/ftFug9n1c60xs/MJTUnojs7I+hIuW0znjAnHBWUFriXInvRdZL/FQvqcKh/UuKFOAQ7Yhv8INJu8w4YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NR6cT762; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NR6cT762"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4AAC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754986793;
	bh=0uBiEZHfJaxuDn+A8OK3ZJ4KhJEudxLVVLJJXyWFz6E=;
	h=To:Subject:From:Date:From;
	b=NR6cT7625zv/x9h6snL+ng4Jm0kx/eQbQy5LZ/c2EFJy//DW7pFhwQhF9j1zjbveL
	 c3fzPhI7oaYYmto27d5KIGpvDiYdgnrMRhFuubeAWagfuKRwYp5SPMi2BSkySnSdar
	 jcdlfUWK8o4QroQ1uEF7f01HLWjHSXikfae8XwxNLZ1R7IzS93Y72po7I5U6jFDfHn
	 eU0nxVhqxv8Slej3JsPSbqajxfH/bFRqpUCVjOFCI9gw9YbGJ7fXoSSL5Pm4+weuvw
	 GBLgKWz7JQsHkBoGQciUusnkV9ABcUyopIFmMiR+kKtyOm2UfSqsSt/6vTSHQ50lDX
	 zzQQGQOo+2d2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5CECA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498679357.12002.4488057450684131481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6daf21af9f3925e11ab68e5d635c49a721fe0836c6185a4249e695b62c97a06d
Date: Tue, 12 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754986793
