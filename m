Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3931C5672
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737924954; cv=none; b=WqwdfQh5jO/bs31gfNHPkPW9H69N7+WTukrcUhWKM1FXHVYQsI8FgOO4SqgTkYAN45imQIO2oQnGIAzjPKPp8I8zqFm6TK5ntFFWLbA3z+PE5htHtlgabHXPz46MLCtfp+X2aBmpwCNrpSH8NQV8Udo6T2l5O36P6t/facU6B80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737924954; c=relaxed/simple;
	bh=tUfw2ubtJ+u7dB1vP1S/oUl2lBA/wMQmfjWaRIPjpo0=;
	h=To:Subject:From:Message-Id:Date; b=oGDffgylcWcdk0kMFTtJnGWgB2kSPzJrHIp9tSrCcKnOSYj7SF0t+h2G/muTIIkO6TCT3qD30BsJsYLPhfdseXuBk/qzUxhdsjMtkPOyDNMXOJcCqIs5bdXVK4mdCwX1z4/57tMwTAz07nag3pFFzCPMVLLIY915c+PgsonQ4jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thteDA/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thteDA/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A277EC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737924953;
	bh=tUfw2ubtJ+u7dB1vP1S/oUl2lBA/wMQmfjWaRIPjpo0=;
	h=To:Subject:From:Date:From;
	b=thteDA/c0nvQeD4xLb4kjCimJMWgufd54ddXQT/SKJ3B7SYdQDRfTHDEtkSxEpIeq
	 7FJ4NipnTgBsiEVZSe7qAklPvTKqguJ972nC5/6Dkp6iFWaiQfMaklpVb/Emm86to6
	 1TnG7DYAHJy6YViNY/HC7Sbt8eg6HomNfioPJuYkY5vE9wdXw4s2S2LXb4q4z1Rrai
	 yrbpkN/nMNACGHqh5MJ1Qn4atCfdUuHzzdh34cEzBMiHE2U1OEp7XrIPgmlSNXOlSW
	 5QmINROipPrDe/oQ6t4bkXHyyvYqL9ry09EzEHNxgMINYZyuTNs1aecFm8xTvYtqxy
	 FXluIwJrl2nNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DD8C0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173792495357.31755.10125237864323865944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4409c1d2f048c5a39e91a28c8b072452a9465059f98b06d81f63d3d3ab219b55
Date: Sun, 26 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737924953
