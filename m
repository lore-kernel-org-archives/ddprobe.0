Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C99A2620E5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763811114; cv=none; b=dmZJYilhFYNvPmvtPfUb54VIbayZDEHe8SpLnMPQR7bc4qKpf11KLk0P+AEfZozXj5GEWtg9cKeXysE9OgQOl5W7CdpPMTmJW80ooQNc0t9vzyBy5CZJwwKHdDgh8+tLKbqtG90uK7K7g4PeTjC8QGwYG5jyZ4cXSUNArsWhcRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763811114; c=relaxed/simple;
	bh=7Mbwct0L5jBpo7WR37S7d2Pni8mC12O6Bnus6mkgMKU=;
	h=To:Subject:From:Message-Id:Date; b=pVTdTgaNHw9lXQuG74RANNg6updJkeflxAFM5QI9WqG7C667xEvPaIEq8Lp6R5J4oOAIRabff5HPylj5+u7fIoR4EkSAKJ26iWKa+O6j2CLNg0OmhCx7ebJ8+ycfNx9pQR/P1v9nEVjUK8w2Q3YKF04n7ppvFCqs/ODrTlzyw74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHLPiGHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHLPiGHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A009EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763811113;
	bh=7Mbwct0L5jBpo7WR37S7d2Pni8mC12O6Bnus6mkgMKU=;
	h=To:Subject:From:Date:From;
	b=FHLPiGHsF2JRuYbcMPgR6V0v7ixUPbNNLoufp8eoCvVkgMQNSgQ3DLMvwra/dRr5e
	 E11Y8wmoedXAlI3nIgltJECgcgOZqPBmP4ZoNr+x2GTr53qKER8ImL5uqhiYM8GTaV
	 XMQdj3h3dEBQuimSVkR+h+c1RRVWgXersaCPpatm+JWvCkM3LORn/AY3GY/z+8zDJp
	 7R+s/RCDCPWGth3lamH15epm40rKSxGPYSnC9kqzq3glcDRej4ZhX06/DnhHQMYj3o
	 FGraVWd6My5G1HzS2ekKLkGG3Mq7i0lXUWyLsoJpL+5W8P88wVpCsJTab/jieCS0hd
	 QYf7yklVailwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915DECFC52A
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381111358.24253.8367760733180462940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b6e90d387672cba98c1f3e23453265cf0866585de6a093de44581101eaec10
Date: Sat, 22 Nov 2025 11:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763811113
