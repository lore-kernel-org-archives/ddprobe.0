Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5B7212B39
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743151194; cv=none; b=s+Eh8+qPP5Iv0SzJHeK9rP6wtUu9x0CYCVM3CZpx8yq7Mot/rl7NVn+nSgvHh+ShaJ5Ol/W/cfH8sZaoEBlxsoATKhvb1A8uoQYkC4JXB0OzNMGIjVXBc+KZECoDnwxFJVtsk6sU2hR3iV5BtAS0vbdhnojc8Cx22fvTMt8jec0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743151194; c=relaxed/simple;
	bh=nsbDMMfcrOcLOV/72Lcv+yWrvIppvp4f3KSYxDy79ww=;
	h=To:Subject:From:Message-Id:Date; b=ZmkA0gffyOI17k1CaM40sUZuXlE5QhE/ULh38opfyjuZPUd+LZ5+H6N/olINqFax7EWpzn+l2CWgL19l1DOHXp0D4uhXIz83U0DPEYaTSdyooKGFOFE6V1o8bl6jyDWgSs2ouST/Tr3QvB/32Ajp8aA9xMaC5WYtct6b/V9wV6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+u3cnyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+u3cnyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05ECC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743151193;
	bh=nsbDMMfcrOcLOV/72Lcv+yWrvIppvp4f3KSYxDy79ww=;
	h=To:Subject:From:Date:From;
	b=M+u3cnytiAEOyQCq8KCTvElSSNtMh5JgiaoKhHnnaIoY+o2a1PdeB28+QW31plKLx
	 n8jgWuBRwcwH3jt70lRaF9vycglphn8d3OIh0FHapmXM/weyEn3DnWJ4EiG/gdwl/K
	 u4Olepot5zDrDftzoUo53/bRGggIB8RgmctBaprjsS8aNfmx9447zJKZqqwgwR/pbs
	 7q7lsQMNKCFovJNT2e0fCpWfxFd3iXABvbQVjSQvQi3POaiuLB+W4WZkW3HU7dVv9F
	 7UwEcKvHljDa2CXymB79ZRCf6cVQQ8YP4rVGYQtROiO7o6gzQOFFSFu7b7dRgkHEiT
	 EyK3zRwvn1IAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02DFC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315119364.28298.1018704395576999915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a993b9f883ed16d8cb2d36884f7cc22b8db9b1bcc6e65839042fd4a88d406b
Date: Fri, 28 Mar 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743151193
