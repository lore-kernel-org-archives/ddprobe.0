Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2166A29E11D
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764235974; cv=none; b=uA4cjxDWO/yYZiUlsqJojoB6odpiK3KkvHev6IAZzAx713nylQ7ahSCmYvL2ZFvGE6m1oy5Uloj2/nRN0s7Vz8WOGcqjwMltBiPQknX48LdWg92cx2vcxFY78tSoEYlM8n0+sgLYvLHVSwhmQ2GmfDBrfcD9KRf6xOUjeIhL8TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764235974; c=relaxed/simple;
	bh=kWYClRNZNFj8B8OTsq8979bpLqD7ohM6z7pDZiSXvn8=;
	h=To:Subject:From:Message-Id:Date; b=gc8ILJU2QzhYIGPMcHWmg39rKNVxoFtM3ORgBAeeUGN2f/Qrxr0f3YkHIJo9NR1TCQg7Snnhlk6g17v7PYcfZvhQH77NUVdbGDNLniDjcH/eQE/aNsL7j7KQ7vfBiUFxorQsIF9pHn5f5lxyzdlEgBUArivI0Ou9jLKLQTqrZwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azDg9Dy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azDg9Dy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A3CC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764235973;
	bh=kWYClRNZNFj8B8OTsq8979bpLqD7ohM6z7pDZiSXvn8=;
	h=To:Subject:From:Date:From;
	b=azDg9Dy2MNJ3VGGghpiI/pncNsENzXH6lpBm1DvuUaufKz/7UzGcGTQ9XWpamkz0/
	 AVA74v6iQxmXslQEt1MCWrodTIUy6OC2tafgyQIh6bc8Zeog/cYPkAklgpD71sDlMa
	 SGR9DGM6sPH0Kkv1Hjee4oRdTt5+LapVvKGrAEbfmtbmfUQpB2VrsA/yKiwZYd0ipt
	 V/MHSGYQ2RSQtit9jRIkddKVlYU/y/qFPjVzXqvOymXrW8NWVQWwTUY4kqmY55F8JV
	 DxtDmxw6LQYAOyFTUOwf01i0csB7ktLD7UT68iwvzYv0jmCPnL43QvCoerKFPDWO9D
	 88M/zxGP/OYGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95089CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423597359.25089.6933273405956094152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e0b8f09d1acc95021de9e0d6ded09959a79eda00ea45e8d92013e2fb9a9b46
Date: Thu, 27 Nov 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764235973
