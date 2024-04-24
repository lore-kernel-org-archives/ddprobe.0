Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B1F13CFAD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 05:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713937223; cv=none; b=PifwY+FV5UW+5z09epZKKpvI5V81UWit8mmo3G2dfDDYihEaM9s2PqRctnYa7wWXSQHsjTYlMvgvhBsnzFF/ZgAQyTe8dmt4UToAc7cOJmVuiamvNZwTF4uME4p78eQredzM2tJa3Zxt0/Pav+GNrMZ2KFkgBv5WXB4PAHsQ0Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713937223; c=relaxed/simple;
	bh=cf9pOqVCuQIlBPi7qNxZpv2F8Oy57QdUfNuw6pfQZ8w=;
	h=To:Subject:From:Message-Id:Date; b=GM+wa7zIg5inDcG8uBB0Mbk48+osfVojAd320fgnYxqhwMMUJlGrfCOpqWrALmPD4+2NCcJiLYNToaaOKth0WVK9+ioDxlMNpr5DDOX2Jh8x92fK/T+XPw2mixK0eYz4lxcwbm04SFhk0x8bKOi7XtbSsLS2oCFGZqwc8zflQ24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcT9wcfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcT9wcfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE21C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 05:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713937222;
	bh=cf9pOqVCuQIlBPi7qNxZpv2F8Oy57QdUfNuw6pfQZ8w=;
	h=To:Subject:From:Date:From;
	b=VcT9wcfM8HWRyJRobMFRiISC0sGmGyR1ydIabILh6lULr4p4rKXp2j36zEVx09Ke6
	 eVoUwEqQdf4gjGO6IIk0E4kYSWsQv6YIEgWsZUe6ubTPmjnwYNhM7d/0+jWKeaLmQB
	 SkuGpJyhcT2zypWIFlRasEIJJoxj1bTjZtqrLoT0qJSiwaHM8eMz9+OpQUnYcV6+5V
	 9G7AOxiED0DK7RHt3hSTJQvk54Cx+LOSxFzTOXIWM4aXLussjEYf1HCR4pURolXSNs
	 7apPdNZhemdMHHkbciMfyzbD17aJdizIWyRr3FQmxoEF5VQA4CXWg0IpnoKD99SZf/
	 a7yreLG8dSeRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF09C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 05:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171393722277.22490.13282164154923156285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de81aea1ef74eff29de3b54edb855fc874ea97d5d3a9eec6063ac679b79788b
Date: Wed, 24 Apr 2024 05:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713937222
