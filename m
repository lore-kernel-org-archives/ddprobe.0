Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0A5533D6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785300634; cv=none; b=KoI+b2I68RHLU9LLxShQvT0bj5Glk6wziOEAu0rpp+Sk9fh+Eikldz6gjqnUPLp6llTO4A8Epn/fm60F8SfWlpB6XFWL1x/DNKokNCiFqYHZ/boD26IqL222L/7VJM/J9YglkG7d7E/jT0UwfDn9mCNo/tbgEyB/2JLZ4TQgD1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785300634; c=relaxed/simple;
	bh=UqHvR4EIC+jECqlJFMMwmnmcJNzQM1xHuSbBrZjybg0=;
	h=To:Subject:From:Message-Id:Date; b=lw7RsLRy+FBGyfkJSKQNj+h/HV2CK4G+XvoX+wuQF+UKmwTU4GO3pt/vSz/5VJ2gLU428st46fVehbK0atp98WwziKuR+Pkvzkg8gxAmRmwAzJAh/bAYn0RztihaA21LbHOij5SFlo14/pw4715o9wDwosBwnYBWvQ0WiaLJ6cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPcW+oh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPcW+oh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A57C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785300633;
	bh=UqHvR4EIC+jECqlJFMMwmnmcJNzQM1xHuSbBrZjybg0=;
	h=To:Subject:From:Date:From;
	b=sPcW+oh/n6wJhHoMCoD4sFeAJUMIZjdhVgqehh32DF9izw9VylriloUalQ71o+BYX
	 W5aBB1ZgZ4IcVvvvWWytwZNu+3Kj7HeDpS42OhX83twyDA9tWG+WzC/JhMrWfkAbK8
	 BkPOjG1Myosuhes7ZU13AVO+ACpX7gSKSY9feTpYszP8k1j4v+0XuSNwv29aB/+tNZ
	 UfpH0cBscU23R79JnVb6FRDzBOaJvDiUL7CTJhAbWmIq2tkL5gDAT2QZ6oJr0A6IbV
	 We0nDEtAdrLySXxXYGA4xTm6qGKaDj+LXgmoTvsc+QUTg5qMLo7hEUS2tUy6t+0ztS
	 jPo+O72lehONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBC0C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530063368.30230.192435949055574263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1129fa93f5c369b313ef90c65ad5f93afa7bd171a1c352afe1cb6d5ff85a592
Date: Wed, 29 Jul 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785300633
