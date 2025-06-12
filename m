Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039AB26D4E9
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749740394; cv=none; b=L8NuRaJtt3dUddGgdSxuFRRnGVmggOAHx3FbRNZNSQyj+kII6A8DoDuX0TNbO072SdyLDjQWHVdbJl1/qUMwKQOgY2hNWCIPcoEa6LEiwK2jjhk2XZ2atho2jPb8rqCoF4wTAF5H8mBZEYTVe3vxpW2iu9zIHRrx1fGwGs7lhFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749740394; c=relaxed/simple;
	bh=kKwGibjFdTWD9JED6fH3NoWlo69kvg8Aa/+tz4aUPyk=;
	h=To:Subject:From:Message-Id:Date; b=tkpPpWDfjUQc+hFzXpNhbJsFwbFKOFbtDmQDb4pYCIBQ3oFby4+yjUwuzN237FWjfak5Dx6ItkiuEJah6EKai5kiYZWXxTwALzvkBDR8m7c/B/3RtlSvmh6fmnl0FUInXyCXpPF682iwouMmWHmHq/2ixjJ2XBbHRuJcUW5urXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FofSwK9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FofSwK9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A2ACC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749740393;
	bh=kKwGibjFdTWD9JED6fH3NoWlo69kvg8Aa/+tz4aUPyk=;
	h=To:Subject:From:Date:From;
	b=FofSwK9b4zW6/HXTxboLkDzcECaQZ3/bGF8l4vyewdox1RI7kjLVoxjngab0GZm7A
	 O1vfmt9fCHFcK1Aei+jTZAQYO/0L1mIGNA5nQdmKQCraYD2Lb+1Pisahh6HQXZTe5n
	 12vNc53RrJKNYFGLQbs/zMrtb7peCPye5MzhHzlEvjeCHcx0CoDnoPI5vcexAZdpbD
	 3n6J3fj77aGaKOzdOT5zCVbCmmm3wnRPIinPoqJQWCKKDVjVLnCtqZocELhysF3rLA
	 3a0hbjVqyvb4nvKpzskDudaaSiGRVQ/f3wD5CYYC9LUS7L9emOjmfpW11MuQTWVtNh
	 de54xPWJT9xWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E97FC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974039357.22652.7031760581773115577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718584fcfbb88848e5d76db24ab529158de9ab9136d0c9fdfc7480ba5bf313ac
Date: Thu, 12 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749740393
