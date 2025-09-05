Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD5B1FDE19
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757083194; cv=none; b=cWoZNhGN/450cJvxcKcpvdvMZe/3PbD6t+mEJAzVa2qoVdI04fZwwAUsHGtEQV/QLkDc4oxmPpUPtWwtkaDL2hreq9NATXZHT+BHDjUzJuZvZq/myq2pIhiRvjvUcTuD04aEUGmw/k/qt/FQaiVKAy+DM/02Qd9cclo05MXCqLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757083194; c=relaxed/simple;
	bh=ffwjd8xYTIaRY3RdHr1A4/TvUlsyg+fUkDwJy26HdKk=;
	h=To:Subject:From:Message-Id:Date; b=a+qBGtrTjNQJDU9sYihjNUdyJ+Ot1438QHNVzSLKXRSu7btTTRj9yq7vtig/Oe8KXCMQ1lSWTwMnyAroFORqhL9tHvfM4TcKi3WDMVPFDQoq9NcFPbu7GJAgg64dTc9H1/kz1MeYXZtONVP/vbaugK/JbYeJyczHQotta72Vg3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=di8YLFWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="di8YLFWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CD2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757083193;
	bh=ffwjd8xYTIaRY3RdHr1A4/TvUlsyg+fUkDwJy26HdKk=;
	h=To:Subject:From:Date:From;
	b=di8YLFWqRejpTAEYNFZwxwoHznFdG4uCG+31OvNdk8rG7tTwLdVoVKSMhza4DuZxG
	 8H3zhhzcrV32UCicpd65ipDhPTkVBIzG4k3mLaIqOMDHNneu6/Lg1Jj8eyPgxtqaWw
	 6osjsrcVSN0LMgkLGbQuaEf3KflXh+GXQL/j3E+1J2ltCsUuUIydPHh8CeRyQw/Bex
	 SysHGZUiff90xlx5VYQgCGxQTyfeP3vy6zbFSvAq1YLb8kHTy7d4SROqju3aZQJu6E
	 qISnyOv8mv300GFTN7onD5vEtCngw6mjDFR4xUG7ydlxvqqJXVhz6MOMHYnWBKFHah
	 S9JyUCwVcj7nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A94CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708319358.17911.2840186590241878182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdcdab1f3a20b09c9bc3778a7642b47691274bce411c17a1bd8b848b54fbb08a
Date: Fri, 05 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757083193
