Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DBD8494
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737828954; cv=none; b=t463J+BctLXYhkbzx5HhUwEi8wdZ7djvGymxtp6zaLjS110YpqzjPVgEK+6H+aR8wGjNFn9mqRuYDBNnQJc2LdNwdJx5EYwwUWTcyWjjCO9esf6LedEj1UJDu++7whaLjbZOEcHfm0M72CGvquIyYpGIgrXtBN5lngEKaqKTcMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737828954; c=relaxed/simple;
	bh=I9hiQfjHh9HXvTIFy65+23cDw4B5Z85hyF5lmFXNO20=;
	h=To:Subject:From:Message-Id:Date; b=JD1hwl5PjnWmgoyIVz+BwbSN7R6zEUSWaoQG+8hn5rNjlBlZaLOm3fk88sBIkY6+sNNTLpDM7RyRQNoJeuTh5ydN3BZDvmxLnIVvcbUBe9/hoUalYond/vK3J3ugv1hwPELqJ4+a58elijZJ8IMsq9OXcjxl18YBea9BBD+da6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkAmdT/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkAmdT/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A53C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737828953;
	bh=I9hiQfjHh9HXvTIFy65+23cDw4B5Z85hyF5lmFXNO20=;
	h=To:Subject:From:Date:From;
	b=gkAmdT/RqalD/gMyMH7IhfK3WZkeMRnJA+jl7GX9UtYcjAx7k6feNoOXbHyIJZLeR
	 y5ujK4g43xNqZCExgT9V+IR6haT6JKbLQJg5LvT/+saJGsHBar9LnVFGxzJblKJy6p
	 H9ew4v2Gxsx3kKYwUnEy6cvAv4eZiOEMAlPBIxgeA4GNSRevvYxNBEIDVkzUUjd4wk
	 SJd+t7uPUBlbw05WSRFoZ2XR22MYf/7iW1ybyg3ZOjplA4LPRxBjJR0dmwvR9g5gzU
	 ZAoLWLBydpc+rnGHAAycwmofVUgnAr+u3MCZLm7u29ORtZy8nFWFLSnhc6y6j4lNvg
	 h8x0LSy+1HmHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B6C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173782895357.28390.6932431796930129072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05cbb800f6432a6966a8371e8d47bb0dbd9efea3c749e55e74a9028e71429b08
Date: Sat, 25 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737828953
