Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F84A16F288
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786242034; cv=none; b=DAfG6VbfVpQxcyDiGbomgfDEYJUy+rCKIDgC55GrIOY0mWDD4aGsPIC+jkcDNtEkI7Ckw3DMleUo4APmuJzCMT8MOjkcNZcobqIopknjS2RUnIVag2utdqVRaCrZK1VGDKhTcyCKqwREhCA2cKLNz0StCKS87DouyrLf6mDDpmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786242034; c=relaxed/simple;
	bh=GUMcCXXwESkXWK1Bbw4wvAPHDOzMyIV9RnGNzOJmMm0=;
	h=To:Subject:From:Message-Id:Date; b=JlfSZIF3TCiCdDM9GD7uZvErP/Fvwng0tSAL7n4mQ8FFFnCMXr/lO5Nwok0bieLszpDA0yoHnbHIrQAbegbuaZiPphwNnnSz/uDPQhUHkI6qBJhlrZVxlbYj9Fju/7NeBTKdyropYZfMhWsVCBQRj3f49063CA3TlWqAtsLSUNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cj8vNoVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cj8vNoVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26D7C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786242033;
	bh=GUMcCXXwESkXWK1Bbw4wvAPHDOzMyIV9RnGNzOJmMm0=;
	h=To:Subject:From:Date:From;
	b=Cj8vNoVjnf0QPQZp36CUGB3WyMRxlWANMLwLiOq3z/VvcRd6TxtEenryVN3Wuj1eG
	 /M9mWAamqLFPGSLlRHkRu/F/uKdBcEcjd2bJmOf7FclHN6qVNauQyaxZZMou/v9vV0
	 2cQunpiLwfDhPk62VU7zzp3DGZOlQH5d1olrjIGf3zQyvGlMsD52yhr6pT9M2/6K1M
	 7PjNtZlS6tAuVgOY8sQzdVG7Ls70ayaVEzKsHI8PUZyaTtFxpNTKXpCkqIEXQVhnMO
	 07+IRa6saBfOIf+9O9nFGASc7bV4jFDKd9IFN3JeeQ+gyfVVmZpO/ExAsYL7lS1LQw
	 QFJMKc8baXUtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA75C5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624203368.13753.14256215385910332863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e529a675c7ed43c32140d0a6a94388b2b435451931fc68c768db65b69a3e1bc3
Date: Sun, 09 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786242033
