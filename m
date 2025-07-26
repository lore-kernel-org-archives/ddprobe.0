Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395CD1E231E
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753506594; cv=none; b=A8d6/WWBntt5F1HhdorVAM8KUpHXUCnTgYcv6lKkKP0wj5ZxX6dhBjawb07ihn27B3I9hayuxCs7/8eVEhah4hZDLtZFDvXidHnRzHfBiGYrWYP0wsO/gToitWvBEIuKG8626ZPlVWeRRrPdSWoPwCg269FAWFgyTm85Fl8NqyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753506594; c=relaxed/simple;
	bh=9j9Rv43FdTEnt5GQ6SiHo3lvxd2aUQmwUEnMkPdxGpM=;
	h=To:Subject:From:Message-Id:Date; b=ei1fmRmUFrsVn2i3OqE7Aj3fJMwyp09wPdLDaXpm70s26YNAiRkiErUR9D/N0uDAIcE5jms7Kg3zWVrhI5o/QU+Dmt74hZfhc1J+aQ29psUMmxcOqExt/6X/ju3z4+tWTmpc/qdJF87lwTVbcpc+rH7W0ZJWENE33prR7DN7WZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARdFg5HX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARdFg5HX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6294C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753506593;
	bh=9j9Rv43FdTEnt5GQ6SiHo3lvxd2aUQmwUEnMkPdxGpM=;
	h=To:Subject:From:Date:From;
	b=ARdFg5HXdkJbL6ypCFsU7xd00/gEYAWQ0cWd8aITb6ihwFaPRZHMOwgiMnoNABXPG
	 5fAN3/4ILufV22wuv1Pmon/mBlQI7rX08cJY4G8Ph1v2VhWHnyXB9CbOSbXxmAd8Us
	 4Rbv4xi+ywCm46Pzpxi2ruYbjX38J2/aYGctmYzcHIsxp9D7OyW+9adroIg7ckT+D6
	 KPASmhwJeEzUFlgRY9EpgkO+JlUzqKIChubFaGlxD3TIzFBTi1hHEZsb5LBI27qOXG
	 3cEIS0VPSreJ5+SIi9173oMURfVI43L4d07ycbdio24A/sfwowcCBOM3JlHV1imB4S
	 WCuhbBskVoTCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D1C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350659357.11687.5222791503130305114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7635749e1e600b860d257c8fb16a4705670df20ebf084794647ac8a9eea1e7
Date: Sat, 26 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753506593
