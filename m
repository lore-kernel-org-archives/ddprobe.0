Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7EA523A
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719191543; cv=none; b=LXKHW7oRKB0MCRPeJy50o8PW+SUROX3nFPhBq7PNaGpBEwFWuWij9aU7N0ZBG0mdXeulJ0RHOIWw2VjVaoSgjQATnAgRLjyOJqpu5KQt74zSWCuarIQX4dB0nDTacDgxVZr6MQNhcoiFgkoscyXuvLd4EJrOoy4iuTjUdUQcftg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719191543; c=relaxed/simple;
	bh=KPlUMkKAxStnJ2Df/7/46j50OoPXEN+2DvpAXjmTeDE=;
	h=To:Subject:From:Message-Id:Date; b=nm/tyK3Ixlqqp6MdDo0qQsS8UlRb8sbWNTDDstFvuncUdXfoqOMHYESNuR/plBhXEDtCWNsoufJ6cFwq8biE2hkkMpvmHnxaKG6gCp+R9cpXmqLCJzUgGBIjwvGyltfZlor7CFFhreMPdnc451TCiWImZqGlazpP5e+j2fZ1xMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYC32l0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYC32l0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9187C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719191542;
	bh=KPlUMkKAxStnJ2Df/7/46j50OoPXEN+2DvpAXjmTeDE=;
	h=To:Subject:From:Date:From;
	b=KYC32l0qYOzGB1Lr9WX2dwL6qwAxeaG+G25Fr2FIPWpy5jHEkoZc90ihqVxdgfJgZ
	 k9wmHDs3Ak9xhCBRXTOwa3ObBo5CWOBLj9ydAGIUvT95m1nAQ/vNjcGsPlq+jUHasn
	 5TzaOF/gaUyllT0BBNg5H1LUPtU+egZSfCEn9H+Uq0SRnOzCmBL7N1rLYFk07jEAfX
	 ea+fMZ22owZAvbavUJ7natIJrh8NCoSlRVlk4Yw88EODGMe6no5h8IIZof7dbf+ZeC
	 p4SkhZHNxQT4et6+HWDOgw6TJ0gmvWQDPK/uQlJgKO2VJZSgXkM7WR8FakWiZDkctK
	 gi1UVaCd6qp7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A45C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171919154278.11511.16349187116426233013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c243aa172054b8975dcd8176c0d5739c7493eac2629777fa365ef7b088248c47
Date: Mon, 24 Jun 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719191542
