Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F592BD58F
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750247993; cv=none; b=JP4qY5DEqzxR9jZzh457S60ZzHq7jEwkpKIO1nNcDgtFcOUg8cYrc43Zi+cGqbd4U74S7n2cXomViMuDB9UQKWm3V+MHGyx7+H4AIPOz2k0O5P8QNaXU9bE7Tj13EN5C904HsC3p1rNjo3G2Xg05eDvgpoLP0VDsP4J5VMD3iyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750247993; c=relaxed/simple;
	bh=iKyNmJDsiHIpY5bpiS3ymWV9mkkkYM1FKZHCAO2rC2g=;
	h=To:Subject:From:Message-Id:Date; b=SWhrXNEGaMy1nDKyUeVtiHFeQQmEhiLCH8lET+DumvlhjBAkQ07IbGRb5ZWX6Elqv/lAeaqx1pGFGrJIUorcaUUIU2b2J6SDrun5eKei9Q4qUrMCGBYwmx7vrgvZPvWQk3+1bWkeZUqtFa8mg1Wz5Us8JwPej+ioae1zz1UdRZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITAc805k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITAc805k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15AEC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750247993;
	bh=iKyNmJDsiHIpY5bpiS3ymWV9mkkkYM1FKZHCAO2rC2g=;
	h=To:Subject:From:Date:From;
	b=ITAc805kBY7wyTOT/Sgg2Qy38nHnncsNzV1e3qEXwaHg0MoJ3ik98ch9UOngxK+cv
	 DMaB+JVrqUuSsgvsBS0Mzf0u/wyh+3PerDNKpBw5i/rRVeX/ax8kkYQ/FvSa/9L7QM
	 yw9EVjX8WbzjHbxkEXU06PdnVi+l6rF9cK9Yez+Eac14ahiAVsMSzX42caQhq5PFLa
	 ZGfOyLTZfwO6CA+42GH+pB7sQhS9ng6FMz7fT5cCvkt8xaxoRCbYouB9l4TiaSBhXo
	 0iHNehTAfB18jKjEkFE+m+3tryjmPm4bTQeoce8DiCURifgPTUyyl4fyaVt/Qom5hI
	 tv3OVeq+qTcWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F19C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024799358.10905.10454062621038449291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca9179dabace1a4da31a1d90dfc7481931c6d1fe3939ac05581d5a9f0e8872a
Date: Wed, 18 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750247993
