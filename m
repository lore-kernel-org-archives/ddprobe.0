Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2FE23EA9B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771478094; cv=none; b=ThyT4Jv3Bn/sOsf+2pWX8nUPkunohNBP7RE387R3IiBxgClTouSNN5JZPS3Sl7ZBHjFT9hf8OU7womZ/ck90ASlreN578eSeOnjeBkEajOVWm/F3bAfrFzAo/3NSF/id7csWs8xLCDvmD8JSw7cVH7NMqFcsgL6qfN4nqJAXQ0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771478094; c=relaxed/simple;
	bh=OnszwXjjv/zVAPuvUSZ+cm1/lQFeo+dB4pmNp7m0H5A=;
	h=To:Subject:From:Message-Id:Date; b=mpg7x9bQsZDuQSQyYR8juqUjweudiyHHsnLY58aHisyrhH2Qff9tkeu7SIt8ZH4T7GpjTd4TYECf4BHoomfw4Zc+p9iXiq6RmE7dWNDShbBOsG72oeaYLdMKQhS9LE+AsW7jJUGQOCd/AEeqXwLGsjGMB+lLiMR5rY3fd8QqXlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evPzdOm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evPzdOm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5143C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771478093;
	bh=OnszwXjjv/zVAPuvUSZ+cm1/lQFeo+dB4pmNp7m0H5A=;
	h=To:Subject:From:Date:From;
	b=evPzdOm4Jq5o+RZJeXODdSgwJmbK1BVdVpTwlUBviG7kuw3TB0/snWtfCJxC7vaT5
	 OKDEQhQ9kX4kau1egrF5T74Gvx+n+FpNiXtSzgO4yTJmM4GXvlBlfKSaLxdJmUjPaJ
	 vLLO3j5VeB8N3SR8pBEzeDGnixaeRDnXTxFDg30DI/d8+dbb2EKt8RZkmc/kfbqp3N
	 ai9ZMuAEAIY/NdVjCCds82G8u6UvgLfzVjhRdOYDluAEVh8JlY//F8dXltsHz6VMY2
	 CaQf3Jvfj9nMBZtC/6pFFoHLOFACyV3F/6jHUBximslGk8Ty9BsOINh/TNeNA9mAPh
	 qVLD2ZBA+PQ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9333DE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147809359.29648.7398548064394353913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccfca168a2184857510a8b3dc636a9e8e31dd4b7a6e2bce170e277dbe1f8710
Date: Thu, 19 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771478093
