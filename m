Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E8E15ADB4
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 08:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742027334; cv=none; b=J/7LskVelc54t8qtS9RzvNKkum4lEC+gDKU75eJMmOGq12MrqbL7qV3h8aH0oVKGvhe7SuQvefLAATRrPsB6JsrMinKAM8NPLlmj4LzQZ0YKna79iyk+teLeOQ7lDpRsMfZh6NJ9g6pYJ6dEfWr3e19YZTRwFz40dHE/uCFZJlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742027334; c=relaxed/simple;
	bh=7c98AQOrA/VYRfxXoCBM/zddU+bATKppSS87G1yqEZ8=;
	h=To:Subject:From:Message-Id:Date; b=KZaezo4db7Uuj+igLTVOE4zU9mMoha2vmECttI2bH7mYsbrPYWYgMcRWSJshDgaFRNSTGDI4WP9VNTFTnvUmb5EqcLQV82r8HJmYd/VJUXHQTKcmCcr2u6XKl0L/VNiVYieYJB2/MXIVOezgXYD+DY4DjeirRhHQEyeI9oWO64E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWhwF5Tu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWhwF5Tu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5EFC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742027333;
	bh=7c98AQOrA/VYRfxXoCBM/zddU+bATKppSS87G1yqEZ8=;
	h=To:Subject:From:Date:From;
	b=CWhwF5TuBjLq0KdcvmUaci2G3XUJTLREDQIRN8o50z2mhmesj3hS29GuQii8ytTom
	 Vpx2IiDlM6iJsy11dPp27xxmQ0jcecCrKEU3fV6J8Ix3RzFhvE97W+iFokfxYotSQr
	 9ohiLZSjEepFaMMzQacmdAoNm1JPr46ot20MZbwhrsQZZlpWXskA7N+KwFXs7AyBnf
	 H4wHlPlbdcleoUh/+0Wcjht7m5BNo28IIjLvWsxsF4AIFYQWsU9I4oJkFcHb0WFFeJ
	 nAyxshkOzjrsnUg1axSpWe4cXHJYRdX+Q6v+9jSRunZaYjRBUFuDESJFRrofiPLip0
	 USm+VGUJ9TvHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6BC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 08:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174202733359.12736.3343918160543753679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc87f6ada732db50967304a50854314b3e10ba108e5900bc050babbdc3fcd3a
Date: Sat, 15 Mar 2025 08:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742027333
