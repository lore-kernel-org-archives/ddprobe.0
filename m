Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF5C1F461A
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747298394; cv=none; b=su0COsFLHIcEeegmd1sK5DsdAnL85tePi0La15lnwi06EP+ADu0AqFhqzIsY3TeHcZSzQh6zjn/Zicg0rqIRxAqd4Vk8QowHLyOYCKhDxaKBVwoYM+7j1JncRKNigipWW5Z5D9y0xRRDRth5GBBrQ9m3bxSKf2h0tsmZhyQ3pdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747298394; c=relaxed/simple;
	bh=UwLR/6MTF2MGwXTYs1F5rhh158OMwu+lfeJDRMf1kg8=;
	h=To:Subject:From:Message-Id:Date; b=VpWC/waOhaCIPvlkADAZzqqC/V7PTWQgfRcUjFSjoZqxee/7O21Mlv+a6C06twf0zl00sbhnUWooKhtz30L9qL9pAwAmJwjXDFV0HFadc/RX0FdRMeAbhPPjhEL4ZhyS8fe09I58Orf2ejvDQgVPbM6V0/ilbxZZo2d9nCHCn9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkvXoHAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkvXoHAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2280C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747298393;
	bh=UwLR/6MTF2MGwXTYs1F5rhh158OMwu+lfeJDRMf1kg8=;
	h=To:Subject:From:Date:From;
	b=XkvXoHAsiBzh41n9esfmz2OhImTaiLMoNjXdeQ+VjWzfmMzr89Z5HB5Qhllf8TTsY
	 EOclRs+LwJstb+/zvp9UkJpt4hzCNDbBkFcP4lZdkAfMmluFjQtAJtpX/eHJDsKLNQ
	 0/UFXAF+/nwjkKnqt7TSDFjtCotqbgGsF9BaaiMCn6Nme8Tekjr0FdZZRUWv2jqtX0
	 9U6w2gw9KltEfVKK/DCY6x+lOFvrkbvCVFxF0RMOsVS5IeUbl0kh5i1J8EiXVVoHfp
	 IVEYxmvIPSWQoHcu++XV8+OtGcx6SD7S07J8GktOZwk79yMf0l4a8FNa3YHEBtEzph
	 ZAdZR2mhZ8OzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F80BC3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729839358.19847.10998523609233297185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb812f0b0b431b0cd9f32711d7b94221277885b2156a2abf89034fc29a67a80
Date: Thu, 15 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747298393
