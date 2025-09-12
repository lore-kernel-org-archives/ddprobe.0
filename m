Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D062D23B9
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757663395; cv=none; b=dPklow29wzItP5UKUBsiPAzxWMHT48BvIEoNrF5zUTOOoueXeMlEL0qrKWjyb1e0orCzMlm4G49YLsDQOC0LG3XJGwH7qGm2AH4waFtZkU/6JT+WUyX2hJNbPcGOzVI3ziDkGXvRwJQun7NfX15LFh9muanVV/rWV/+DkLOXX20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757663395; c=relaxed/simple;
	bh=n3Rx6Hgfdj3SrnqqdesISKXR10t8DWwQczuslxNTusY=;
	h=To:Subject:From:Message-Id:Date; b=Y03uzSODCYNr7ihqjZVRgdIB2ewNSXv9Nyd+Uy7EZtAEbRD7g7P4W2HV4gy84AoPscuVqJGHClzI5W3E67dyTjzHe1shsC/zQMC++pd9b/3hCf7RAoUoGLYqJ/zq4XR5QElOjiCK6MN6fQuoZrsXjmIj98x6UVJRts0v0l4J5v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGvWX4YH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGvWX4YH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A366CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757663393;
	bh=n3Rx6Hgfdj3SrnqqdesISKXR10t8DWwQczuslxNTusY=;
	h=To:Subject:From:Date:From;
	b=QGvWX4YHr22lSes4dn6Z0lOkTbBz/rpG18Ykdx68buTxifdVyTG7LOgZHGIqZi8hR
	 BMW0MxiBeYe8L9jeY6J9TZCHLv1VUoNziemvhV0nCq519uIDqIjfqc9vXYMZol6uLI
	 pzp9ZUb+bN4XKj6Y/cPBEa0bdtj/kmS4cnEENTx/aUpyw0omnvYrmZgh/KHgKntfrz
	 mtdQ/aU8ls05IwOCRMEv9d7zDwCA7OBIVXsL3FKjlV2dKMY5E0cXZbadvtuJ40T51f
	 3DbxuCw4JYRlJHrSMv6BCFyySwDpaCq5e4I9cRGFdF8rvtEyguy38WITYl8Sz386sW
	 JhRU3xCkc/fDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9060FCA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766339358.17602.13438165429162793308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c4d9758db3151d04deea80337417324b59152a56a081c4b1af93a603b834f03
Date: Fri, 12 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757663393
