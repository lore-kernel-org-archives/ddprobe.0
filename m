Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5227F1D6194
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743269994; cv=none; b=A8ColHlATjYZ4g2eTMU833AD6g/jT9J+CLKzjm1jEyhLdC2De34v1dgJhp6AVU6kA5fKZp/OWuICgObHBPaGiCG8U4F2yAkCMAU3cNhnbXIWa983O94Mwtfi5PzJ1AXsNKuvn6TtjLJEXOIi8cH2Z+2AA++ZYXtf9fZ6C2g4ihQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743269994; c=relaxed/simple;
	bh=dYGakuTVjlQCBikCqIoN5jcKT0jZVg4SqfWl7D719i0=;
	h=To:Subject:From:Message-Id:Date; b=jFY+7IK8bj1oR5JFM23g9CcMOHu9jj2achKQa/38tZ4aStynas4GvV558AVCryJ0KdqH6Ms09ZYg7GTqYM1QwDVnUjMmTJ2/Zfu+qjYU5ZmzDQIBzcv4/NlfIlC0xdcr1RlGAwwKdOl8TfI/TOyALkBCDQt53C7DOSXaHM9skE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDWODa62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDWODa62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A00C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743269993;
	bh=dYGakuTVjlQCBikCqIoN5jcKT0jZVg4SqfWl7D719i0=;
	h=To:Subject:From:Date:From;
	b=uDWODa62V3q713KKcW54269z+PIYOZz6kGStB6LHy7saJoHu9h9jYwkZmMM+UbXkc
	 iSaIZF4SAe/ZQfbNizZ7mQiBdaRKNasJxAx4kc+NYoHh+CTQRzTUbpcerM8TOjpydi
	 ePSMeS9MmU7O85OphocfyY9BxuWYEYa4Gka6eYfkyllNHPE5dZkTk36bkWIekuCG/1
	 4clURZdkR3Ri+uKaUPhBiV0aRBKIGVtBo1t8HZHBGxiSnR8kJXVAv6ZxM0PNR8rFng
	 lk7pweBXgI/F8M8UA4FP66ym7i3hd1elmjBUxF3QLVv3fhVxPnYdOL3nSnlrM8xTPa
	 Of+wj3kP+zSuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8BBC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326999361.31365.6727227493100808081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db190910fef89be097e3bff18dca06d0ae026abf3216bc9015e49c56d83b21f
Date: Sat, 29 Mar 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743269993
