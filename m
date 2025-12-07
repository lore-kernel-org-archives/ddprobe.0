Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC233B8D71
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765109574; cv=none; b=mbIVlv2yvj/b3IiaVwxmC+rkEqDoijFkixdiYWPYSFo8SHPY7GSH2hPnUvXsFuKOJ3SrqAJ8HPohoqmFxmgOuDozxOHq+LuEJeC+C8xxIOMHhaAe1RcZWmcfM5iE7ogdja8Me4kgW0qlwjOI1SCjbn94WCCoIYY5XP229/3VzqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765109574; c=relaxed/simple;
	bh=5aqtw2kPg3k1ft6LpWuor9QAzRqXypzuE9h+ZFLWRjg=;
	h=To:Subject:From:Message-Id:Date; b=a437ehZkS2IGNe4jR4ve2rZMvIF4BLwrHrpY65ZmgzPiDZYUqazDNdd8+V+I8ByvLYhuN+1AeErKhg5hd2a4EZsq5mfO46c0Samu7hJFHHutcpSpZmVr0hq19F9P5iam58GpmQfHOiQzX9XWhY9avYXbUNp/oaj1d75H+ItZU/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTmvh3n9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTmvh3n9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF83C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765109573;
	bh=5aqtw2kPg3k1ft6LpWuor9QAzRqXypzuE9h+ZFLWRjg=;
	h=To:Subject:From:Date:From;
	b=UTmvh3n9HQSRSQQCr4NgkcB9/icAUUnFK/3ADhJvcmVdr+ox4gv1b/dDwjD1W3krV
	 SURNZWKKaoOdDeE4uEuqD2FoudtvradCJTrl1R9HhzhT6Uwr/mf3WFVAxEpZpHmk1u
	 2cmRbVFOZ032TWtWvUNvgFHDVywkVLtSynzV2UsAcdGnyP5Kbcd2aJEP3rj7x0KC8U
	 4ybg/QftGpP7YBFXyRogUCcklRyi2OUeV28DnMcbHJqTtCF/+GagQtld3CmiWeJV91
	 6ZXhYQFbmc7WbOvLyMMGuQtwS3qSKwFx7G2Y3O39W+2IxoJasIUF1mD9EvQWPaTo7b
	 5lQtCa5Dp1qpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97511D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510957359.26817.9977206230813592515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39531ec866cdf6b6b42f516db1fb7e7944c73647b3804510b3ec967e045f642
Date: Sun, 07 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765109573
