Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBB52DC799
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746122994; cv=none; b=LzkRnCBN2nClQwwSrW1fCevm2LFiJzODvojDdqOcqGJvb6JbJ8qE3mKxvT32wSeqJ+Y2ibEYKji2oseyj1wCbmbd4vXTA4d7A06f2rnV8yvCRYMN6NRl49uBhAnOCoVhkhfOrQpgMvzzoR2o5RoF+UCP+hmFj84AdS2dZ2jt8dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746122994; c=relaxed/simple;
	bh=JY2o0xBAMOfrWTIY754QMi1/bVSeTj0bel+uvoFJyN8=;
	h=To:Subject:From:Message-Id:Date; b=LD0k1pY8pdFmo01rKGJLQ+6zvK5V+iIZu+/FrCGgOUXP6i1lw3vfacs5D4fMS7k2Pe4JwENaOaWV4Oigkwb4HwIle8oJ2zQ9Goq43kW6BBiUkkO3SonKx4hYNwxh55BSWtKljSkAU7W2RuwaSYHIXCRC/FEqO+8L4oSf/SvxxRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDPirYiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDPirYiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A721BC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746122993;
	bh=JY2o0xBAMOfrWTIY754QMi1/bVSeTj0bel+uvoFJyN8=;
	h=To:Subject:From:Date:From;
	b=sDPirYiTZhFijYRa3m9iBcfOYUQLkA635UVdUgSL7vApF3pFyryc6jmzD+qAaG3qU
	 97S3gqLnEvTs9/p7kCXEkJ198sl/HxqnA/uicXtLLD1h952AZTwH3pVr7+P7YSstkv
	 x+ni04mXEjEqnYQuzwfHFLONybiJjVn3614vJqe4rBwMZEc5jTmfsgEqWQjuxUsDN4
	 KL7lxe007/8dJ+Ce1Rrl7RKQF73UbnoHwXCXwJ36XKrLSTBwEX2EaiEThquYi5T7gd
	 0sK56UZ8Qx4FsTJijeevLPuTpFAuy/EibVzY7wFE24K3KPeh5K3wx1IV03xZ6gE/Xn
	 x8FXNLFpHePMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C0AC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612299357.9949.6129443275130661722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4026dcf53b883483e477c6980d9856466178e55faa2344ee0317a05305ecbc89
Date: Thu, 01 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746122993
