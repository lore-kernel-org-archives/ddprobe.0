Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1DE2B9D2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 23:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721259923; cv=none; b=lp35fS7Cchj2PU0o/dXMii3Y/QDbuJfdY6Vii4pHOFumzZYdif9zBLGBdhVpQwZ7oZRTJMkUWGbNarOPBWe8bDq+FEnc4b+rr6jg8kgt8NcDS5qtKcAC0TxLx4z2njBjjcoyb8EVZErwGUbTyFuLwgGGAGj04Wuh3T1nbACDxfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721259923; c=relaxed/simple;
	bh=uB8Fy8Sdwkk/Ic3QbtGSGf+Lb/F8BSv7ni+HC1lIv9c=;
	h=To:Subject:From:Message-Id:Date; b=FeY//GFoFo66y1fV26bv4tkEP13Bpm6LOMeYmZ+AKpJTr94D72B9NLLK2Pac9Beqk301cWvV5y8Qe9wGWYj22BMHW4I4UgU8ltR1NVl5I0ctOzyB0JG7zETpLjK+7D87DlDTcxPDMgnEMA02KMO0SKIGTNTNaslpQI+511pHTcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZKZvjly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZKZvjly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC731C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 23:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721259922;
	bh=uB8Fy8Sdwkk/Ic3QbtGSGf+Lb/F8BSv7ni+HC1lIv9c=;
	h=To:Subject:From:Date:From;
	b=ZZKZvjlyIp62JIIOzsmwHqQG7O7AcySIg2ByRjt4DV5EohfYM3nsuFvKLmwfuzG3O
	 7e/VLjlP7IhzqyH882mWlV0OhkQoEGDdsEkThp7abw8LLVS33Iq6+wqnBJu2mOtRKq
	 RDjzXwl+8wJkUd3IhmqwZPhAJwK5IbwzmyQkJlrbP3TMKbJHZGBtfDTM5qzdhO7kHg
	 GGiR+aIjINw7+wjNvZOpNr9nsmC2AB7nGG1fiWB0EEvF5+FOaBHgkavrqUMF9zh5UY
	 uf7t2HRUL13oSdTqVt5/L3Ahpjs7jElTv1JZHSpnn0iXqz7e6CoO/7HM8121YaVe5L
	 MnRP/jhkIBCdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF653C3DA60
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 23:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172125992277.31726.2103204874800171095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc7e7409ba9b9ee579b3223becc27a2f13c5267d119abd88a025238b028fb7c
Date: Wed, 17 Jul 2024 23:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721259922
