Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA7F221447
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734615354; cv=none; b=F3fXp5Woo/6t7UsrgPetTaAwYdjOWrJM3+wav+dIJg/EweRP0nvBoHX7LPkPrjUOignoWDzFD4HcOOhZlmjdOTfIf+jZV7xs9PDTQQrkF8ttEUqtK/G986lMXGBDzEWw7cqB8U7E3N3B+GlLwtvxtwYi8WPJkmX8g48yfuoIBCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734615354; c=relaxed/simple;
	bh=Z2X0LsgDP+6y1E+8emJKiOZ8nmj0z7fqtd73hbTcFDI=;
	h=To:Subject:From:Message-Id:Date; b=kE0Tj+FjcmTn9YG32V7XIOD1qfQsyBH9oMCVHAC1/HxBvVDO4nO9/OnXecRr9Cu9uE9x+DK73UClVDC3GGsiC3qsL4OSUIfsZRn8djUoT1TkB7WPJT2xN0i0cn5Z9oNGzWUDA07gy+6eSdgUpNeYnPPci7h8F8XgMnkrZPOyENo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPK/kzQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPK/kzQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D08C4CED4
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734615353;
	bh=Z2X0LsgDP+6y1E+8emJKiOZ8nmj0z7fqtd73hbTcFDI=;
	h=To:Subject:From:Date:From;
	b=aPK/kzQYuSIftD+9+9oZojgjax/shuwjaXXyHVtuBKwgUg7nCeieYw0mWrEe8zJvW
	 9/gfkybFeMpMll8Oac+buJJJ6Gdh3hHatlTjf9TUT+5Y5/egkHGCQDUQPpMB8dd8zm
	 ZCZ7wXkTEXxHgBlYFY6ZNmRf9TsA/4X2/4BGPzWrCeyDrX0xPGjeFnzt1vWWQH2QEc
	 1RZDnbd6oPljosNYtdI2xyAaIAkmG+zVt6/Zlj0rjDb6y8d93jCeuap2pAihwMcR8T
	 PrPDHeGqUp4GYGFNLn7J/8qPZS1QT8C/vNU6OWn/0uOy2KjU4DPTZESTlBzyP5YAYN
	 QP+y+qhssBpIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92683E7718A
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173461535359.17218.7293426009755606034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a0423205d2104213c7d719c8be11eb7ddec2fd71c515b2b3560d82ab7d6857
Date: Thu, 19 Dec 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734615353
