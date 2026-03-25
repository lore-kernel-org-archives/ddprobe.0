Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2576D27F18B
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774423494; cv=none; b=grTf5jrq3gm1K1y8SiYd3/cvEWW/eorPJVEwFKbsk/LZs8ged922B62pTUgYhfHuberR80YPQ+Mvs4alJ+hgrlECyh8quWhzKPq3vl3wEmE2jYGtQLOLTGyflpfodyDFOUskb4nMzBnsOWqae5DS7GjjjjPW+7dTMmo8VZnRPDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774423494; c=relaxed/simple;
	bh=N0RE3ijOAayssL4wYwNiuDR0xEWCMEKurW08fOJp4XI=;
	h=To:Subject:From:Message-Id:Date; b=LL9KRGg79IE3dRcN2IJ21NpcjxEoNaI3Ip79V/PWZZ+y9w/SkfUb1YJ23OBQqNungfVWrM6R3aQ9NEZRcWLTzv1oON4mRl/fmgGv0bVcqzPJR3bss+SuAh/IpZ8FVAGTSTjs31IGgyRf+0elQC+93cVJGtdW8HuMBYUEQDjppm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrLoSyJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrLoSyJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FC1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774423493;
	bh=N0RE3ijOAayssL4wYwNiuDR0xEWCMEKurW08fOJp4XI=;
	h=To:Subject:From:Date:From;
	b=KrLoSyJjU2bUmtClxY0k4bBaCduUrydGoBUo3WjXyrrC4ch3jl+wZJG2vmRu4XTb/
	 wC7nXuGA52phyu23TaHQsyLojjVH8929rLYluxgAW17Aww24DgtaNdMFDEJydzvBHO
	 IYadNBBpYdUgIZ+WCe0+l7U8uRNr9ubx1MqthpnOxudTLRWecDx0gpjvlvNDbC2Sn6
	 0oImKQo7VJhAZJnlnaxHUA9n4HS5jxUZ32vEeCe7jRRztFTeGv3ID/0mR8SHFi3wXz
	 HR9C0ec5Zshm++3SSuSKGPmqd0r+AlbPkH/kL5cL2aLNwX8fbFjK9pSh33W51hOGWu
	 pKahGGHMDJdSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95362FEA822
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442349360.7677.14558241376249391236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88aee0a85a832bb203d4f10003635334695d1acd0e7ed07f1c6e0903a3fdb930
Date: Wed, 25 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774423493
