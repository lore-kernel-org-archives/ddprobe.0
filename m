Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFCF1876
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722689754; cv=none; b=k6Loj9fu8z+yWDt/0PkKef/qBUvIetOgIFugo+T2iiji9vfsyEYm5AaATzqSzoHY3N0ynAHvHqeyfxChwqNzTlGL8Wg8Fj+IZQASuvnAsTWGV7Dn8vqc3MESIZtRDcgQucBO9ZaS5i3EkfIOoRGnFovxjQY8KIQF11yyNl68sGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722689754; c=relaxed/simple;
	bh=lYU+WQ2ndvyEsPOJJlkdrh1FfjCIo4TGhWBN6fjdh7Y=;
	h=To:Subject:From:Message-Id:Date; b=bSB/srpmNwAWV1HnAellJvVmz09qeKtOxkvWzSXxN9lyjVt4Y3ToxKR+Is08swpJzTGM6b52QYpWP9kOvBYSLyyQ7erdnyRlC6HvFyfpL37R0mYRp2DFnLch/mHqXmaEYkrlQY2TBb0aqkdURPd2/qEigwyv/30pVi1k3Ed3jZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqrcRUV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqrcRUV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C338FC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722689753;
	bh=lYU+WQ2ndvyEsPOJJlkdrh1FfjCIo4TGhWBN6fjdh7Y=;
	h=To:Subject:From:Date:From;
	b=gqrcRUV/09bbcRPKteeNPxDj5NG4rP9hyMei9CiZxil/E6AHGrYEpf+2ZWFMPHQqa
	 wCT16jyyvEdkhOLt5eZvT6+EBQJGNwFSoqqQU06zV20OTgkHSgnxQIHg7evPqQsGtC
	 QuVS0rWxioewaXIkXYetLV1kRAqYU/1a70IfEq1t0+ot9eMtfIB+3rBfOPqxSmHZWw
	 MUQJ3CxC2yGUqLX3ZNaWsnSBw8L50CA3xZsVplT1AJG/ZZYpu60GkGPGrr5tAhWfLL
	 ni7TH9yC2VgNhevgbwx7D1GoMVavLRS0SzfKIlB+mTNNyfXnJBMC4nwmdYlYgYlY0h
	 rbGNBpRRci59w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF19BC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172268975365.8224.11287440992858183039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5620665da28b59cbdfee687a702b0d14792f418b76339dac2b07fc108c7319d
Date: Sat, 03 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722689753
