Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51997282F1
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719771263; cv=none; b=HZqBv0c+8omjgE4NB9CQh3KY5uOEgzKJxpSifRt5yeVeDkgWJPHHKsuuOwbX/XFI6ab5l6/V+FFXCnokJ/KHB/d29oueIwiWywCbEe3iZc6P1j9gn3FGyL+6veMJnNnYeRtJxRRpAFhorjCj0KPsx49QLe7TNdutMCWhki67AGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719771263; c=relaxed/simple;
	bh=nU/b0ik8Osq4AOHkEJzHm0JIAIJoYaqW5o5DIQcvGy4=;
	h=To:Subject:From:Message-Id:Date; b=CmMQmZQ6ApJGOI3VICjiFlc6fgF6ag8pQi3NFM2GBLi16x+VYUwUkWDNqhPBNWBdfpa2h15M9auHF4Kj74CXI2fwkDb7iFVjdNcRkrR43wJO3BXV7LK9rOmF2b3m+u0PUE9Z7lKDjtCdumwUkwqz+dGe7Hg8CAvX+pz/9fPDhOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtZ28ASG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtZ28ASG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17EDC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719771262;
	bh=nU/b0ik8Osq4AOHkEJzHm0JIAIJoYaqW5o5DIQcvGy4=;
	h=To:Subject:From:Date:From;
	b=QtZ28ASGHB5MuAeEQDVUn1kubA7m1eR6a5S3i+pvTWj8g3f54o+1gGvZzN4YSO7+y
	 KMIKdH1agMT4tg/6Suu2s0fQU90TlpxZ0RpnnXqJ3JcJU6ize7fGj8DIxwo7t7Jt5M
	 F7cFVGETw+AjoRYqG8MfMZbljzqB8bhh9R8cI5xDODpVDBPGfqjTUsBURGPVbcdSTA
	 KXBPGNKlsCGb9IALV639RihruhQMkmMUC1Sy0LcnXcTLeSRdbqPWjWtx1/+GosRKCe
	 N9JwlGhEiSJUCBcxryikPdQUnInwcLdfnbb1KBxDZjK/BshKizSv+e6EChW5ZQQVa0
	 b8yHYVZ6kwesw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1218C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977126276.30549.6448584356919054936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd2596c14964bb7d233b32d788bb7345e8b701e1addda2f2ec45446ae93d862
Date: Sun, 30 Jun 2024 18:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719771262
