Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5411D149E17
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756255194; cv=none; b=Zixqo90V/oo8jncP7MHAdWCgKQLHLuzYa/jbY+n23JtMnJ5UDMEBo4sF4K7PnyITCb7P0qOABhh3fPcmfOaHNu4+/+7W7I0WIaAqNIiat7jY0VtQo1ixKMY54rnk0VSW2JKJFXIuiPRioyxZ/NWZdrN1iuqYom3ha7gTAWmX7aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756255194; c=relaxed/simple;
	bh=0gHPl6nZ0EyuHsksoWYHs383YVcJzAzaA43E5RXZe10=;
	h=To:Subject:From:Message-Id:Date; b=cKYK48omOhdRkPDuxkIzuzi+zZou2KO0AhiDTD8a214aAAPGZu11k1I6o7DeF5QuCg2sn1togytmY7GyyzmOGyZ62CGvEvDCJVUh4kzfBDUU0JWiWNi9lExuyqBUMFbJmZ7p7WSBGa1KNXn3yPOlo7gI+akzP/a4w5fYtum80pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syjRYb0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syjRYb0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8652C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756255193;
	bh=0gHPl6nZ0EyuHsksoWYHs383YVcJzAzaA43E5RXZe10=;
	h=To:Subject:From:Date:From;
	b=syjRYb0KPzyilh2i6XA53aFwDXWv8x2jKyvApYrOn+bZKGmqWEIvNp6teEcjOtOA5
	 KIrsu3a71v9Y5hC6zs/2guhOENmqrQOhbq0qjEHVG5fYg8b+SMmEyiRQi0KSEXk9cZ
	 bnwSfGFAK/e3UlfUS4heFsqY7kNYEg6uZdBzQiK3384sXV70Mfgc9z7ZT0gRhiItUb
	 i1l2i8FHgWLVKiPqhX9jLVOGtFLhfPFrpUHtCduvAAgBqI7VUToMJLyoIkpewamc4N
	 S04pswa33afc6jUJ3XhIZIpL0M+s+yhTTGjbEhrlQ7kHb2DYbgNSs9eLzR2+VXt8nY
	 PDBN3KjXveMAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945D7CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625519357.11860.12210824259749519045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b983075ee880698cb0074163d35ada06da54de8124b965225b05ed1dc29a12d
Date: Wed, 27 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756255193
