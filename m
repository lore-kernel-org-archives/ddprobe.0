Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5EB43179
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732967754; cv=none; b=PtczLBfBqDibZzeLl+WhdvbF/LtzuzrVpOOu8T1pnVUQ8VbycN3GNSFITvXfzLwov12Lu5E+KANbK8dWsznyqyJH2lUqKPD+fckKVlQJ5YuEYCIWp0A6opCBm91ClSaPS7i2mKcg4PZFn1m7v8lZSLxjyJ/ZjQgS4mXkUzeAGFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732967754; c=relaxed/simple;
	bh=+YfjToKmBIB5X/vgJ2riHee1otGrQAEOXutGZxzmdm8=;
	h=To:Subject:From:Message-Id:Date; b=UTSEMF7Q6ihancGYm+HTbPgpQ+F3kBUp8t1nBDHxKhuXmRzwSkwEl5tQLyUcoX0PVwmqtU0tl00t62YkguC6rCgIHoEg3JjlgrzSc8PVvXkNuJ07J1rnF0selLqQdlc0PNfimqFm5+eosCU4ck6vxqXSHLg+NTu2xGzOI0TvOQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPNrJPDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPNrJPDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81EEC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732967753;
	bh=+YfjToKmBIB5X/vgJ2riHee1otGrQAEOXutGZxzmdm8=;
	h=To:Subject:From:Date:From;
	b=WPNrJPDHV80O02sPqMqGYlVgUyT2exhX0EL6yGvGXdCDsjOCqiIO3FUKAcadKGZvd
	 qGFCUZi0oVR3dnm2g/W1aUEgfvpF4hns5m95fspitj18cGxNETRx/BJfQ3HCGw/Sbx
	 jfkWrEoR4FSrcFP4pvUBSGJgMxy5pctEoYz+p8PBg8p06l1blI5N8DioTXv/o4NG4P
	 FfivhF+JAayCTTMMFZlW9UNBfmyKU8tbKHh5dq5IpAPWV3E92ZGwRX36IVY56MkD0N
	 quigOnTGrUUHDc3mKqf+s+nr8HlQfj2q1ycBxgZKbp2oid9vARUKUJxfyoD7VUjqx5
	 0ukS3FNOygYXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969ADD735FE
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296775360.8965.16571734988286980790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1177ef38c397be7d19c439b499ed0d185c2eb3d468e29d3318dd471a495f85
Date: Sat, 30 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732967753
