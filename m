Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8CF19A
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 10:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721212523; cv=none; b=DbUh8w9fQXWM4uueQLrYC1hWj/SvxXFcBctOyPeqac5GK5I7ZTyGloqUVgnMtJWtAdSZya2eqq7bkGkLfwWWsNP+yLVcOqoWRE35olWDFA1/QFfxBP3pY3apkgb0vbNiPu1LvLb8jvr1zUgw2jQHCHID4PruuqmQqOBpVFbJE1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721212523; c=relaxed/simple;
	bh=Q5n9StjxXhKw3SX0fDaFV6cMcGar5NtvDapng9ogZfU=;
	h=To:Subject:From:Message-Id:Date; b=iTP7RVNHFpar+yPNUuGAe6ux7LiUtJ4aUQsLAsoJPd2MaeGpcBu6SbjZ8IvIIFfeC/41E3+dcpCFT6hSurjfWFfcGjPWeNp7GYT59l7EgvYhZADWj14/7ViJwlK8U3snQbG8NOeSIqIyYUUQonySVP1bKYHPrVSaEOIAaI4wvYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjrcs2YA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjrcs2YA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0626C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 10:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721212522;
	bh=Q5n9StjxXhKw3SX0fDaFV6cMcGar5NtvDapng9ogZfU=;
	h=To:Subject:From:Date:From;
	b=kjrcs2YAwta9bxIzkotUxeI8lqC5BmYlSNyscAh9kMQk9TaBxPI7CV4kQCBuBrr9z
	 iH+6rFvkR/1Oa5tmYmt63qWWXI7Lp+jZYXMOPHln7LIyawHNDXOCXdvgIZrJc72kZM
	 Yw2NQgOMY+LxyKsWqR1i95PYnnIzNDPkUNhO7lHUAgfuiqm/r7YciQxxIKwJemmTgo
	 vi6+gVAj0neoBEZq6snqkSbRk9xvlj9ZoSBkflLNcw+9cZWmnr6zRzNqHYZtbUW8Ld
	 FvGBVUxVLGWaXcOcul36SR70ZMZLyjXyunH9y05KX2uYiHHrGKpGtMRfHxGAkPNarx
	 ZBGayzpB4xBCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA2F8C3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 10:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172121252281.3985.1620251702761358662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1687b2b4442edd65060c4d07f918f622815716909fde51b36d6da1e6a37933
Date: Wed, 17 Jul 2024 10:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721212522
