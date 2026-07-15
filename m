Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447D83A1A3C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784128114; cv=none; b=BvOdmOt70/dRhtAEhqr6FnqL6btalOScS39A/PMKaTlMUrhbUmg+6mqenA+ORHYk204FKH6RZCNf8p0jQKohGVEfQQj7ZaDrBDjWM8KzAp1KlrwenlJiT0XApSglyvTekgCO3se/wKnTonCTsURgcYsPB8I028ays+g0LmMAiW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784128114; c=relaxed/simple;
	bh=mG8Jtb84abwvF959WViY1bZzcOwqLsRDbXckIeUkRpo=;
	h=To:Subject:From:Message-Id:Date; b=UXEAcOVdCjq3GEVFQlangWg3IRqIueWyDVrqJnycllAq0yNr533sqYDaXv1Xa57jDuZFdVQ9p4NpyEQp0Wqs46+p0V13j+auEknhQP6HZikHLl+g5cwwzA+uZIyvj4p/R0WYKgqgnqZU3mqlRVoLDW7xuuLot3gKfmMWzFvKZk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVPAZZz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVPAZZz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F61C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784128113;
	bh=mG8Jtb84abwvF959WViY1bZzcOwqLsRDbXckIeUkRpo=;
	h=To:Subject:From:Date:From;
	b=VVPAZZz2gsuHAsssyey2ZgH2npLt1ng4gu78KRFw/HNTDbXgktSBPbwY/J+423+h2
	 7q4sK7LdMaJuPrKF5XcswJTIW8Kq7G7focDOwTw4lW3+CG/OSkyk6BrQiWsVir/rvu
	 dwvhP8mjhLi7JYsG6B4pq8oHLFUrMbicwUUUGgVbqgoY05ytw6Oiv+39gluVthDVpy
	 Bd8OGktIzvP/HIdWUEqL4v1iw17PbvudqzUEig0l14RTcPCi5rwq6ewEM2xOYlnJCn
	 y/V90VHRkGGZFKuBHC+Csr0BcHUkMlCtnBJLWGViRI43JvpkCHhd1uOos8zUUtwL87
	 x5LcsRbz79I6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED7AC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412811370.17418.16459845152328362154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc7a24d01467ce9f217e14b20caf16cfc220dc462d0b5d262c20c0ac67fd0bd
Date: Wed, 15 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784128113
