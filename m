Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E878323A58F
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741365534; cv=none; b=rH7qXJpUm/RdBmpC1kzISEBcud3lk/rIJQ/bzYoHGKzhBXe+K07zNX0FKNvS5fg5e5KPXWEzkLgpm7aTkaD3l+JvZ0svJ4Z+5M4aHpSEO5PXSmzHHt3KmBh6TFTVpRtGz/tvOVSOD7NDHpCdikd68ZWZiTGwdsbikUlql2v3t0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741365534; c=relaxed/simple;
	bh=2t9wEl7QVW6OzpGjrhWxYAj02eHHuSP1E0Yr0amwNJ4=;
	h=To:Subject:From:Message-Id:Date; b=ZSPea9buOEtig78182FQFmOSlvigaNi9LaAOJbikrcBPWI9kHdTqEywVIGjFX7tW+3E4JG8eaks8korbZpI9sRjQ1LVpIjyzAF8ZOSuc9zyqvZowE0JkiaxYLmBlr/tN5WEnzDDvUgLfJmLu13hsUBRSpTdRTTCg9xX65zuAJS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khIb9vnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khIb9vnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3892C4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741365533;
	bh=2t9wEl7QVW6OzpGjrhWxYAj02eHHuSP1E0Yr0amwNJ4=;
	h=To:Subject:From:Date:From;
	b=khIb9vnQOX0SOmAMeYIC2CIUdrIMMXFNs3fGdQpJghVXHtawjJCVy3kzP3KzFrvPJ
	 vRwr+9gjPf2KjU2B0zCGZTikqe6uf+hYBCEClm27yGUVPvbLAdsbvTrqqnPO+M77om
	 BeHD4YzxqzpzN/VunujtkSfOib/iYPTPoU5ynzDP/B3jLBLHEpAIzQjKkZhLD13lNG
	 +4/iM/JjSRXQGVB2nnf8DEmGnelpj9vTlJOxjFZqxSdE6GQpOmET95mEeFL5SclvsL
	 R/OhScxJBsc0TqeXyub8246v4dRo5OFyjARkMQYwmnOlYnURQgBOnarEnrCzE92VJn
	 FO2oOoZ+N5UhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DADC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174136553361.30640.8303614296715409863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9605e6cb48d37db174d87b5437f87a39608e89ab443465413a3381ce26b8f0a9
Date: Fri, 07 Mar 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741365533
