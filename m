Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC692907
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748718594; cv=none; b=UKQoDZDANHSjNSPOYlkq6YQh2jFyagkR2IDAn7arYgLZCmO5V1RfBioRa3Pmc57S8Sz5dJAdkOg/Emn1BATMMiYFqc+YfmbRyf7rkWDFj7P+AWavkIBtEfjQtrNgyJDJBEgA1WcAVHfQFXxpwtFXPHpTRix1aGBaAp+RpCwrHSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748718594; c=relaxed/simple;
	bh=2jaZ+vpdqJiQyiaik9nuWtUwAcFES3Xv6rxK2ABWh5o=;
	h=To:Subject:From:Message-Id:Date; b=tv+1OTjHuX/t2LFb+cr+DoXbR5lK/K18JTeMxTdYlrXsVI61uML2afDIjar9lINcinu2SVdtsigw/O3fS3FjSUk7Mj08afOA2Lu55EIDOt9yN1XzqRGasSQ+bmQzBDQEamWiTvfLdb5gkwlEapaLbhYSlVDgqMvHHRIiPQ27F7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B23ak8Jz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B23ak8Jz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB095C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748718593;
	bh=2jaZ+vpdqJiQyiaik9nuWtUwAcFES3Xv6rxK2ABWh5o=;
	h=To:Subject:From:Date:From;
	b=B23ak8JzRCkJ9yRT6ElGiN8/y4Zz0I4bT2GmW6yBL5CyKaIL6NZc4otp8gE+UpO0y
	 tDkWhpMQUUL3mgiulh32kN2ebrzMHh7HsOZsp978IDibDSOv5T2LhTMqXdFnjugGql
	 PFqvoja+KxBpge882ZhQZZvG9sZag1aWle4+JKDAXKaaWvryYne8xp+511u5FrUjG/
	 4MjShXZqegFCuDWNhvsN5VHc5m8L/NGgQExH/HPijD1iJJXWFFO0VTSHf1RlpW37a7
	 XHMAI/0DFOutop7Z5OXQlJ2CCqvsyzNiPiS5JRXxInMkx41rmOJ1BWtQIgod7RwCz/
	 9N8vPd4GY0dig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CCCC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871859358.10965.4826138953484668228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96575bccd32cf33bbc417cdf02712183a0effc5ac641390a5ba4bd6996a63f4
Date: Sat, 31 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748718593
