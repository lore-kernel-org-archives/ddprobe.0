Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074AFB67F
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755824395; cv=none; b=MYWWP5RkJMGbNmA0g+Xdy5cs+KKrbp+KvUwezgwfRfS2GWVsv0e4lQu3hWoKCo8XDWAX+wx9ZORD6Ln9IESp3afVIyVe7ZjMeqpzbLYk8c2EkpKMOmhot0AOsZPNYvxpmwPp5G9/f4XH7nDzxOZl4ffoEJ47bgGzrbEmX3xqTIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755824395; c=relaxed/simple;
	bh=bYG7CcIxqlDLJhpVU6aLiC7GDHRTkh+JiTd0KXyL+Q4=;
	h=To:Subject:From:Message-Id:Date; b=p5WwsTAOxV4KN56+sqbP8w1LPkUBus02419hHqmX/4CPaN7Fax48PvG+NhNGzSg7Uw64bam5gzdMtZEvUeVHJeA9qL+9j2DR1+RTl7688jvUAve4E+gXIUpQ0wslZDKbGwofelsN/RAcSLZXyx8M4kBBVp2bKOGuzS6KwKj7qmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3KgZdYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3KgZdYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F57C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755824393;
	bh=bYG7CcIxqlDLJhpVU6aLiC7GDHRTkh+JiTd0KXyL+Q4=;
	h=To:Subject:From:Date:From;
	b=s3KgZdYUh/+gl7rUPrslrruuK6FxHQaOXJDKzO7AOSTxXi0pjTgobH6LxqcOFelmh
	 NVi6dMYUndK9FlyUN+Z64CFlDRicVJLjniYtkgoI4i+W01/rPIOC3yK0ZuZQxbbTVj
	 BBtA0OgdX/V+SMeBYlgDKBetg34LCK0cpGYyL0nShwXEdl+sR9P1vLhKBtNiZAcId1
	 6yOO8us+bR2m7iLZDZFsbSD6efPvDxYKpjzccUmawR9VrY1MUPHVJR7sA8opYNMEOz
	 QjpC6AT5JaVXJxi6cw0EEvK5l+aTFe2gXbO5zio5vG1MCq8udhfL8f4/xuImR1XMgR
	 KmLTwFDCx7+fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DBACA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582439357.11077.16265401272263555599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea78b66fd4415664d2d5ce107c54492f4931a9cc34733d00a2595ad922eaa15f
Date: Fri, 22 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755824393
