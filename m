Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF924A33
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768802034; cv=none; b=YeEVi4i0UPRPK32zykHyxVLeQX4HQLmNDhOgZVUreDAhsbIl1BxAyWtmj6aMuHGnZf03aUOUMrdy5C6zpdjU8ED6UVZtDY47vhi+Z1Bv5pqr1ZkeTDJk8HMFxhC7VoX/Wr0IFsMv0j+YZKvtLG6MYwWolpJ53CzOXY/3oId4JjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768802034; c=relaxed/simple;
	bh=4IUpdClLGyLBkSs7NAHuHhCPO0nt3dQyzH8oQr0cycg=;
	h=To:Subject:From:Message-Id:Date; b=FnV7ZvQ2ueEogHtT/BNncyvijYBHzwLT0ryzZqcfHfCv9dDB3xop/nEUws3oTqXLTg8qHs9x/m3JDhbvqxViD6C4s4nqX1TynVYk8LPRYsuj+63KtDGJucpr4JB1ZoAmV2saQCtDEW/hzt+xfeDmqEwRXUIjMeSpyJ/DydHXwBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMNLBoPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMNLBoPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E61C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768802033;
	bh=4IUpdClLGyLBkSs7NAHuHhCPO0nt3dQyzH8oQr0cycg=;
	h=To:Subject:From:Date:From;
	b=fMNLBoPBn0TSoOn7Vsmbs6rKjhktPgD/FFC83c+Yo5BN2q4FjLA4WYxZb/gf4aDDe
	 2uWUDtC8Gw4zd1tJ/53OuFmqt5VWeNPTo+pN0655mwrb9RtCUs2Lh17mkdfS7f3JY/
	 oGuZe1Gl4NQMn+lhNEa2tQDn9NvQXRmw1KyQJkWBztqbC707J4HQ1ojJBHhAwilH6n
	 GRh1U2CvObylIdwrTwnI0trmFj5QCSYNSBLIJTRKGqfWCZdXLDuI9k7YMecYGTVerH
	 3c78UK07ctcyNWSeNrK8Mre5xrSGmjv92z5DkUKX1WQlNh7CRSaH7MtqHtBLVpu72f
	 r//1GgO/99KkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92896C9832F
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880203358.19123.6162353320777036187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c227fb2c1408dfb1e71cd394db2fd4494cabf312eb8f008d094bc836241aa3d8
Date: Mon, 19 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768802033
