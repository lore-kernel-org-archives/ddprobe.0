Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB172DA76C
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781186794; cv=none; b=cO86xsRU25lJ0XGFcjNZKR9R5UmiFCOr1MtSASTNbBo0sb04upc9mi+h9cfbyN2S5qCWTa/i7evH2BQ65IkCLDzxhVgGHQB1qa0aN76E+S78mKSVIeBweHNzxM01n0lkYrFWA87mL5LWmlIYW660RwrXncZ/R1l0A34lAdLvwGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781186794; c=relaxed/simple;
	bh=8J3LzqRI0bWTw706VJx6lGj+d/5ufJANSyI2tC8NEEs=;
	h=To:Subject:From:Message-Id:Date; b=IGswBe7z1xV7jh2s2kmVNYC7xOOsxtp9uVUHcC3JBtaJsZEISzFdeGo3ofOCYU+5im1Lk6Co3AyPMLyHRViMqpIg5MGtmroWs2vhohddbOKRbCEVAGuNxUiOjvq0egC7R7BeZTG7lLapUf8mRrLObK9dMbLBmoT94EkMu7YDlM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7Pz71kK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7Pz71kK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB265C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781186793;
	bh=8J3LzqRI0bWTw706VJx6lGj+d/5ufJANSyI2tC8NEEs=;
	h=To:Subject:From:Date:From;
	b=m7Pz71kKXDzhxpwbEgttu7GojWklDNyis5zYWQ7rZx6orRgpaTT062VqxMqQ9Uzps
	 jvT7ssh+QdqY1iXpOmxJf+eJ2+oUNdEujDgskV7u2Mtg2VNyz/JwkDEOyxaERzxTgE
	 DNUvuwhlqJmnUk4heXuL2Z+MLTtFugzKztVGJhG66XaMI6WNLSBE6XEjRifWsshP5G
	 zs2xi2BpjBBBYbFBoTXXj9EssU1FJr28nc1DU6RklDSQk79t9XHNQbhNyQNJOQcCml
	 I348bd06Yd07S7PwLOlOXkm9tNklIbCB9rf3J9pdQPmu+sbaTl/Fg1MIwK/MHIaXjy
	 46XWoch816x9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BDCCD98CE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 14:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118679371.31525.7468708406186619752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba25c474a35191fad92a918e3de55fd2ffadd4d5adafc20beabc61d9372bb6ff
Date: Thu, 11 Jun 2026 14:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781186793
