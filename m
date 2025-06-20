Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAE92EA738
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750445395; cv=none; b=RdRL0uLcFgXowe/4T5TYaPcZDxt2L2JhKEj+7ndB/WA4Zu+u3bvjdfQgehyLOWd/YDjkJ+kG7+WXJfT4QBVbqlmlFgqy+YTwJWUm/8tyV754MUlhrTya7P6GoS9c6JT1JZz6l7cJFHxb9ezGAGqFo53UMvKJw36SrvssfC51b1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750445395; c=relaxed/simple;
	bh=xVD3Q4Bl6feEoz9alnaploX1BkWB3jVhBn/ULIVgFjA=;
	h=To:Subject:From:Message-Id:Date; b=C2SGrU8b5l2A9yb3zlumck189hQR1WSWeh4Syk2QnBbeWZNfjm/lQo5GVLW1MPl+4So1qzmGEIswKStX9uvDUmSXylsoc7e1iXxxGBpK/Ow8nHDjgCpdHosdgIB2faSIxjwqq7Lu/8PhrHrdiHDpAl/IVZs4oOj3GgH6l+Z4URg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFaCcgDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFaCcgDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CBDC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750445393;
	bh=xVD3Q4Bl6feEoz9alnaploX1BkWB3jVhBn/ULIVgFjA=;
	h=To:Subject:From:Date:From;
	b=JFaCcgDVjQEzK03Y9/CXRkLsyxI/5sQLcfTYRkp6JE0dHyCMb/8Zdle2L6BiPhNxv
	 Djg5iv/naZ1WFkAb7+ei5slS09VKpfDZK7CbXFDNCmCaWaIu8qRvhKR+3BUVbXuj8G
	 ZVdb5DZnyV0tIc9I+e/aplz8D9LCbwBnWHNgcJwVXKxnctI87QGeVNrhGWbiUbtCpD
	 iHNdAsHlxDQ0hzCTyd/CktqiTSi+pL1ipayXK+Lsc9xpYlBCm9vIp2DJJQINoXh7km
	 YvfNXU1RHpgoBQ3H2rUdQNhlEaDfEF7bGxH5+kyAG7bLBfpsIzHURWsNbVmdrK2EyF
	 izUnTWCl0mS9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DB0C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044539358.17155.13349784004247929617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675621f9c3d66d0d1619fa8fb289990da1dd35f4301ce9ce3b0e50728bb100dd
Date: Fri, 20 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750445393
