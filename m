Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122A31E4BE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770656034; cv=none; b=nXdF2B6CeBaFntfaQMFFft4cXDv4CpdvSlEA+lV7G30IBnZ6MMMZEYwJXbjxqDd+F2prsMVGZyCqLpu/iXYLgmWvDYrXrUrPyZfrZGWI9/7Su/TRaiFV8krM5odsYCRTwK7gkneHf2R9MF07QbAS6dQMR0FlGojXVqOH3bFDtZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770656034; c=relaxed/simple;
	bh=8AMAGP8fOjNR1g5N9kh5TjwYb3ctaY12kWyDd8Gnl94=;
	h=To:Subject:From:Message-Id:Date; b=DzT4XSW+++2vCEqbPXDdUhg4EW+MrbqQj7kuTaP6raqGlY6kKQAHpCGk7IvzPiJEjVPf6b7cQZu/VnahYS2G6tz7FfEwIP49ZVUn60I4Rv6U94rf01qHnW9snxAF7N+XKkLeiCs9VYZK2D+YRc1Z19vWohKBShKqNA4goThbxOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faUSLgcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faUSLgcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A377AC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770656033;
	bh=8AMAGP8fOjNR1g5N9kh5TjwYb3ctaY12kWyDd8Gnl94=;
	h=To:Subject:From:Date:From;
	b=faUSLgcWriVvEyzmlsYRanAYxxWe9IV5vEeYgndQ9ueUpabo86UMuKkQmmOApPysy
	 Ya5HKowWNqMWWNZ2guyVbSy4v0sUejS4znIoz+QOYwqc3HAcqQ9Yfa5PfNdTn56Gds
	 lyUYZQ6jvRi0pwn2XUwR4JfrinwQdtUuU+06s4WZexA4oK0JTCEQtsVLyhes2sId6h
	 omX08yoakT3M53LT1euq4BBLtH2L7SvypeLg5SXQhpqkmixdsePzWCYtpKK7g9KFZw
	 pQJ1dKOLIcfhHakvi0eXmm9+O0R/PK0mhJX4wNfITkr5roJ4KyG7bWAcKjaH7eXdfr
	 a7ehd4acq4fOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93646E7E0BC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065603359.8985.1269090006106863949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a5c03357718f3f7fea5fda798fe3a54a6d105fbf93c4f499c9d5a1578759c2
Date: Mon, 09 Feb 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770656033
