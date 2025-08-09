Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324A9192D8A
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754728194; cv=none; b=LvMFcSKZB6sHizMisFOqBTWMEpBsLfUHIZDIEhb3KtVVY8cLUtHKic2TYfNXftUMrCOY0iFOk5yKChHmE2XEscokqIY6zCjbncHxsUNNHsQBn+jFEtBlDpXh7bUfpfZJHXFh9BaW2bJ9mEybva01f3kSjedmjfrEvm0B/k2tjR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754728194; c=relaxed/simple;
	bh=OBRsABG4/vVAOfDox1fjJUTniiHyHqMtm/8Nbobn5Xc=;
	h=To:Subject:From:Message-Id:Date; b=tGjseLTNkuKNMnr/y+4qt6SHibG2uJ7at4mvo0BmpWmiaz3HobWQyj6uF5SX1hTgFmWMvPolP9K6ZKKHiI6f6vWu1BAjCZhdvcKD4EZlnEBi5s5EnWq24sOGx/knyaAI0+M/KfjKnpASXgtPkZwvhiBGbqZh7fECyQaPiJKfMU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obcx+dsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obcx+dsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754728193;
	bh=OBRsABG4/vVAOfDox1fjJUTniiHyHqMtm/8Nbobn5Xc=;
	h=To:Subject:From:Date:From;
	b=obcx+dsiImxCUsAkHzgccH4YKkOU23+rh7V3ZXzlbVFfqiZ83ZirHJK4qDNAYJsMG
	 IlE+uxlA5Z6RlEvl9wVZsEpudyvomyWSpOgoeMm5evAA0ePUvrFbkZERiFRfExwIBl
	 Uepz0wBoBZ9D2IrfwSrbBTvhGMLF4sZoZyqPwHTm5Um+xINkln9cGJcgmqyqB8E7fI
	 dJRajcVfcDFFfXXEV/Dp89RZ01IBpv5Nl9cyrdXbtaGRLk/+ogMAfqhM8ZDy2bf5/O
	 ny8cvzLcFCMh3EVPXcbXpU/xduRMbmAz8uB/koy2gDoDjV5m0rQU9Cm4FC0zI+POuq
	 emTzcNZ3F8AOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A94C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472819357.17269.15187721778645997669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60641ab7810e0c7914237e847e1e365e22731cc5ee6678e78259a79a9bc2f289
Date: Sat, 09 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754728193
