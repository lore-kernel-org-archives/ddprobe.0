Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062EB15A870
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716829463; cv=none; b=qRhQo0IM/8y9LuQTESTGkjh2I7C3RAzW3RsvA/4cp2B1vXypvaQEgrRZoXVIEfBYXrs2QJBehOsnLWuZrCjXdZCYeG+SthTuLlhf/qMoBDRqG22ztEbT8yu9kKfdZ8RGmr/03MUR1RZxvSOUXTqLhFVKUz8p+72U5qTffuFow7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716829463; c=relaxed/simple;
	bh=vX3jFzJVBVwXQk7gqZl72OXaw5yqGw+6Qtut/3am0mw=;
	h=To:Subject:From:Message-Id:Date; b=sFkVx0Z5kscmKSdWnfXQG6eQKHKbfN1Ctajf+T9Fs384M3ztz+UjIuFu8K9XLFNwVLmKi1U3p3uLOrKQI8EkF0BZ4uxiq/b696yReGB5ZSy+ewUkUAQEe620F27uM3n4znDeKhfAOh84EH7FuBhT9zAQ7Cls82TWG0gy+11dTlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URZOY7oK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URZOY7oK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FA0C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716829462;
	bh=vX3jFzJVBVwXQk7gqZl72OXaw5yqGw+6Qtut/3am0mw=;
	h=To:Subject:From:Date:From;
	b=URZOY7oKLNz3t3OOUUBRiLEyGTcwWXMDu6ihsu3H4uJMcJByKebmEO0egFtewxAIF
	 b5zwGKSYvGmOPVNWsILwBmCW78mXa/X8Sf2y8dXrXaap+7ZKbSTCDB+o+fZ7NL0lv+
	 qw+2pb9qSEntmgdJlNBqQJN/HyLX/Kuk/cAIxw5Bz9hnZK8HBu2ePPztjaqCm5ZMnH
	 PNbDANVBzanmvh+3hjS7VfXZLBxwUOeHVZgon7+TcIYtvt82aB5uDpqGBbyNunrh8d
	 kT+Sb1Pj+pUjhPsl56C/TdwxO6ktWMDUOUPwR4+BaSmG3C/L1kGtO1O52jivqowbcW
	 OCiy2AsZO8ysw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C119AC25B78
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682946278.16901.6131712018937268980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abea4a2c4856a8c741d490fe1ccdbb28ed4c71f471bfe8e94b64c6ed92e1a8b
Date: Mon, 27 May 2024 17:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716829462
