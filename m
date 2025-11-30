Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323B478F26
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764542574; cv=none; b=qvprOTVLsag+jG4gH99MTr/voGHsN3XxEf1s+pnSJq7WEcoO+qVGIVB8GrH4DCTtbwj3HzvGJp6sNI5hgHe0iCttbY1GSwk/1VpNTEYP23Ldv5Lm42NAJFat5OsTAuT61f5O5Oshm8VrTNRPKxL7HAAbTBuybtp0lTl9rxgXX9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764542574; c=relaxed/simple;
	bh=b7CwLoZGjXnf+KKHJEL0BjzyLE+QMmX3LSw4mcDLa1s=;
	h=To:Subject:From:Message-Id:Date; b=LGXNkHssk4Blk1Q+Ol07lHwIdyOBHuQKRJYjNZbaPzFrnKBYyW8y6v6w5OBQzsm5X2SHtJIAWmaLZup43OEbHQBchhgL7prBRYnXAIH0Y6aS6LLUCWewoK8G6QBUm5iA/hqEanYq3OVSefN6PehdkQdMyEeiuC+ujmeUQbc92uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuYtPWax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuYtPWax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3C3C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764542573;
	bh=b7CwLoZGjXnf+KKHJEL0BjzyLE+QMmX3LSw4mcDLa1s=;
	h=To:Subject:From:Date:From;
	b=iuYtPWaxSZBvhLGuKFXI29WaeY/qqZGGjf4EuB3zXPyd2xqsphKiiipJuYj6azL67
	 SgA4LaNH5o7gyhwvS/SksWDwhKazSvfCjDbZ2JD/tL0+YPHNU8sN4EsECnKv+XL6lJ
	 +VZS6x4wWdi6MOZn1gTBTIlXrY3OdHvec+vNGKcDT24nKUtZ9FmZNZMEbPm78bkDcJ
	 SplU1WvdToFgq+Qjj6kma+r9+QX05Qy0iFFnb9JyaiHtb6TGyjwGiESzxsXsf5+q72
	 g5zzz1kZ2MeZuPav+BK9SbCpwZm8HhWWwLD8g7y1nyi/JdpZ37GZZtsGD3IVhQeDLV
	 R1BoM/SGT07Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947D1CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454257358.4356.4500293397036728524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ef05599cd4fd31bc33c332b8fc4c7ecdf7788de28b8c82f74ebb3b1a68cd71
Date: Sun, 30 Nov 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764542573
