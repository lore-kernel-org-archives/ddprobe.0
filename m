Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF59200C2
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779282034; cv=none; b=q7AIRdPGO6aJUQ+9O/MXlqu3U+1Y6PuKWgDPz2WMbmy6bS8IgTnu/0uFYo0+uTAQaVLHCH6TEvihEobzg8JUEGNBtPBzB8HU2opWit111fxMsSizUD+u1Vt921AeyBnkdrwFTSBYvem8TyMKBJ+0Cv0eNBdjkIDXy1ltynSyYtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779282034; c=relaxed/simple;
	bh=H75qZ8TnbcZNsBd16aJLoiraDVsDktKqUxHmG4WvAUM=;
	h=To:Subject:From:Message-Id:Date; b=HanjGE45sswAr5zrgNAnlnbPgrkbSsgdkKK1CECJ7wpqOpjOXhXYgPYnA68ZJ6OdDcg742mXkUL/kGTU3LccNF/rrqWsWdLT6fvhPQJNPIM0qggRSlkUWlpQWzr18RZHUNyUUO6o1H+XBcuFmvFpm6BVDY00WUYvkAlMaIIkcqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4mu8uu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4mu8uu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39A1C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779282033;
	bh=H75qZ8TnbcZNsBd16aJLoiraDVsDktKqUxHmG4WvAUM=;
	h=To:Subject:From:Date:From;
	b=F4mu8uu7NW4Chv4l0aMjDObkIX2s4l6lNkJYevlqNYFGdECF3KyW5jpcCgeqvjYXl
	 7nX5YBk6cZktaj91Xj6a2wNeN6NYv/bt6dERlUTgYUv4eBBlFEV2e3d7qQT8Sm80HB
	 rEkgAM5c7nKbICf4Mzi9ZcjFDIQpBnfsxB7YY9ukRXZzSmiLnQhpRS/+4wOovvKL5K
	 aIK1pl/c2/bft+Z+WK4xjA5eI0W5DpG7ueIKyMaPK611Z7wNcbvh+KNVSYDGVHHD7J
	 67DhAdU1qnvysGTyPBlBjUEhgurFXN8TZsl3HJgLkYR3Omi3wmqUw6AckifXbgAfud
	 dau+MZCMwAgmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6A1CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928203369.22528.11869349782643212693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04747d0daf054a984354feb6469849b94d9f79cba691802f2dac040adc001aea
Date: Wed, 20 May 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779282033
