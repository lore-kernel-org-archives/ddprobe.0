Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2687E9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746845394; cv=none; b=SGIFs6imTY0XoJ9mS7BxrhFRVQMRW/eYqmwZfZaK/gahDg3SwvKpuYF3lPNVV21VtwqE9UFadmTpe3bOQMji/sZYzcgOE8vqwHSa3uDclNTRB9rohCEzE69InXIzrpS8MFT6snu8oNoZA4K1rUdgnaYWgUlhXyNLdHTWHkXTEa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746845394; c=relaxed/simple;
	bh=7MI2r0vLY6aWsYk1bq6GELbVPhOMoyTLW1HrXaNSUmI=;
	h=To:Subject:From:Message-Id:Date; b=qJWcaoP6Z4Y8zWQKQoNY1FfXzNXmwB3pdyjXyzTTRwVQXuHQwMPCPOq9zEMETV+ya0smN4/vol2FNDHemMrltdCbezn6mq1EBKTPaezmGMqISs/61kkC3if7LW+2ioZYSBnXTu6eexaHHjkmZyQPeY4Oyqm9oRTijWO7pywJOmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8bku8DX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8bku8DX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C79C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746845393;
	bh=7MI2r0vLY6aWsYk1bq6GELbVPhOMoyTLW1HrXaNSUmI=;
	h=To:Subject:From:Date:From;
	b=r8bku8DXc6nRrUmTPwTUEePE5pvnQLhhVLbiXAXmUgBddPt3HC3BEmVESdwSowXgM
	 ncdbB/CJ4BLpixdgPn0QWg0EaKkwUfuoH1KqZ2eWCrpoO0aBi9b6xGCjyvfqM6HCHI
	 cZiAsCfWCNtJl7spqKm+T462sqr5I84o2Lp00upb3E7Rw23Ar+gAQljNPfg4HlJFd4
	 08b9lNsk9XjHDPOjO8jITP78PNQCRl5yzdwjmXXcN66nOedy4xyfgAY4DZqZq/gao+
	 hzY4efpj/9LOLM3pvEK6IKlLSVXLytPe1Sae4V1nXb0HSUzkb72jQLwOWlOK9eiE/z
	 HPg/enLPz6H2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953A0C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684539357.12741.1553172372780467702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd79e6e2deefd2970330d03cdb704f98fbadc7a9dceec37cff4f83189c7f3fea
Date: Sat, 10 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746845393
