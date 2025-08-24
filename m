Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A63A285C98
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756033795; cv=none; b=pOPsw+A7KlkJeVVc6Uv5U0P/KpcZHlQqJX+Pw0XKyWf1JjFxElbcUrQh6Aj81S630qo5cKa6FZu8ne1sjjwl+viN8AR/v7hQgahe3qwsnD/zsOWh692+Y1VnWvVWyiXuhvoRQ2sHgoFWv7Kqka2KPVpgWzZL99UggOdiGP5Mifg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756033795; c=relaxed/simple;
	bh=o7/G9+WSmnH58eW7DYbt31/yo2jM9qFVfvHABz68TDs=;
	h=To:Subject:From:Message-Id:Date; b=rSXRmZzjazeKBIjM5skFovdWKvinl79ypXcJbbmRjIKGoGl8//yD3fsTAMRfdsNVbIE6nATmEetnq4B4EaXhFUjGHQUVjp1k7dquPgSQqgjQ9wzY0Hteqwu+g1v96ni1YFrLcTNIbm6SfUieiiImy/JcmN8pDCXAp3SRnlbFCL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3yCHcD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3yCHcD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A279BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756033793;
	bh=o7/G9+WSmnH58eW7DYbt31/yo2jM9qFVfvHABz68TDs=;
	h=To:Subject:From:Date:From;
	b=E3yCHcD4+58oxQDCj8E0N2DtvsSHkgrhtvL8rCiz/8jnHaZJiaEuUZVL4+Au34KMG
	 DNoCOGQlcYM7U6PddqH90ie/s8Gy7jDzFOv2VQ1HWxqnMLlyibd8+f0cAeF9TK9DQk
	 N7s43XxXtb5qa1P1tZ+/kDtg6ykp7x/eKMa9bqUekHrQLaDQDWU6DVpfdTw36mhH9f
	 ANeARjKX0BfmsVX9Hz6xBMMFrcbXzvdNOZ/eHn3mQ2jcEowLJnIDoVhUWkc+fxffKW
	 9ELpWmHhxmh8wTigq5E4gLrn56P5KZXDozKU9+sT8KZ+ypUCK+uU/qaeBAq6JSJBeo
	 xjwYIJGiGk+gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B6CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603379357.20538.13836590560155931751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb5668f49b0c76196a9462e9e3a618d03fb2f3bfffa789014b4c2b8962df07a
Date: Sun, 24 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756033793
