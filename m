Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328FA14B978
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723494954; cv=none; b=ZukaqCzme5mN2Ed/koh+Yj6mhuTOj4/cK8FB4vSh5+Tsohl7vWoE0z50CcjsKbFEoYkAbX/bklRlL9Xk8cjTGXziXkqunRUOrxYpEP7klP9EIsYwnLJQgQXinmqTxhXwBu19qpAfB5nJDHXKydTWjbJF4AOYBDMfFaQkyfFwvTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723494954; c=relaxed/simple;
	bh=SDWH58ewnCorKit14LAv/VbTKBNHZ6RrMMd2R2oe/kI=;
	h=To:Subject:From:Message-Id:Date; b=OnmsZQpJniJrioSbrAb8ybmDP77QOd9uYKXe+qGY0aVecsotrWM7b1S7U+bmxJiQgcjZwbWg590nB29I4OMh0zm8/579ei+SUfV9046lbGjdeq9a5e7ApfahXCg069voF4d5UFtaXuJQ6otoqFHO+ttGserXlhJSAmP8T0YrgBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UedvGnWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UedvGnWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB168C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723494953;
	bh=SDWH58ewnCorKit14LAv/VbTKBNHZ6RrMMd2R2oe/kI=;
	h=To:Subject:From:Date:From;
	b=UedvGnWKPBEImBrL5SRkVk719itWAwxnM/CBHDrgOuVgDTnB8J+jW2IFT8B1rfoQ+
	 3ifwDFmvgatFZZ23oE6EWcPbiMNGmvKMzd30mgjQ1q60sC9PDFJpC2zSrnyK3mjeIZ
	 1YhhL5IDF0CawjA4GjdAA7fAAf6YhdyVFJaOld5g2JTcMCO2HOqWmRp17fK/Zie879
	 IVod7ruXSmveCFZb+yTGG86fXIulKr3husIRDf/Hi2h4mf3oVYB1doyJYuaF0DgGld
	 6ilziwklNQlMk7q9n+jRURYaoZTtbmiT7R+uoAv2ZlXZnZEvmvvmKFuh1I/qp9H18f
	 aGQWTCBBCxbQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9777AC3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172349495361.5583.11131638252043486822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8500d46a99083342560bb3899239932b5b15945c42a37a653ce3867af9ae3ab8
Date: Mon, 12 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723494953
