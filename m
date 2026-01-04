Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3233C231A23
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767537234; cv=none; b=i2Fjcwz2wF2AVPuMj7MYdoNlmVf0D3hqGwaTqaKvs82TZQSA2BFa1upeelrcnsTs3t3Zj4hjf/OI6TyM9akGkyrOGVWUDID7i/cx7mvlnAuD2TqgO4a9slZXj8BVnEPzyJ9HsoJjLINatREujVZY326Di8DV/XH5Lday4/5b6NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767537234; c=relaxed/simple;
	bh=Lpg5GodsQpdPTZO9xs8v6C+ScjycjUqvlN6xvSiAIgM=;
	h=To:Subject:From:Message-Id:Date; b=KZQ3F6y35sZfKv3enX2/5CqgpG7bre4uvvGaXYvUT1NQNaun81sq7bp085WaHg/T0foe+aSGgHL5SDgmzsYWWGIjMmkbFBfeZNcXRj7n1fRVu3VKsGxTwWWQ6TcjMlT7Okk2iB8du1nnTvSiIkl/a3SS+L8Mc8ZtndhbekGmnus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuE5DJaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuE5DJaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F599C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767537233;
	bh=Lpg5GodsQpdPTZO9xs8v6C+ScjycjUqvlN6xvSiAIgM=;
	h=To:Subject:From:Date:From;
	b=SuE5DJaRLRyMFzdfUPJxry+KXp39qC7u5PgcMEVv8uaxVRdL5uPnllulQGK3MbQeP
	 RiNgF0wuojVFKXOKq3phKWz0pHQoIxOCgOclANLMzinaR3wQ0hN0TPeQ+zliOCPOb5
	 YtH3IwOWlPcVHwsGZMpEzlFS07lSoE5yo+Q5fU8zW07iozWrIO3Hu7X9wahezqO108
	 w56wTOcjZwUBTexKIz34yCbkOniWN0Rz5DYeJ8pAJ98jK+ZeCXx2ta4TQtAXbGZcz/
	 u09P8kj6hw+Pb87CAXQMj/vKfg8idmjY3v2jUG/C3HZCHsJ1tFA12it1onMCR9DBLd
	 AujbeMVQW71Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F90EC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753723357.7397.6171592771356401335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f1657c19f03a833560604d4c374a7682f92cc59cdabfbb50aa00641e97958e
Date: Sun, 04 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767537233
