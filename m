Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2813726CE20
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750779594; cv=none; b=mRqtbariCn/sqw3iCKNJTAPEL6cwdtJUfdHhRiAPWFAxfWNd6Nb0T5jwZFT27JRKkjSK/AFByC5WVbZGv6kNp0nH5VqVO5guvmFOzFhxkmIqPtLVg0scw/ZTE54ke9+LfkjvZjkQL3Wr9VdxKPgSf3MHuk2MfNmJ7MPJQQKM+Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750779594; c=relaxed/simple;
	bh=c209qCRczr0QyxgsZcSPjv8ibUsFqhrUl8M68rSbrzI=;
	h=To:Subject:From:Message-Id:Date; b=GULOvRlPfbawHZeddR8mOWR3KGIDjxhEXsWSHkbhzwI3JZ9r8w0AXN/RViPcYYQaUsoQxAQ3oWKwOXBUQDPh/hy5cI1zjfp7vqPENeOdvpWEE1lSPKi+SAIX7YZfsxFlw7u0glxy8q0TtAioIbJMdAyXGBfxjwb8ju9so2pmqwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUWLEj3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUWLEj3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA7BC4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750779593;
	bh=c209qCRczr0QyxgsZcSPjv8ibUsFqhrUl8M68rSbrzI=;
	h=To:Subject:From:Date:From;
	b=HUWLEj3/Hkxnuo6eCtjTvjJeL+2xYkgkDCGcDM0Ydr6b6GYUlKryj1/YBQE6XLUlb
	 b8sdLFumoXfd1j3QSJmn1++G1kQ8xuczdMy5Nwt5Oed43JodxhXj7f0ErRALMa7UEq
	 7WvsjW9HjJ4xDI1BrMk0M1/Z+d+oOeDMobg4g0TPrUib2kE7yioG7HTKf9LZR9ccPV
	 5iJPOho/GZVissHU3nYwEjJwU1aAgH+WMbp3LpznHZdBgrA5NH2zvGLN6WtdvdTjAH
	 84YOXU1xHUyxLgQA9R0/zFngM5KPN00RUhE1R2U8rEYtEzMhGx+wGpSH9th5xMHn76
	 68Ak7y7MO3nfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDAAC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077959357.32218.14424508793093358354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68a22ac38786adab7261654dcb94d0c108961b9332e6587faaf4f10dc35a99d
Date: Tue, 24 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750779593
