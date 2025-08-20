Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3AE36CDF5
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755706794; cv=none; b=WHNoQGrIg54obVgPbGfiMwn0rzf+rhsnE0VKR1hY/zIQDE/9fw2WPrXK/PWfIZPxmFJlnyOzO2Nwto5ExF+BmP3mLbX5q5hKJ5nqwV7bBG0xCqbavso3DRsI95g5dHN5+NFhbQRr5nML/e6MGUoRPFTp+nrUwm52QBU7L11xGFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755706794; c=relaxed/simple;
	bh=9/cgKTQavs4998xNOrLFtneUCiMzkRKZfWnOd7KSm9E=;
	h=To:Subject:From:Message-Id:Date; b=Mn8lJmulWj5RtuLmIjCsSW9W3HhBeI9onGY4J0rYL4UBCqKClsTfUYBJlvaasUVzLxQWDXvO+pYJdV/KJEOotIkXrwIp84lmptw03l6eQ5I14ImYSnqjFtuVk34iQGsv3HVUrMiWxBv25LES1BgINeWHz/iGd9kJF0NZi/An828=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0mazOi8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0mazOi8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32C8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755706793;
	bh=9/cgKTQavs4998xNOrLFtneUCiMzkRKZfWnOd7KSm9E=;
	h=To:Subject:From:Date:From;
	b=J0mazOi8x04xIPlu/R2WQCRvFp+VHatLdSJWurr+A4W+n2wyKSX2yV/jeUw6A9VQx
	 jFmyIkcmXvL8TSoS0SnrI/3DUy9WklducKA47aQSg9aPzLMqXsVcy/SJ0XSkfJEMxb
	 vv4DsFLo9KnaOQHXJUiwFKVAeVzBxwfP73bg71i0QVeH7eE18BncV7p7YSV6Zdaicw
	 JWxoXM3vsISmvQxRGIhOrLdiPD4IWZWttONqd4MjHaBtyLF2+vImUht6RO/hYmVgvU
	 kcZ2+fhCsFinrONUyVbvMzf23RL+z9H9pyIZberc/NwJWMFFY+WjOZezJXUKeOh5ZV
	 x6Mf1Pq/L2khw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906F2CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570679358.2801.3605658308447903658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20aaf5671fc96b66b549d34c5e0b84967dde5eabc376031c9d7b399db20c3ce2
Date: Wed, 20 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755706793
