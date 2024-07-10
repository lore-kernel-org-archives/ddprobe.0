Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512694174C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720592183; cv=none; b=r+pmtp+pvGuto0w1s+bUqe9zZURzkkTkr+KKveBjsaaBDww6Kw0F1HJP8czw90n3SGJaLJ35wA4J2UE8qSEvBSZYW3zNL8wIPqxpCDQI0Br5ShCY80e6bNwjWQ7axteh9/pGZG0A3z2JKc0Z/mByG0NQ/Eqh+9+m3DG9hd9VN1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720592183; c=relaxed/simple;
	bh=VL1T2VMKwHbyttXzPrDBEnkHMaUkrPKouRtLx5Nld8I=;
	h=To:Subject:From:Message-Id:Date; b=sSkw0JQhW9aOBuERqO14pJRiWCBhr3N6ckRRHSUux4wXEqEzHZhBlCozZCpYQ5GdXYPuYppveZdOBdSKDbOyVZ9JOmsRJCEYJh+GgIbTjo/ZjTqwqvihpEetP0W/Ukr8r01jmj5OhDbWN8AGhAJwgq78ynHhslAnbZkqCIMQOk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIdVooBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIdVooBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5ACC32782
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720592182;
	bh=VL1T2VMKwHbyttXzPrDBEnkHMaUkrPKouRtLx5Nld8I=;
	h=To:Subject:From:Date:From;
	b=tIdVooBBq+WYW5ZlhtOD8B9xzM+2+3ZLP968ER4lZVyB0dAUdfwSovXnR5FjtKOSU
	 0undwGeZENTpBCt7EP3DAEtcuBlTmPGpvA0/5NgbQgy1DfTueMx39myNdPSjekldLz
	 lpY5d6ZXs3Q535cpm7vq9ciA+vX1el8HHpukpKmaAsRdykjdZ9YSzGoONuC2Ypcd42
	 46G82Oe6YQjhYK0VDu2ymmSBLPFA4hw8UQUmXT/b0Sdz6JEimZMKbzAs1IkxgkjaRq
	 yypr2YN9E9b3X+PhijolksappRueHpp7hETgYO7OAvqAMfcRRF4Ha+0Pwir7TI4o1h
	 ihofnZoLtseYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC24C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059218282.10910.8626026150874985891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23005429cef925cdf311838ef4a10df0a4e7351b85fbfde8a12d77a8d8d2984
Date: Wed, 10 Jul 2024 06:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720592182
