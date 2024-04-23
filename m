Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A296A03F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 19:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713899423; cv=none; b=Edj47Ez+AgRKMTrAAWKZ7WC1bqX2MT2h1lbGbvXSD3wA63kO+1upeqtGGfI/9KiKQM4HdGxoT/cx6+sO0YM5CG/DZY6901iZxxY4l6oCpenhtiGhYzmLVJjXZEzGRuBqtjMxN/wExQ9AAZWZEc0N/fBBhvIIxSc3vXcGWPAN168=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713899423; c=relaxed/simple;
	bh=1gC4p0Kh3y4wrmLSr7kqvdACaib/eWeHZyjtFcXf6l8=;
	h=To:Subject:From:Message-Id:Date; b=E/+O3ru2mTCfQZufKpeP7FYs+s8S0+syT5+KsipVa5l2X+uj+2PK5n95lyypKWIuFOvkWyA5WJI9Jt4rbgFLNA9wl/4RrR1zn2OA/rqtgQCbEj/YlkA3ZWa4xzqRJvDhvCOsBs+0c6hat5HJVMPpwWd93TH/9AJ3HqT3c+Q6Lg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYWCVIFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYWCVIFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E882FC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 19:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713899422;
	bh=1gC4p0Kh3y4wrmLSr7kqvdACaib/eWeHZyjtFcXf6l8=;
	h=To:Subject:From:Date:From;
	b=UYWCVIFxaptYFj+MsoZvRntP4XHPtniCj2sdzzs1vEISAuvIxfhiWlQIbQ0NOEyvW
	 9inVBcKJc+ymJTnawhRAsp0k24lynhcHcsVEhmpzZuw1DPq0fV3/KRFPpDYTsMTl+p
	 2fZfarpeFUtIhl7Znmh/9Rh3sdjpGRqhQkmz7uAkBjyCccPZkYzgu/vCPRi935wrz7
	 0ECjTgI9I+eIprAlaVnBxkHkEpS++RQttT5g4xCvuGrua0UaoYUHr2ZCUd1JvG2wCU
	 KlhHMWozRTa3zm81aOFTDDb62GKKOOVIgMp6Q+PyYmUYhJk1bFejQ5yzf156mnr8oc
	 qvbgErxyHKZ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD47EC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 19:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171389942282.19338.13870234499263563967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47ca926da1cc6454300399c95dd0cde849963388cf0665fca67d589f862d36a
Date: Tue, 23 Apr 2024 19:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713899422
