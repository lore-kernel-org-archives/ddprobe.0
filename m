Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F3D18C33A
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717573583; cv=none; b=oCoC0bSJ74M1quocHhqqQXLHtR2Rdo3LxWqxEg0KeBN/wxBt8oQ2TNx2j27ZKWpXaIIWvbZJe6jxInLbFfPh0/XQMs5/RsnbCbbjxX51KOkk2EFnxGS8hq9k3TItyPVyTV9LkLHh9+WLr0pdfo6FeMW7qgJcJsvEOMKaCTQPvTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717573583; c=relaxed/simple;
	bh=0RfhQ25GeD/veMLQITq57XikBbtw+9uoVN85Q3V6erE=;
	h=To:Subject:From:Message-Id:Date; b=bUyK1GskPJhxt20y0Kuqc3su5QiVey8QGLRCDSJ19JscQjAxQ7+8zNzruymrxy1iSqGaqNwbcLO6zo6yO5YpghLQ6ZXnKfFYMeT7BB+KIxlZVIFyFRFxSxBslEHTJj3PGoXyVubxWZeVf88/6w8ev1hY37h321RWvhO1bUdx214=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLwxl15C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLwxl15C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F2BC4AF07
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717573582;
	bh=0RfhQ25GeD/veMLQITq57XikBbtw+9uoVN85Q3V6erE=;
	h=To:Subject:From:Date:From;
	b=JLwxl15C/e/wczgxJAe3rr3WnvyBqXH6cRcrvYNo2S9yagWMH7XqOG+9djZhiMXKg
	 sIsgHSjuqCudzj+456ZojM59djPKokjcNSz3gjfgvDpJkEF9UC4QknNHKjNv8UWeKH
	 5Ynw/GLUFf77EflMkyMhTcxME1emGY/7WDwah3/dR0/JUkj+eCX9+A/hz+Voz10AzX
	 xgsgP+u+ndfoN4rYfjk+AtA2IQFYTMPOb84NVRFqBhe+twwx7aBT0uWL+Ofgozmv/Q
	 FULg7RTSrbQAu99yJ3c4xLSKHHBin3hRZa/W2TjPRlp8sf55qPSm0vU0Qf0y9kam0r
	 aXdykcDKgAsIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F3BC27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 07:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757358279.2886.1134493498720021529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800894a546a97c0fffb10644ba5c1f185c9667041c614352c4ab3e537748c0c2
Date: Wed, 05 Jun 2024 07:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717573582
