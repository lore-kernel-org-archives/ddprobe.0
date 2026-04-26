Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED274A07
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777214854; cv=none; b=AckN8/xYya7VMogIsC0OOMsUVgjjq4iSNm1B7Lx+rJ0cD36OXbcytHr7hmBje0IDj54wxH9rEp5HXBa1kGrwjVVXny5kZLhtegQBbhpDeGgMtttXySRjmye/AUAPw5pejow1G+yNBjTLhD/aiijdU4fBRSWNyENvfbm2xIDwHM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777214854; c=relaxed/simple;
	bh=m0RVqIl50oIDFwLzUUSB5mWchM+oJ6GZd9VQ06xoi1I=;
	h=To:Subject:From:Message-Id:Date; b=b7Fff9icDUHe3YoSh9i6PL9I0bzU34jHm9lvr641XHoGKvcASc6wMAiDPv+hqNsB53+2ZjBA5Nw9P6Bx8YkZUwrts/FAE1C0jE+sLAW6/E7hRJ8u+YIRrYdpRW31AZisCk+RvkOkq5oWjh3/fShFI3+QTz2b/sUORukIK9I3Xyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BS9bcnF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BS9bcnF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFDEC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777214854;
	bh=m0RVqIl50oIDFwLzUUSB5mWchM+oJ6GZd9VQ06xoi1I=;
	h=To:Subject:From:Date:From;
	b=BS9bcnF/cJSQNBg+Fpe54y+C24fUuQAb2Z5IGrw0NPRHcAHOLMag4b/9drOSXBUes
	 wtZc4EU4H09i2VpXovYswpKYCsXSUfGNwxIFCPtA+IrV1ZvH5KIsK7r2jsAeRNgPYK
	 4deQDvNUzxltCpQdL8alKJe6YAuYOE12QPN7HHSUr+ac0B2Y0zqrmuNanCDoNmXw8T
	 zCwxpu62Zzb0QtAEyj344UCXI8dRHwDPVXbUjVkf4NxTvT6njoDJNcoPCQ3i6CouAX
	 bNSc44uVbhsZsNo70YUFCsIFaIf+HtX2zp/ZAWQIAzQP869Y0HZZxYE2fYhq0XOsP1
	 LaNCmtS30c1MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC441FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721485368.23080.11654871135730998425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33d7397c95275a3fcdd8c26a6d0e59a6088b26375642532626f5ca3e6067a9a
Date: Sun, 26 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777214853
