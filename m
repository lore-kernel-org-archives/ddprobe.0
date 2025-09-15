Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEF51F4C8B
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757944794; cv=none; b=psLzoCD92Hf4wl+O0eKQG2W68qBgPhJ0lS335jxk39ExWSHmzK4QWvI4LsFhZsQBn+5f1jvS6UEHRB4aWl3rxwn6CY1ZeAIexQTyqdosjC5NuLDqxsToSeByUGec0O3+WNcfDuUNFcztVLVkOxxbKK6LsfbG9bd6o6j2hXMF9Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757944794; c=relaxed/simple;
	bh=pZzhg+xWMF1UIvICtdUJ0CQAlflkoR7PIHJVmrtp5eo=;
	h=To:Subject:From:Message-Id:Date; b=k7oX0/LWawV1vWPu912JYwAay9CAkJ0ZpZYRhnFVo8CGhanUyfyqUvJWIYbWxeA7aa+rlvRSLy02Jbf49zE8YMfx71r0OSgubmHfPw6a3MkzCYyYxNFVapsE2t/pSA7OjgnUI2qexki8I4CjHMWlwqcbPlNoUPvJsds2Sujhs/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZLaM6xh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZLaM6xh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEC6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757944793;
	bh=pZzhg+xWMF1UIvICtdUJ0CQAlflkoR7PIHJVmrtp5eo=;
	h=To:Subject:From:Date:From;
	b=aZLaM6xhiPNAAIvGPBuw8WfN3VMeMmOuiTyhf+moapj7napBL2WAp3alkTvoQxE6l
	 EZotWZQE4STqtIEILpn45/cF9i7ZQa9Tk0P5lnb70Nze/iv4vPSu+mqp2QSKtcp6qy
	 EkZZqJMg363Z5ea6rNXUU39Mk4rrbZmbjHdb2TgsDJz280Pu9LUZ6Q76icyKcEhJtL
	 rEntvC1YTHFchjDHTb0R2ePyDzi2oWa30GrqoIFhAh1hH3fs6eJSxYDqWhvoHxJMTl
	 g3lCMNhzt+5f2DfCn/dvASj5Ug0y0xdC4FnHCGldLxVjfYqB5QvGnft/Kn8fGbr4Rd
	 EqJfUQGw2jfow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F047CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794479357.2580.7127760504591670374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d89c0f4f0d45cbe734cfb01228a586a2b43d0085c7993d9c883b3b6a10f52b
Date: Mon, 15 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757944793
