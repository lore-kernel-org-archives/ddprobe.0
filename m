Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C1A30D407
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787490634; cv=none; b=hllUswcJ7WxzsykWTOPFKc0qBx8GuQDTngyO3Jjnkyj4ytP8i2nvzjvMoeVdmWggDQ+tguhV8w4Q2ALHoG+d52W9RuchcBdG+02CKJzOpC7MtCJwuH7WvMFc3NUAEcxAYpapGlRHqleFDvLK49G2CehN7B/lAgh7I312xJh4Ta8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787490634; c=relaxed/simple;
	bh=755WLvvl6TgRrDLlbsGuTZcMcJ8VUUF0z+M8AxJnh+w=;
	h=To:Subject:From:Message-Id:Date; b=JClabd+0ud9m1AkR5m6DXP7L5CHQrE5Tmk4F/GzOprxgKh3G6dUm+1vy4DgVuyA+e+mODGC32ARrepun6zQFGRkQzngsJW/njNALGS2r3Efjs5kla3PdZZQQ3jntadXpkL6KZG0bbjfv9OZr1yBP/AxYrrGUhV0RDkWoWqFv2Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IViGj4yK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IViGj4yK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD750C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787490633;
	bh=755WLvvl6TgRrDLlbsGuTZcMcJ8VUUF0z+M8AxJnh+w=;
	h=To:Subject:From:Date:From;
	b=IViGj4yKsqyQFBeGvBTtjGIUO7EtT+ve5OT690oAUP1ArxNJxFlOtc26mfl9K3tF0
	 jxzchQE1ZVx4WuRH16QxVARLSuklJYKzyhRy+17DbqQBsGPaIey40G8UBw3+Me8nzY
	 5b5pYre16vNrx5tRK2f/APQQ322Zhv2MJee9IkwlPJuaqyX7m3XoiU+/bBs8CGYqav
	 YZSshr02KNoax1r29arz2rimzBLL5nT2ICcKALj+Clis5Rzpoa/qloDQqfnwFmwZVn
	 WBuC4eSzaMnSyizxW7TmZzBzrG2fkXVqu8aWbZkGRP8KK7DUut0paYedbrUu0imaDY
	 QoZMh5voLvuRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E1CC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749063368.4072.6212681547308335556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f16a1dd5ab7648b3dd11f5124bae85a6621a697d87d5f01c72460754576c0af
Date: Sun, 23 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787490633
