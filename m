Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719FB3AB291
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787518234; cv=none; b=GnahBmsEfWOJRYWVKMAkozRpMClWhWDCjbP3LV7cVIPQivHxxWaSAbwPQ8Ik+a0PyqG2KKWeCOcHRi3M8x0rpVveN081s93Vq+sIa3Q7TSO/mZs6HZfXw96BSPjNe8+JlgnrPMm3eiEhYwdpn32eT6n2Vb8uo6dCKMrd4iN9xlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787518234; c=relaxed/simple;
	bh=ZERtZa/goozwFnB8pbojIIz9gDF7ItUL8kKjJcihV1w=;
	h=To:Subject:From:Message-Id:Date; b=mPXO94Ev7972mD+Zms71y7hV3jcjYsp6IzK8xEnOvHKp3UruDEs3uYvECVjs5uKbKjPowe76G1WRcSKvYiNTRlmilUhtmIHz7Vl+h/5K8nSzPp6FnIMx4JyQFRmYozEUvMYGL5uqQL/UFgxKLBuP/3pQHer10bktt3fZwezaiXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHLWtgLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHLWtgLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D461AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787518233;
	bh=ZERtZa/goozwFnB8pbojIIz9gDF7ItUL8kKjJcihV1w=;
	h=To:Subject:From:Date:From;
	b=kHLWtgLmlslJWK/9UbU456z2tXuHfuOxdFoTai2fDtZlMZd7yMTKHoh5gEmFMh/kL
	 W5dFp1zJYkxBa6kr5Z3e36YE1yCWqQ9BdBAwen34uURIud7jG+RQcyAit0fEKSK2PD
	 0LqZFrr/p2f8oGmVpaqAAnyQIIzZYmBlwDDwq24h91aTPf4WHHy2nC48cIbYTN9ILm
	 7g/k8hXHkyxZJh5dy0Ai56rN4G/NTC77NYWpsfp6hwlwnQOvgv1ruc64VNLoAPr1k/
	 09dm7Xq4lZKj97Tz95+Y19A2G4o4Drc9hYmw3E6/WVrrJEWuK7d3AMDefml1jeu5FX
	 m3NQJ5n9KniJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD685C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751823368.23467.1045372313276364260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1246dfe8ab0826281cf04dd1c2b4f2812b47128bae2ff77cfe38aa54963b3b9c
Date: Sun, 23 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787518233
