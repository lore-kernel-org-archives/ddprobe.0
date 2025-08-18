Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126F52475D0
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755529794; cv=none; b=VW+bHn95Sr7SDCZ/9qBxR2x8x5Cip1tKrBzmf2jAggMz3SR1jiX2vs6p9/8FmsE8SWczw8jVoHxbIff5qyECk8MVLUYfGy031XPfBoqXT9tVV6jQDmfWoIRFjLJvLpdPKXQNvJaQQIsAKg2HCyb/PIle4GjRcRiaFMjURCB+rMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755529794; c=relaxed/simple;
	bh=JjuKQyOPprpAoz+wbnmoddL/K/SGcXnoJVY11C+5wFc=;
	h=To:Subject:From:Message-Id:Date; b=FrVfLb4J2trZJmgfGOaHXHV7voCODqKkjSAe8ynlz86GYpDDRrK3F/dk+u60Q+vNi1thnJCdrEMlYbwGxL37D5le4cVd2aFzK/K2aoMNSo8T/zdkT+3s6d9VG3H/kTS//0cEo98O4NkRwJQMxQEz2WgghPCdG8ulu7q9iG/5LRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzlU2L7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzlU2L7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A012CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755529793;
	bh=JjuKQyOPprpAoz+wbnmoddL/K/SGcXnoJVY11C+5wFc=;
	h=To:Subject:From:Date:From;
	b=OzlU2L7PXY0/MvHrCJqdF7pgCEFuicoIW9bGNo1tTLxOj3wxsdhP/RYUJSmjszBPj
	 K1iOqfRJ3jDQSVM9QN1y0le1Ipy5P7u7JcHitE0nimEDWvIIIAgxRkv19vLjlMjJKN
	 vav+QVT0XFYlsSF5K8KQsOJWEoFJKxgKlOxnoe36EdJiAV6RLGGiY1aIGELe0zF5bq
	 ix0YNdAEkFWfSPr8SUffRf03HTiZm5xaJMtt3pBO0OzuzdStYytORvoAtAZ5Vc1USs
	 8aTwftifIwUc/zteifCbGDCXabXsuutTS4vQ6VrQIc6o57vbXTK8FomS/4K4bCaX1H
	 ECtXX45fedvnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A5CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552979357.8152.9933269216567326385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a014ace286d34a0b3b5ccc0cc31f3d416f2f283f5ca6f1389b59044aee250a5
Date: Mon, 18 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755529793
