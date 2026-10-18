Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AA135F163
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792338634; cv=none; b=tzPg/X1zXecyfWVACgRg8d8PETcFKHr48NpGn0RUlQvyF+OrnLKWpdnqCqC4reVB+OWXna8/pX7S7pnmeUk/Lm8ShhawYHdxP07LJLR7UgHAVmax4yCjx+giEmErEWm4PGN6aKPrgezUmAJAxa1oUutgAGWk4wDGpJg4QdnrMSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792338634; c=relaxed/simple;
	bh=6FPfdKqhE/a9poZwq9JbVpLE9Dk34Hh+1e2v9LQSb3M=;
	h=To:Subject:From:Message-Id:Date; b=PBnYHPqqSA4R/bxaRL7xrnFocAptdzVTJZl4kJJkywvZSAsF/Rf5KbkUbYlLlJ3MFfeStjua3eXZWA1pqTPZylg3gfj+EHJ7buBnIU4Z92LOqRmXuQF/FawXSl0yZ0vC+KcPl7+lIfAmVeONJet1m//v32Pv/aea4mpSQRmcm1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwcphAiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwcphAiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF247C2BCFD
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792338633;
	bh=6FPfdKqhE/a9poZwq9JbVpLE9Dk34Hh+1e2v9LQSb3M=;
	h=To:Subject:From:Date:From;
	b=gwcphAiuygwg3Ko5WAUwa+BTHXX9Tw1ld3ssQRsvImddwylUrMT27vLiMxJlC+k9a
	 FPQSHmNnDMMhAhLa/cIm6SoIuTxPUMYKgd0fDDdDam84WEgW1k1/5J2reh6oRbdqCF
	 7ay2tn65V+/jHhF0N8u/tmziAfZX6GxmdHU8HOLUonz7AbOJ1gcS05bxotB17/kRBD
	 1huQ72/Icc+5m88ftPIfokGqgVM4ZtZkqMjvgEL5wb/2xtXbhOsSjrcBt1OLDJzmfG
	 z0m9GKJJpZZKpBMPlri67uPXQFzbIB/kdobXaUV30IB0xtGQsWoO6PxdigmLRC1wuy
	 VlKZCYsDei/eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF3BCCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233863368.21855.1218269102220347389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc50b6766fcc77225c3aab4cd38d53ea7ccbf1022cac5ba0924c8303963d2b5
Date: Sun, 18 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792338633
