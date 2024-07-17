Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBE6208AD
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 20:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721247323; cv=none; b=YkyAKWbgXfCmYGMnEyPh38jrCao+s1fONsJcVXFaWczMy15Y6ThrL6aJLDKmz3dt/2o1aYUgWJ9zYxb+aSNgro81AIbmS1UCR/IXcRLKJJdT5vNF4k93msdCob07lUvt5VAcN+DYLWhji854v2qWTMudF5AIejfCteW2A1QLK50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721247323; c=relaxed/simple;
	bh=mv3WwK+5pML8bGr+uxs7P/SfcWS8VrA0kFeRQ9PTK4k=;
	h=To:Subject:From:Message-Id:Date; b=P8r6PrUni0e1aMmiL9xcdGSly7/Hrb4uVy53akIZFjWChuouUiy9jB+OyxA/K9E0O7awaR0ijwQeYIcFSPmu60Yde7lI9He07+n7OO6WJcEmFXKuYneZVJwoWyBTuUxHXce+dACz2TSKbUxtn2vin7SzxW4SUSAmOMtkmz6hiR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzsakUaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzsakUaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CF6C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 20:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721247322;
	bh=mv3WwK+5pML8bGr+uxs7P/SfcWS8VrA0kFeRQ9PTK4k=;
	h=To:Subject:From:Date:From;
	b=mzsakUaFkvS7ILL2rdYKo9CHoHmSdo8xZEDVq5XjAkiaI2jlIyVbwbvY5zqwmAg4q
	 0d0dAPwz/J4lxMSoniwpsfZx+6NmuGFes71MTE3GxVx96FieciBLgYq/m+UcKp2LWu
	 UEEi+z7PQzGw3CS4UrPLRzs7YGEZIoYwV3wVmAbXhiLKS7pA2mV5Jo4LSELVJxpCfu
	 OY4w27Kr/5c2J+jIgsLRZ+3i4QjR1XYRSvptXzSq+UlahQ+so7C3sm9qWPs3F0/afx
	 THMnmEbPHFFc/R9dR2bzAnsL2ngRUgyCKIURzSBjYV0DOeBLSAo47s3IlBQK7vre2X
	 YTFpSgF+tuXsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09BEC3DA5D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 20:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172124732278.24719.12678480989920080944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1daba24d18e9bfb71c61baaa6a8dd2488ef5d488a0aa906d5cfbc83a0b397fba
Date: Wed, 17 Jul 2024 20:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721247322
