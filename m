Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EB8249F9
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756253994; cv=none; b=fNsZdTvonFBz4zK56Fodcxr7OSIQjmVYc4s8Zaop5Jrf5aHPei2d1uJnmFyXQUV2TFeiA4LjlsaG4QlSawOzERAzOeY3mS5kvoOVYfSQd2UfR2drOUmrDBNQCUkMVOMN/7jXoi49HdqpCK5/ynb/4GxRU1Nx1g3YZO9wrfjqPgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756253994; c=relaxed/simple;
	bh=0BcB1Uhfm7ztBiGO6yUHiJWrkz9DcwSHD+LDFmMJeCY=;
	h=To:Subject:From:Message-Id:Date; b=XdFz6AV163RsmzG6qb/CDQ+na+cTofP8D5YkqYd1rQ9RqVom8ovytXYUQbPc17nvZywgQPDNxIIRZksdgt70X2XAwscEh8lJAWvB3qzpgJJIzp5EkqF9J56UdWgbcSx9jfSlTYUeZTr283N3CVZY5eCIRDoaCe0AjEJI99vBCq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iORN87u0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iORN87u0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00BDC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756253993;
	bh=0BcB1Uhfm7ztBiGO6yUHiJWrkz9DcwSHD+LDFmMJeCY=;
	h=To:Subject:From:Date:From;
	b=iORN87u0D+wQZCYdLRYivmX8Y43H8IMk0icyV2NYiZqLo2Agw131lDwnAWx6U2Vvq
	 BsxKwSX3tyAlMk04xSGfzUYo9GKAnA3eICHniu0zFjFbpfLxIrWv/S2LYECuyqpmqJ
	 d99ego9FpJFsL9XjXrKOf4LMj56+U8Tdewie6DODQQjCQRSVHEYOIxfpWKOcP3+0DJ
	 ZDxyZcfGoGKKo8JhdS5aHaaqY1UZkQppkbjLwozYq1SQHih2KgDTfh1nLQPvbXnyy0
	 /9FmBGICjYm1dtDm53iLXU3n625UYn5zz8ABe6l1mieh4ZV2yAONJi0lT0kLDhpD2v
	 jfZIZL2k9OnSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E8CA0FF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625399357.17810.10402107260321495033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d154d94c451b40d8d60449c2539e69e9fd640eb7d69024217f2bd6c03c0949c8
Date: Wed, 27 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756253993
