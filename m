Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1053C27B336
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767042234; cv=none; b=VVsUJHl1EDX5ixbz+4kv5yXUMvPRCs6SkIwgTeLtUZx54Szp3BTS7MVVLZMxwKhwAm0AOPShSNjjCh2PYqNboX7ahl9n95nVQyJTLJzes7dtXPleSKZWiRCwBYlalfkQD/73yn/W2PCLqfZ4RKL+b4qJ0l7u6h7URrbGPE5dYs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767042234; c=relaxed/simple;
	bh=8cJDZzAP+0oq3BOms1xp7rhSNnzcLFKx8vlwk0BA5Y8=;
	h=To:Subject:From:Message-Id:Date; b=DbsCebsLnZqCAHPUCKvYpGOEmOl2UcqenE4H4H0oHCMUuJ4kMsbS2eoW3QL4KgtscGNhEqDr76np0lf1R+6O13uJtnJ9ySQObW9iKVbzl8Vj6wz4j6R4NT6OaJdMANKqN0Ku4P/CQ1gAcrvK8e/aY28qtP3iOTA0/4RG4zUsJlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TK6zU//K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TK6zU//K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7FFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767042233;
	bh=8cJDZzAP+0oq3BOms1xp7rhSNnzcLFKx8vlwk0BA5Y8=;
	h=To:Subject:From:Date:From;
	b=TK6zU//KWr7V5qat6yGI7jLnSvvzXfEbo8/1byfTx/nMM2Nn3QTVbOjxOIOouqXj+
	 OMazZF3Fi0YW+0bUftPsM4jr3bIaf9Iw6WK8P+2it9hXpl8rPiXjjQuXQnkT3llWK9
	 7SIX0P5ab1izIIu58rncQvmPf9f+Z+bTHz/VwsrcW4Qw3gtrEBj1fGh2OVEFH3ZyLK
	 7ATRaU187Jr0m97H4WbjxxuFqd8nTl/7HRLU0ygCBkPVsTQF+GVpXlnEkMAzr0kN2b
	 LHRA/6sKvZqJRfVcXsN+g6tZmNr+LIMpbeuiPMDVC8EYQa9xJeB2eos9RUZp58f7GB
	 kTBpSN3oJb+EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8EEE92FDA
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704223358.11554.6317105674363450578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3249de1dda1c5b5f0c6632c8d50e0ed74fb83c27039c185ceebd9ceb58710fa9
Date: Mon, 29 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767042233
