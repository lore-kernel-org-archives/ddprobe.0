Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E85F3A1B6
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749438595; cv=none; b=Bt9Tbymoi/huQMGmEvSAw1fWb7SuLT/nha/jEAK0KCONM8RxQjLRm77SjpDIAml9Dqt44Thhe/jM2sbv1bmVJy8EhEbmvoPH/Ht82QIUs/FpGft78bPcvooCkBoma3fA1JRJGsbCntYe54xi7hO89Xd+7j5B474vJ94RDGZnjQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749438595; c=relaxed/simple;
	bh=xZyeHzdnhQ61s0eBsHHkjzEhz7uY4PGlLZCC64v4mOU=;
	h=To:Subject:From:Message-Id:Date; b=kEcLrxmTYPO/cjcOwPpyzoa1sTGg3sIbJZrKoSMm4kA34QPvGBsRaFqxMBmaQ+jUMtyaJmvzOqsdGgdT7fYbZvMfr6GwEWN7hKXpb2yQnMrXa+4l7BOCTl7Bma/+EL+91TlZSMiHL4uEKvsrqt2hP0ywiKbRuDNdwUmcajaLYyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hp4ghkeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hp4ghkeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00BEC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749438594;
	bh=xZyeHzdnhQ61s0eBsHHkjzEhz7uY4PGlLZCC64v4mOU=;
	h=To:Subject:From:Date:From;
	b=hp4ghkePfz4o0G05yIVWAIpJNCVzNKQ8ERDHgV/9wy40f461CFnVEfFJ3btYZmNuJ
	 jQVjW/HBzWMxaMEilapKZ/RtkpzumYWw/ctrn8Idzv7NSTPl5/dhbiTQoL6ocM7wx7
	 QUBOEoxmNpFHnuNLmm2SOG+OGP57W3qU10ZoOFfGgJ30gV3tuGt2W/DA/d7uShab2b
	 1k3NRrM9GkSb3WLszuhgCiIoFFnRlWYuMX2Hwoz0B1+8BGchSQno6jh9UJtRvS8M7A
	 0picu18pKlXoHC+48dEa5nj3/Txr5PEhTyQ5qVJ/evweguBQftSbYlaQTcAixY8JvI
	 DGWSnIq5tfsag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DB95C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943859357.23547.8791988660196391344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56abe5c6018c06ce724c350522650a0f40d4e9feedf1c06850740b1501402843
Date: Mon, 09 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749438593
