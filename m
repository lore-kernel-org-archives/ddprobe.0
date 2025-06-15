Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C0AD53C
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749948594; cv=none; b=jp5qZRiziRdFBbkCZdEdR/L2Cblo/utLJUTjGHxu5MqBMDArlCtYymsKNkV/XBOG2THrRxNAyAX7EZEPZ2DCA8BGyrEA634XEb88o10oFnwhGx3qsMUlc4uXv+UcPmLnzaOV2j8c3lSgpYMgiziYrbStb1owqHsx1sA/2mvrpb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749948594; c=relaxed/simple;
	bh=pYI8+Bjwj///iKIRkCaIy4SUP8ciVsjYhRzxKq/KvYw=;
	h=To:Subject:From:Message-Id:Date; b=R7AvnVk9AUhv6UvAEkGeWR63eGBCiR4W1xOvchCsluCKSV+mphj7M+l49lXkZQhhTp1g9G3NLyTqbyX9iZWLkJ5I6GlblFHSqfyPj/RZVOigxUJ7kV7IFMOC5gRtKZwMNut0vMP4aqRHwf0cg49OiLWcFezs6heBLOmrYKdhk9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0/uz/qm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0/uz/qm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B476AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749948593;
	bh=pYI8+Bjwj///iKIRkCaIy4SUP8ciVsjYhRzxKq/KvYw=;
	h=To:Subject:From:Date:From;
	b=Z0/uz/qmvEm4ba78cVNoDjP1DFKke7VligfrT48g/4CyvWt22TV/AE2iVgTtaKdFy
	 Cl6Ce9ZFZoHd+OACzDcdOn3LX6YKZ3bJ3MIBkHIv1nl0IZrpeseVHwCw+dr+RiDTqX
	 7cHXwt4oVGuJepOirrdFc5aQzoWAfZhotDvas8I2rD57IJUjtMSrhhHqjqB4KqYPuv
	 wFV0/OUV8BlAVymVxwawpjkuSSSclzel1XbMxmyO+G21g8lMN87pMAklKAmsRSTT8T
	 199SvYHUvjGBTRJx9a5ShsxVTxP96qvnWYvogzxBj4PJgf+61sPn+xvpb8UqXNmBVz
	 l0Y9BPka9dQNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9782FC71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994859358.26856.9171551320438167580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0e8531e8bd6aa67cfa26f5346f6701b97ccca9a68b27409e79261bf1e9b309
Date: Sun, 15 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749948593
