Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14ABF28F8
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711780097; cv=none; b=U9WcqUVTI4PSbcteK5nVMAu0LOg+H4iLqtcpSPXM0LaF10acli5XN9q4NrK/I+f3203lwdPu3/ZWLlgaVJX1mwKX4yKN3kDf/Uba2i36lVvPnDcm+rtkAlgfCv7AgCkYQUxTFq17poG+o/p+lJxyek257nM8GM7WXA3HnTM0ffo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711780097; c=relaxed/simple;
	bh=MEj2UR5Gfbw5pVvqjr/rHGyx2s0FKzW6wdC3oK8ror0=;
	h=To:Subject:From:Message-Id:Date; b=SoPRa01LpbNppjriIzru9reBnbRw4XgdEJsuKUAbp+fdorfKiPjW8wfIL9EecMU9ihKdCYTUicyHJVAy3X+1BE0xhs4XrDFEY6O5oAkR00M7hZyEJ2i+7XospCKlGcMb505Z2v7rlqs+1iBiULtVDf/jb/t9qIqW5RE9XfxD1zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ShScb9rv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShScb9rv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1F9C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711780096;
	bh=MEj2UR5Gfbw5pVvqjr/rHGyx2s0FKzW6wdC3oK8ror0=;
	h=To:Subject:From:Date:From;
	b=ShScb9rvCQnFPQlfnksbdg/HhcxARu6s8cbbjyO8F1ALM+r6xiiqTCEiHCIE1k5KJ
	 jooTqbV1eaMZj+OZf2NVgB/DjAbD02J3Cz/S3cxvmlyMGyUTEnXLdpP7Pc3hJsNna+
	 Nv/EH6iVgqGkeKuXKAmnz66WPuIf1rV+QZupUfOjPmJhEs8/SoLd8eeWMIZl4eU2Pb
	 e7SWVtLcfBnrZF7UVXcrtC184A8Jdq5pFJ3mYEgdiRXK9hbIziFIdRUV8d2J38nvaf
	 2qTensTaza2y+Kidby98+DCG54ySTB1Jib3C9sfwR5Ci4VUsydbXpMpwWw3ir3FpxP
	 8C4p5tVw7YQYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CC2C47DD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171178009638.10053.15077736635431668973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39be4531bd205573289da7321c5c5d2197a5802e2dc1a327657ed8d3b9c63793
Date: Sat, 30 Mar 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711780096
