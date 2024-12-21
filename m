Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437E01C32
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734798354; cv=none; b=PbWKcvItimiYJ5vGSxgcS7pjMggyyXanZphRxLR0RumOzAT846YOmaJjlCxJE/BapJxTCgxMDeBqt235QZq4kv9Cm/utMWA7pDcz5JNm9PeJnvJTXUv3MgxRN4YNgTPADiRPR/eeh1yc6M9RSzuRWOrcf4fcplXxZRvp57m1f2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734798354; c=relaxed/simple;
	bh=nFXqvS4tZAdWGIieFpwR3b2+4Q9eTZShXTqveBDo09c=;
	h=To:Subject:From:Message-Id:Date; b=Us193PQY3UihvaZKQNUdUN9Vwe7jLicSlSDB9NHBJk8fzrdZmwQPBTnBqIZzq4rK6wA8ONyWtPrxpxZvYEBWk4EPaG3guhxhrBuz4s9x8lCqYM4nrF6lUJi4u0lIRXtEly9EKRj5E8d7LZ9BAlh6xwhjqzS0ISzLGhtTegK9a8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qS8GdNpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qS8GdNpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20B7C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734798353;
	bh=nFXqvS4tZAdWGIieFpwR3b2+4Q9eTZShXTqveBDo09c=;
	h=To:Subject:From:Date:From;
	b=qS8GdNpflNC62VH982IBO8EtO/zgZ8wlW6cs8pa0jzc0Ic4LtkanZhpaKBqZJI1/4
	 5mh0GkgA90qHRLZezj9i1vPyRiP05IVew8Gq6ja2aAOmfe7enEFIPOvswdqOuxJTe4
	 9Tcldf2vT/RKCTwFOdCb+TQ7JF35kxZmQa9kmp7SlfTJkkh7G1oUZ7LBAX2+KQloQ9
	 tJDE0R4VJwWMYIa334AS4FavDY1F5eTDBcQGileI2xH9ITE2u8qHfyCWip1PtucMoB
	 +cPZznfyHgHOl5gLF1dqyMPdsSkA7sFaPOUlyGSd6HiWPfqdbkQPUtiDmiZutCITMg
	 DgYecEXu80WHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF59E7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173479835358.17136.18205164873607547883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bacc906d805085fc38f0fbd5a67863667f70691af6f7f583a7f352242993243
Date: Sat, 21 Dec 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734798353
