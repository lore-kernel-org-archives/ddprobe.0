Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D26C2EB00
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733971554; cv=none; b=J5WyAG35R0djCo4GwrMXEs2bttO3RuypIWuEeH3ONnlyQM0+mugstQmWTsU/Khx1G51u0pevPo/i76RwOnXqAIWi2pgSj0ynTEz4H54AiWQdpltpmzWRW57erjaDe64c8aSWFRwrOmo89VxJdBKgURrt4wiaoaiORtuPtpRR6fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733971554; c=relaxed/simple;
	bh=Q+YgJehaARL/T8PFQ8yLKVde9ewmC142/0Wq/Uop6cY=;
	h=To:Subject:From:Message-Id:Date; b=CotxDn404rNf3yqcrXD+bqUX027I6uOoGwHgwmhD2cUL0tociaSqx/Xj3HYqG+c2p//g+dYFinXMbtafQaJpDzYMY6PeKpTLZfIwnwd95mVHUdQJ9xHaiEJxlt6ZV1c/GcBIPE4sh7+plc2/LzzzCXx/UALGex17Rx2wOXJExOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHZZzdGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHZZzdGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EA1C4CED7
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733971553;
	bh=Q+YgJehaARL/T8PFQ8yLKVde9ewmC142/0Wq/Uop6cY=;
	h=To:Subject:From:Date:From;
	b=IHZZzdGgQ+pgF7YxFj4djeP57wqjTGeKORKP1RKml1r2MPfM0VBZ2/GjetvvQxogh
	 HObVPBYnv0JG44czB6Fpoib1f9vHVB+ixt7djAwd2XnhlnmT80CHQYnS7V9B9iQ2r1
	 mwVImcyOSBCYZGQZ7A0tWlpfL/dYksXFirlZsouwRaZZH3+cmDMfTqdujQVyYaYiUW
	 TvvFOgBFh+sC0PPH07mb/RRLqj77ErzPPwFztUPl2izGByaPDbSZDPmeH+vrF9H9ji
	 66NYXMvwbcOWe2u94uLZazG+qK9xJLjP6XAzVhUPsJAtWlL1VKQxOUsm2DjoF/7GmY
	 dr6vt7CPewEDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F41E7717D
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173397155358.23153.11481490974990070139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898ab3218d8b63e863ec905b339f403b7e80c9df522b0f2fef5c938bfa522c98
Date: Thu, 12 Dec 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733971553
