Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4283B71B3B
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715117543; cv=none; b=l7fwT+n8UO+gMZP4SWlfZ0nQErfI7p/LWhL2a6MusSVoP9+ZQ7tlsFSn5cShapJ1Ch+He+a68H86AFDJ5tfljBQdw4krfVhgmRDghMvcSbB3RKm/Vk7Sg9o+Q37P2of8bJrQ2mlNNuR+qFj/KxwomBKt41Qk3WxOlCyYCPlyUkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715117543; c=relaxed/simple;
	bh=0PUWFdvTnNSHnrZUrAcFlEoAF8CrZ2Ofu4tGyXbkW/0=;
	h=To:Subject:From:Message-Id:Date; b=kRQctDhQznuRDu20/SkVCNeidGs6v/PTJfYWD4ewbrN3dO3lurmHa6JiaM9VeI5g6ydYR3NWOnDvjtdXPfxMJnRw0gblRGIUh4KABfzVORr/EJETRu/k0twVlYwBNHEE5fETChIqPrGdXPwT4fC4uwbh16hq03kvXuzdmsqQlEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYOtn3qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYOtn3qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F811C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715117543;
	bh=0PUWFdvTnNSHnrZUrAcFlEoAF8CrZ2Ofu4tGyXbkW/0=;
	h=To:Subject:From:Date:From;
	b=YYOtn3qyf75o4hhIAwkrFIwxWlU47m43fHQdTcbFwMZ7KRpCUEXqrSs3cOMy1DM93
	 gu2cgap23YV0Vs096NkJEokz88YOYDIb4Bxfk0RqpF6ySkzuakhUi7OSjpu1nneKTB
	 c17wkQpzqgVkC0FwvKVEpy+nNHOclLfYyxoG/bQ+eQArh4iY60JXJoALUdmKvNAnCq
	 rVyoJIqtNnAK2fc1tjjv2G9WN841wvhP0g2i57K/s1UBcICG8H7I+CshBvp1cv/Btl
	 6Lo2PVMe25eZikRVGfaK6Ir1aoVZT08HwVXg1W3Hk9jXQeQm5b/PoF3U0J7r/mN1vy
	 FrR/sm1k+ch9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA07BC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171511754292.29900.11085233436544842758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e09a2de863da02f60483c226942d00a15bdf6f6395fb3e31d64d6cbc27b592
Date: Tue, 07 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715117542
