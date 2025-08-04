Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E303A920
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754336994; cv=none; b=OMpJKwssMbxiddPMmHmBHqQA2J7fyhP6Bzt4Y9XiFWQtQ/+pE8j77/WG5BBQav+ru6GmORC8Wrp4oTHj/z37b4HAd/meyUkqIwlyOVwt7ZlkI7k6UloZDchvQzNNBRD8KHfX4YcuHdiFySzXp7bkuOCgijGfM8703CRE/AyFNc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754336994; c=relaxed/simple;
	bh=YWDbwdqBFot4nDJewrx/nuczX83JAfMCkKs+VJXFuxE=;
	h=To:Subject:From:Message-Id:Date; b=Pt+v2TegK5MK6mdJNhtSHXYQoZxEzldRAowlmVcHgqhR9hIifM9/RzzsutXcdXrWLabxiwCFfWydyuJL0M72Rrh4IVXqCvRa6CN9bg8cok7wEhLQ1TJZhbg+P98pr+SYkgbLxFErayjmhxneQZdEysYUFcyyWOqR7+OSAaCdNEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFfMerC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFfMerC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A102AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754336993;
	bh=YWDbwdqBFot4nDJewrx/nuczX83JAfMCkKs+VJXFuxE=;
	h=To:Subject:From:Date:From;
	b=eFfMerC0ULT48YQWAgrtyE88k51cyTrvBanaCztZnhcVe0jcZWey3FZ9q8FABv3EO
	 yGGoqVHVkT+8aDKIEyGobLm45hlatafp4GdTcteCkcBmn+AajdSTI9G1xSC2agOBps
	 6WDMyALmidbspLkhIiZbtdnoSo2mwwr39eD8HImIdiFfpCAy5ggcFBu+AFI2xcwf9u
	 g+yWETh2EooTkN3vlkENWGN+2mvryGhHCi9/Sk1Vr/3TNFAITdS0IImuSQD055GeVt
	 3LEM5twpgNwaoAy6DihIWwrVX1ftIL+tqc51eKmuiEq/+YpynrqRuehU5oYC7X5NVX
	 JCmfZ6rZ7Y1lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB5CC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433699357.13050.14329365925381733589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660bba2dee10f9a89719515b0ee34736b281db968c1032e72dc980e357d7ca83
Date: Mon, 04 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754336993
