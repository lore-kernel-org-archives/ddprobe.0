Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6201B4244
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773429894; cv=none; b=r3EFtT7jw3lY9uCniNPDfDgCxgnocfrouDg6+tMrNbsvT7sZunRATjHXpUAvYfoyJVVdrzEI7sE0MSjqd0Ste2N9fcGrN7tDowQ7s2culACjCx2VywA5s/Y2eDwVcbTJRvI5z5dVqjTySrpeC7+OdRwzUHT+/XoS7J2VUnjp2xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773429894; c=relaxed/simple;
	bh=oH41W+RO5cdLj8KBnSsgr/DNTkDzQsHJhvZAL8455xM=;
	h=To:Subject:From:Message-Id:Date; b=OblN0zXKGpHCeuNTB0EVySvKHoAubj2tjOelwzTa7UluZfEdLlfHvGFUD8huNSNEG1WqJ0NodhLjt6QcN+qGmKimbER/Pl+cIMlKbHyGiamN3apX4BokkTJz+NKIGX8nyl5twyH1cRtO0+b1txe/KfqjiskolDBpA5E0IF+M4kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXJzQPxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXJzQPxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A209DC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773429893;
	bh=oH41W+RO5cdLj8KBnSsgr/DNTkDzQsHJhvZAL8455xM=;
	h=To:Subject:From:Date:From;
	b=uXJzQPxCJADGjoa+O5ji3V0DripVJWS72HNZb+9DCZkE+utZQIjnTMDKVy4CuIVw9
	 JE6WFcJTLXOgwooKBWXL9U0SHl+jyd+V120pxp4XFC4zYUHF4JsDDHqzABmo0nqj0H
	 igjYqtnZq69T8y3K9khDJy15uAfEnf1V1G453MJPD5daifMhuesahR9bj+D6a5gjRh
	 T14Fr0DLeXmrVJx593kQ/M8jeT4eg+QDl5kRo+RoioNR2lOJ0Mb78ZZk6eDztNXhPm
	 DA31S3Re229lPjqgav2ydsfzOyTYoDoD1H7gMR2BUTVvvnkyryTUtq/ugJ7S31XXcy
	 dulGiHpTeDJug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F94F107BCD9
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342989358.31096.3302898684241873905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84da33fc023d8b89ea9fccb9c17dccd84230d0b705178567bd6bf12e8beb3ba
Date: Fri, 13 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773429893
