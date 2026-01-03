Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16064255E34
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767417234; cv=none; b=S3hpz6vu+HBWQ2Opc7u8Lj4DwTWXN7PNK1mAzWnDHeNMiDS7c4EAL5KhimnQvvLJ4ZyvYx7tji6+JfukckA0otGJSnX2Ex2i3CTGc8ggTRi7FPuYWTNyBo5Tr3UJ8IhftMrHXpt1yuyOMLRFfNHrEE6+q+amivJtmCNBjHZn36g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767417234; c=relaxed/simple;
	bh=hrbFUZfm3x/HxCxWtVFb98cveKEkYfdpsvMoFm/fDa4=;
	h=To:Subject:From:Message-Id:Date; b=K6qxfEjx7Pmtyl3M6BSGZafywno8TPHhL1zNRc93KxXJRY4Ord7PxEB/6VewBb9WGVWTm/Z7Py9GguLcHhOuDBIN1DVtDe+B/KvRVlevCAf+QBS0mr9U+29KyUkXKYDy7OIog0Btca8yZKY9kM03yoWl3sb9BOFzgxjLO/gQuNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cw/I8SYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cw/I8SYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EB9C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767417233;
	bh=hrbFUZfm3x/HxCxWtVFb98cveKEkYfdpsvMoFm/fDa4=;
	h=To:Subject:From:Date:From;
	b=cw/I8SYoyJ0h0rOkM7fAFyvVAIOUW6PeuXUO8Ealhdd0bZXnxbBkCy9hReqPBNUnu
	 MDmsRJrkJa9fZWQQXj6Ua9+N4lK4U13lfkafoqUYwBXBF3RPWVwMPlhgtXKcj+/Xbw
	 zDjW/dL6oI2WxV4wj/ECWw/j0Oy2Od9c1KD6S4bma9fflJqLY6p/sjbENSGUazHsz7
	 vVLdV0vXLTji2rLWP9FAkPQpPszsZvOqYmOTVnKiPu8AZCsGT2d05HqSg6ImsTCzqj
	 HwCu8i5lpCe7Idro/+KiZEr4FV5BMbrKMNmAF2f4qopgiz+/0leaGnpKAK5S21u7mE
	 fQlh34EO7j9nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96976FC6160
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741723358.12230.10116888280268000499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255f07200982d6b2166ed99261bc8995a7838be2cea08a34f99bac45b2a563f6
Date: Sat, 03 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767417233
