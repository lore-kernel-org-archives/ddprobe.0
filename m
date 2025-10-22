Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1003027F01B
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761172794; cv=none; b=UZrSiGoZCioNtSMUQmQPv44jaNCQnvv6c4gNYrjpgxO+ODqeoyXN46dS0MWG1yE77dcG9dH2OtdVdLIvMgcKQV5pSXPGR8VxHVqD7G0OWfZwzqpxE6KR3sZ3KIsICNIrQ9zkOU/+Tj/dYLjkJPqzoA39h3VqnaiTrp2ULEfAMKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761172794; c=relaxed/simple;
	bh=6ewfnd5yVK0crLdr8jZFJ/KyAFqk4FXqpzodN4tedu4=;
	h=To:Subject:From:Message-Id:Date; b=ZXg+qG/l/SCA7yyFYOetYfEe5Z2Tc+sZF9eYHL0yoQRFU6wL76u/w/EuABhbmfMQloCQxuEsXxLEaKWo44+b8gswDp0Jiy3vM16Xad6tleeSE1nwUbg0L55lokiK5o0Uj4+lyrSR+1anrIKNmeCZ7x9v/hUUxpKRN7Mf/SogSD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5V7CLii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5V7CLii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7453C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761172793;
	bh=6ewfnd5yVK0crLdr8jZFJ/KyAFqk4FXqpzodN4tedu4=;
	h=To:Subject:From:Date:From;
	b=G5V7CLiiHVtP99LHtOyIOkwIqo21qcN4+9IClKmUUuCsPpXB3YamH7PVN4chv8pji
	 K/z8yqpuEI4gRwXfaICNtgZWMPHcvBButyrW3RU8Udex4s1Mzz5R3KU+INsGbcRy70
	 7P8wCV5lrnVf2+O5zCRu1WK1TbZPSLx/kgOXJuaRg3HriY+4Sy045bN/bHNTsNFjEz
	 oyA3kZ0ERFssC8OTywEoipSJcA7uXNwo6URwWjxMlTBk5/F2KeaXgHrGVYHb/Kjgek
	 o+vQWNdQm5V0ZtmRE3IR4u+TxkzrDAxKJIltgteWX2LJB7Kwv7Su60lgmMBaSwpC8w
	 BFNrauHBeR2oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9214ECCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117279359.10663.12761880630272204283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665ef2e64a4e6b83e69b8e65ff9876797260c8a3b7c4ef54482f299797331d04
Date: Wed, 22 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761172793
