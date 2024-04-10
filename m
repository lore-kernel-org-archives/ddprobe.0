Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F9C17BDA
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712789297; cv=none; b=Mbh3I9GAr3RacFdXn081HqTIVNGh8NWt4alt0GVi428idlOR5Md/Gu04C5tb7Vm9TxnzUVwUKQ0VhVqHVjtxTLp5OKKMhQcMTNdekJBenaJbHDMonMVouxA5dirjc6EroN0Wp2B0b/CnyLehD37vv2lwaSCZBPXMH48bggAPKic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712789297; c=relaxed/simple;
	bh=VwLLPi6kSV6N1loMqe9mkTU37fCixkMEDY7MFPhbWkM=;
	h=To:Subject:From:Message-Id:Date; b=ozk0sKxI2v3u0uK8SnpbMkeOjXX4gyfF3q/uBjAu8JPn8gj5IhabmEbOhiFObWG9G+VHZLWJf7HVlcP8eQQ5lcotIxJvzNbebGHEPJSt2VqggIdARvSB1EUW7cli84YbLHBivA4lh1evLROVgb3sbes6hpBnN2gQDjciVE6Ee0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQgb6jS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQgb6jS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89AA8C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712789296;
	bh=VwLLPi6kSV6N1loMqe9mkTU37fCixkMEDY7MFPhbWkM=;
	h=To:Subject:From:Date:From;
	b=VQgb6jS5OTKUizolprQwsK2gX6cdwTpBuHyMxzuJx9mltEiKOQMA5qzPfaZHcza8i
	 PtBtH2PGij7ILhO8uM6DfNcVUDNNwfL+pUrueHTc2HQnt+MdInZ/ZZAWHif+mCNsbQ
	 i3O6ryntyGGWK2/P+WNhmXAkMhYc+eBDL3X+oo9V0cBS/FlcU3JxhEOOGGutEgszl8
	 WOxM1Rd0EWK2el05EkCjmmXGdux8DZ4UpY5tfs2B0qrCXY+T82rek1/9ZGcg6hKi9o
	 wm6V0MmYdeVp0qTvtlpPf8iLXOM2ssLULEE1Qa2D21vbisAW9TItVAAfeAurFezAQh
	 HT2lkMqooOHfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74D28CD1284
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171278929646.9207.12482391145567712424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a67b088b3046a17464d1925bceac1b52d4a6e7d391fc1d89413ac338afc47b8
Date: Wed, 10 Apr 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712789296
