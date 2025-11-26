Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB89286890
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764185574; cv=none; b=mkz/ECZdS0ANgVS3ILct9ZQQGe50h1YduGKscEdK3QyZeAfbB9C6MPb9Zz647ix6ol+yw3DUCCxVVND15aY7tHn1kOnveZsRyDTNaCBeeenJ4Qk4vHEyc1QaiMmcZfUwouDhB8gZVtL4Bx0vFW06YmPKrw4QUUDipMeyeNlP6ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764185574; c=relaxed/simple;
	bh=F8ftRTpopoz4Dw61a5wZoNEN2mbFHMDEAmIiSMOUyMo=;
	h=To:Subject:From:Message-Id:Date; b=PQwMJh9HnGA9sBB+EFAIsOdSuZ0rEggQO048ZzDXN6TADE6ww4uLArVdTfNaT7Kl8fHgNobhITVEgVCUvuSW2UhquylBGwCx9wHyc1BEUeZhPHWA3xXSAsfokidqnEAiwyiz+5/YoaQhbk67RzYhvI5hGzHQf9ULu8r4yPn2QvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0b62saa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0b62saa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0AEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764185573;
	bh=F8ftRTpopoz4Dw61a5wZoNEN2mbFHMDEAmIiSMOUyMo=;
	h=To:Subject:From:Date:From;
	b=d0b62saamhGnRa5DDDKfzjMdJ4JNh4eo+fIW6W+uEtW+8PdMOWFlGBM835KQKEKqf
	 8itcXvgMZ4rN96stTjJYGnDCERiW4tiOpGTqggztjpFJxnixZKAG/vrECVsgCIQdNk
	 JrBFOkJE+MxSj7oOr4dmbEHjmXUU5tByS/381/UKwICEkMxaA2Ex8QSoD+zkqrvtQX
	 igRJBxjT9cVa7jpA1MHt8D0Cea7qy4YgXV2oVk5wbRYeS97GSpukOeFCk60bbByiy8
	 1Z8DddcisYrP8+KG6jC63hNao2podPeFw3hBW14bxikhPjfhWOdiNOQdCx/jC7+cOu
	 Rr6/R9WdmnSJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99381D11193
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418557359.12730.3274896610928393092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb17d8743920f45374a1430c0aa8e3007aa3021394f7eddecf124e90e2ea3bb
Date: Wed, 26 Nov 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764185573
