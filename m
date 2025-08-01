Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C66170805
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754009994; cv=none; b=RDsaEpUlmJMQ6d/Txa4l3q2DIUPt7OrtGS5o356uDb97f2AeVxz3AQqz0dZ4uVah0QoUcYX6/PgUp9KllavprfJpoU0IbKIFqnxxOJyqlZ2qkoOJCgwG9XYyHNf3gupEOKSf0hEYMF8tutSXs2ZKd3QI9HBhQ177Gbo1kHmuJWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754009994; c=relaxed/simple;
	bh=tsSt4DYZpFAyNVwmYUI11+HOQwOFZEauwFNWWVQg7YM=;
	h=To:Subject:From:Message-Id:Date; b=ULe7NScABNvHzalCNhkPjMn8IjRLZAhcLc5ngXKrwBZSD5pc/AviqTV4Btfq8K0VojNWQi9AFs68p0i71T1/emDRCiDCVQHhgOfeJ2mo/QXfwySVxahLSYH9veUwCxFBqkId+35G6VO9H51C6Kh5Cx/6qVerLrYpnvEYgMb8MjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPNBPUGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPNBPUGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F995C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754009993;
	bh=tsSt4DYZpFAyNVwmYUI11+HOQwOFZEauwFNWWVQg7YM=;
	h=To:Subject:From:Date:From;
	b=uPNBPUGRf3pdV21MUddIV2OcowIAj0KOTZZprPL1tYXImJF9f4D5k35rUQsYWTvxd
	 3YbTLua9v4wxVT5iM1nbpTkkrnIiuHjl0LkxNGyb8iHExZh+nGe9gx6uC2Qa9DG5tI
	 qWyWPMAwXCURFutYRuthXfug/IehaBNXOCFtyyX9FBk2BkHTM7S9H5mJaCwXAsbuNe
	 OyO88fu4QyYM4OJwQH6sD+w3RKHSJrk4pj9SObyzKk6fInDDWFLFFkTV2Eh2S4IMuc
	 Ylfei15aRRSnYmjzihAd3ZOoyH9yYH/thb1aFHwMPXBW27ODjYhB4Hc/rZ9aqduV22
	 +47YsQZIBksig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E816C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400999357.30566.16866948088778085174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca32609dd4c69e71448741e5f07dde74299e59394f435a411745bd839c66662
Date: Fri, 01 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754009993
