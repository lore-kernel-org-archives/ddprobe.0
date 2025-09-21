Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132B31F92A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758458995; cv=none; b=lKWTEX18N8HtYGLhF2qCTvV+YzRusqOcT6QeoyWPUNZUOR1KlmuHi3rFPfEKjSNI+mfgwNBWtkREBc7OegDRd3R1a7ZSXbVvfyiZr15KvvqWyDc1l1eER6Rp/T4KX7+HebONa6NRwTRPQSlsV5RBOg3eihiCrun2SUNEJV5yLu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758458995; c=relaxed/simple;
	bh=8HCZ3wDxZ5X0l8umEINBsnCRQjcQYBC/ZK0S4ZN9yHs=;
	h=To:Subject:From:Message-Id:Date; b=jvwHbUQURguWZSXn5GQjl89b2Cn4f12LtyXoc2K3S3f11xfxtm0EsuC4vVziMDnxpNoAyBdT/5zCBQG0NojYcx6uDTfsyuE0YNn2fd9029mi7JRgKdlXgKFDSouqCxSaGuiN2+ShcNSsumx3SDmc8l2t/dXOF2oz5emWz5aISzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJH+iy53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJH+iy53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2609C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758458993;
	bh=8HCZ3wDxZ5X0l8umEINBsnCRQjcQYBC/ZK0S4ZN9yHs=;
	h=To:Subject:From:Date:From;
	b=gJH+iy53/tn9ijNn8D72A4XykJkcON9sIX8e4YiNWPRJGNRlAdHz3VcfkOaBHyu3e
	 KDvanFufoUPVUsINUuLtWYxrqPC2dFDbWU9TY+x7gy+X34bbqsus7xMMnXf3hFmAfj
	 oz5l62dK2oVPtm8xC7dbpKjVYnajF9aLu3XPZKZytnK41zqoSqSHF973ZrTtXMpAP0
	 ADiOgKHmBMlLoz334idhYLn+uFYF7LjHFxSgBfBo5cqQ6vbEKjN8NyBFPSVYmyBGDb
	 C1uAMR1E2DXHnnjtBQ9G/kNdOEmM7611WUB9y5NqrTrGjQlbW5s0iomdyFAZupA8J8
	 9YuIUaZ62JtYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C04CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845899357.1770.13889931039172211383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61487bebe23bff16b2b5e6de9b9cb56345e52914aa544977bedc6f1e913b3b3e
Date: Sun, 21 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758458993
