Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6F01A28D
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747185594; cv=none; b=faDtU6MjOGgJfCKX6TZmgsPhJf05cxdiLRiV8wYDqeAsEvs99QVhU6/zo7JNMU4pNgXUajUOFC2iQ02WFR5B5Z7ikz9D7UeMK6e9fWn03t3fxQaup6g9uMQ5sv06SLSuhmXEcuIMDTQGpfE1eP4lIfA3jlRLKKuKcigmcBVWV74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747185594; c=relaxed/simple;
	bh=E1MYHdQluM3GAeRlYkFoIgHnf4Q2Q2KTHFkcZGJJ17I=;
	h=To:Subject:From:Message-Id:Date; b=O0Ip7aRTo700fLwfc0eU9u2pi/bBgt4CMtah8lq4FO+Qa284hjGNAhVX59uQqv073OJTcZlwTqUEbdDwPRhS/bbKaniS9MPVyKKcwuDT/xzoxoqLecXgijuGimjhMexzXB/ZGRf/K9ApkvdpptjR3kMuFYwyvtMtESF2clId97g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uh8Jovqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uh8Jovqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7125C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747185593;
	bh=E1MYHdQluM3GAeRlYkFoIgHnf4Q2Q2KTHFkcZGJJ17I=;
	h=To:Subject:From:Date:From;
	b=Uh8Jovqhihs/vL5LtAXyJkzJkDd++Y2vxrvfyv9eYoz6B2W5XC+WUZb7DCgOH7wdO
	 teZ1frh9KR+XpIwCPeBpm6OugMx+dyRgucTSioa8J4b+UOjxlscrt7p0Vj8zR1vetj
	 spR45ICpeMkrUmZle8sUDEA5wOUFXaTRtCsVlRdXlM4PdZY38PSBXgW9SkprBsPce1
	 soJx1GMPjdwuBP6smvv3QR96XHsAydIPwJVqr2UlaDi9k0LDRomK+SkNlhw19iFbuO
	 O8MyXTyYsutV/f3sT7Rnjq5M9QXv5QkJrYLr9mZ+ucp2wIHaL0LN5gYoS5GrJszlGu
	 nhE8Ict1hCscw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168DC3ABC3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718559357.29603.5611193566903481515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57b760a610f62a28c655f9a488265f586873fdf95b7410c0b9d38ba8bb087cc
Date: Wed, 14 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747185593
