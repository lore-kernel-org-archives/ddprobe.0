Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E48921348
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764550974; cv=none; b=SqXz3trkV4mBjcY8WxDg2wZ46fluOz4eNmMvAvrRr0Z2R9o9Uqvss/f+BcIkHRH9ODwEMVc34fojFWl5BE33FB3ei6SitXuVOGohpHWyqM68c598L1k4bKyZJuFJjYiTwgGhiOKGko/Z3uXUPMqr8asbSFqvq4OCXMUaV/i9NNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764550974; c=relaxed/simple;
	bh=pwhInooQiLulA7TrXtTGQs7gcNaUBVnIznqNy0cHM5I=;
	h=To:Subject:From:Message-Id:Date; b=t51zbeoc1tArIdDKm/60S3C9afF3xJIwRIppMG/BUe96qiTQcdxSfkkiwxN54CZIIzDiSnfHZWNK6McI0mMYoArZ+v/CHADZd+N9JQKEzuJKdacKa0NGgoa/ze0pL45XZVSNPH2NX168mQ9Ld5wmeDZmorbT0LcZEDjXVchGpcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUOmwLI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUOmwLI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD72C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764550973;
	bh=pwhInooQiLulA7TrXtTGQs7gcNaUBVnIznqNy0cHM5I=;
	h=To:Subject:From:Date:From;
	b=EUOmwLI7yI1fThxjjSNBwSotBtlxJqOZCIR/h4PLmSYkTW4LbTcBReP6n1MRo7KQh
	 hr58ryU2hba+KRvCUb77TYWfX33COQpFHbXULjFeBmKMN4ZayNpWiQDkU4JnMpertM
	 zvyw4b8hh1Z+V6asWilD990XeS+5CfEydilpjBk75r02hzcy2UHhzhRJAVv2BC/2r6
	 AlQcXZiFIRcSlmt8vKJIenctsMxiDXxQpHMfiKSqM02jJl3gdQmXs6XWyjvE6be5JU
	 MBr0gLxVNEVDi4rf4vc0Wi7EAf0J4XQUFB9Ckrl/BNffikE8pV4/zNt6+vsDwLGq6E
	 Va/TOIVZHNTbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975D3CFD376
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455097358.5507.3901607638301372589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7c03bdcc84c1ff5ef56022dc9133ff6adfb4aa0ee902ccd805dc3e9804bd8e
Date: Mon, 01 Dec 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764550973
