Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64121385516
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782976114; cv=none; b=EItwI6NlVhmTjAQIZk9LCRkrkzflW4Qa+XPeSv/qBUvvEqwBj5Q21ymxgl9Xf1qQwS76nNBI7P+NsucOYkjvxpevEeEfHzRBm2rb//hbbxWsGoRuWDw+D+v2R6IQwv/1ti6XPiCGZ5+jtTIlalBpy3MyXhu5QonlCDP25OYe9a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782976114; c=relaxed/simple;
	bh=sqnNsns8n0X7h18E+d1XRjgbBCUGQLaYo1JYQD1myLE=;
	h=To:Subject:From:Message-Id:Date; b=QFHZRaZXGiBDVVR/SuLa0sIi+EAxsDDV7Xf5h9+JLeqC8VuYE9sKnP8SIxMdEJ9GcbEIiYQovoRCwxH2knenyBDHCL0jr1t2YArtZbqrEqn0xIjrmCuylzss4wkWg8sD6tfM4cCeHHYaNwShj5Rm6FXt0yS4zlmegExjw4u0UxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swCrDR6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swCrDR6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE628C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782976113;
	bh=sqnNsns8n0X7h18E+d1XRjgbBCUGQLaYo1JYQD1myLE=;
	h=To:Subject:From:Date:From;
	b=swCrDR6+jHSNN9EFSO9Z2wLQTRyfqqVV9r39IlNHcIQbeB3uhvb544ndflxneG9iV
	 3DItiBYwzPh2Q5QDTgWGKI7ahDE8pPr/mLslajTE1Ao1p1q7oVHfFtPjEU8ZQFyQOw
	 BFXDhjMKEzqlncySqmEKcL7aETySLha2ppizSlNZQ6jWWSl9DG+z309XWG6fdvrblc
	 6plbbTbkzSulsCpwi3Ly4SCl8BohcHf058uCKzFYAL8LB731LEosJex4toOZds+LmV
	 hnnncjVm69+XHtxGkvXn7IQ0dQh/gFOzg+yTiUjt1OqfQKzhTASrCnyRSf1BMLHgCL
	 59qgdpzd8UHwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F19C43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297611368.10851.6863489136196003487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b210e846ca2d172fb1da87945ba44550db37913c7a385a0366709c957323567
Date: Thu, 02 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782976113
