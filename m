Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E58E515882
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790965834; cv=none; b=Nf9SkP0V8e5mEB40qk3xbFpE6tjVgcoKOnBd+V81bFFvnfCIJafKIIvzRU3GtA9vsDI7NsyKrQV6CEcwlbzfKTpkJ8kv/GRZlkupqYvmHQ5NlKFxwLUEoeknUdNo449rzMX7CUHX0fBPlAxqxhH6F52vgrdTr2TzpQYYjN1btxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790965834; c=relaxed/simple;
	bh=oIZfYxCvnoJMghWGVazvKDbmVw/bb3JhMDq7xZrIJyc=;
	h=To:Subject:From:Message-Id:Date; b=pwtth7sUTeIIojJJUJtOCi1zLZUX2+1DMre2m1I/9hADPNige0R6ptJ7LanJenOzbkDNkr1LkfdKcuai71V01Kij3uLV0FUG4edF2HixAvfFA//LirmSp6sD7kTIhWAVw+nNmV3boXH8hGVYyQO4LdxqZpnKeIzCuC1J4hMfCFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDYQ4nYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDYQ4nYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F23C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790965833;
	bh=oIZfYxCvnoJMghWGVazvKDbmVw/bb3JhMDq7xZrIJyc=;
	h=To:Subject:From:Date:From;
	b=LDYQ4nYrXOcmY0/euFuyIsSFIOTf1yIHbrt3qCKAiGRtVwjMOtyskolxDpzpqkcgH
	 zOFaw+3d4xGjxj5AmSF7lP5dveNxVdCuGLevaYd08ctUAld9CqU1nxQEF4SfLcGOv4
	 h2nIO77KHtRIXQqcdl+DUjQyKGsYVR9731ejZRm0LLMZhe1Cwc8M2J/+dd3F13Zp6p
	 VXF6nedWY6yL1+m7PvGSL1+yMnB+AszZ7Ne2ojoAWQ4SOZ3UNjHzEKuV3ZrVPgrTBX
	 5Oi0mEuSOnDj2bvH4i4b/FnCUyOB14SOZrkbscIDoXFeJEnCKDFQdSPahN4AEGn7L7
	 RldRt5dulvrTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9465CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096583368.17248.18084625565849688908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b588e081b479dad86e13f9a20c187ce1b7866bb0995edd18e22afec8650e331
Date: Fri, 02 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790965833
