Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2A71581F5
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721888154; cv=none; b=PlJVEICe01En2KOUrnVny+o7tuwJdUQsltWGOL0UlfT7CcKWNEZNFy5KNuVwC2YozsSCrrwVvEXkqfFYx7RtbhzidJl8JHTv/QArbUpXwQwGOo0L4hvEXbXuSW/vvSHvqdm4FzT0NMNwhmElkvOqJVFoq2ChfAEHFi5q5lRvWp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721888154; c=relaxed/simple;
	bh=VYMAS/vWVHHV9wPKqFMyPiy7qJSgVogHDAgo2O9vnqU=;
	h=To:Subject:From:Message-Id:Date; b=ePyuftn/vOeOUQr+LdXaWPJJ1V6tSIBuuttUlW8RbbtfDgdVIJW6/ULLBWfysQq0vkYQdB+1zHfr0hEhWrNIzBeRWMICjsxBt8AFoPJHEkFGUH6VfhYQhF20qOEp3NremvGm49Iq9T/UeprkR9zEKnuUjLW4ITffz8t2rLWJ+LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imun2Vn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imun2Vn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8F1C4AF07
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721888153;
	bh=VYMAS/vWVHHV9wPKqFMyPiy7qJSgVogHDAgo2O9vnqU=;
	h=To:Subject:From:Date:From;
	b=imun2Vn+R/dPrindaa/1ZuI9RcOBD3Z/0K8C3X+TE63WpkUVprBAyP8X2WVi9mfT2
	 TYxvgsc5qxkmeoIxaB7GcV3I5T9FJ+MQgWIf51SxDNWI1cDbHtYve5dZhoxhk3hUZy
	 figgFN2BVYnAE1gKeU6gi+wx8EJw+S7gnzGw0EOBa8uQ4eAQYSMT4CctTHuIGdyaRe
	 Ekagw1sEVTwhelqRIYBcNf6MCSvpBGRPOwq1PgUKpKvgTPRg6wXcHphtC0ZYDHOeLe
	 /li1Cu5XemB6L9Pn0U5qRBBYZyiNfrjRLUc7vLGNpA+eR/ZNFpJcnlfCSI0aQn7BCe
	 8Qwdk7/inpbXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D34C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172188815360.1983.14621948201237319997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bad8b919e93c691fc0e30f31d4fbe0f02fb01a0d5d1f3c502591233751b71b7
Date: Thu, 25 Jul 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721888153
