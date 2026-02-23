Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0287D37F748
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771889094; cv=none; b=duhfTkdvhzT1P06J3qmM0Rrm/rb1ffKCscFS2BbHuik4VvCVvupnj3XvhzkOY1wiDi43cxDbZHzM8Y1i6Otbx4lZQyq4fkyKc0egAdBPIJhAh39lGcOHgPxfxydps5wF15PaH58OuI2Kfl9aldgRye7WA2B5baGWVzWhIuMv/2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771889094; c=relaxed/simple;
	bh=1vedLMo8TSG9BicWPFgZORpbsZZUtGlYjKwBGXbYONI=;
	h=To:Subject:From:Message-Id:Date; b=Ume8+2WyWOLGvhxW0aDo96BH7JyuLY6MC4HmGEDVC4oZ+zBC8hJScdN2GCUwdREzP3ITIEr/RYnIT7DvbAQwzYFKGMGuU1Bv4kpngDviqcfLDIByspPKAyOW/E+jnka/7Qk6NNQ0M1AtGyxcqs1QgFq9n3KW0XjAjgC25O3pr9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxWoQQtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxWoQQtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE8C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771889093;
	bh=1vedLMo8TSG9BicWPFgZORpbsZZUtGlYjKwBGXbYONI=;
	h=To:Subject:From:Date:From;
	b=kxWoQQtNYSYkTHbg9qWLuBsMuepncOMjSRlvMnDh+Y+XOaX0VO2G0tDHD73q9WQfw
	 gPXCBvnxlGs6yTaqncifqJO+bfhZFBGr2elvMKupnq+EcblzIA4KX374VXqD1V+0Vf
	 xl7fthAKcadXKIZC54oFcqWSGR8hWbJb9JcjcYJ2gC/ZTb0Qet5sKJtkOliY/eLKT7
	 rsq6hyslufHnd9VAqH9LCi3DTcyUm//fdLB04twfK8H7quBTVqZdkVX54IyCL3dcAc
	 qlamtldPoUkHzAOt6/YvcLL4wRaQmXVX9e5iE+0LcRRqvzjd7widRcdJYJhHuX3Gi1
	 zqaRc5K8A0M1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E4DEEC2AD
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188909358.4878.17727677050509190108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b887248a8905c8332279c51893dbefe3cd6b66cd524974141a00917e612c598f
Date: Mon, 23 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771889093
