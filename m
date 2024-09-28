Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B151EB2F
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727540154; cv=none; b=NpPXebdtrpiTokBQzHLC2RFzg8qWR0cMR3xzwmJZhsDkPtWCw2E/tOY10dvSCztmOF9u2Ujv6AGgjtx+UUZCvf9owP8WxEXPggZ65fore+phhvTzXkELiBCZs7GMQ9SVqlO9JT8sky1BOLghznAW85tCsmn5Ni9tc3ARXOv9y7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727540154; c=relaxed/simple;
	bh=Eu4yMpx7JisXzHnEOhgWXkoRM1PGt/ELXwniH7SODbA=;
	h=To:Subject:From:Message-Id:Date; b=l1KUusR0FzX7gwkth54mWe6Qw/FTlxJUWodrcNlP7wV7m1yDb+F3rEL8lytGjdkt4GY/7JpxJAfS0+df1wEEuXzMaGvJZ1LccqHXmSp+UrFW7mH6ltj/TO5h8tmcdCWcNsZrZLoDWsSPRFw0plTQa9zSiooY27xAGr5/4tq9Dag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ui7QrOY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ui7QrOY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4741C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727540153;
	bh=Eu4yMpx7JisXzHnEOhgWXkoRM1PGt/ELXwniH7SODbA=;
	h=To:Subject:From:Date:From;
	b=ui7QrOY/PUwIeGcq3bHHoI6qQztgjfuB+smG8yGgsIa0thAIGky9edBZTqFE56I0W
	 wywUdSGE8itz2L03Mbuogm+YehDsGjesZo9SNAxXMCyuJrH2h1vdN0Fz0qRW3iHOWT
	 TVuwC+oNyPn3ksLLBvXGDsOJKJ8WYGqXfOC7SejsTOoinxzy+29wLwpGJ4iA9xts3+
	 hTEdbrte+e5f5LMS/5o07gPa0kzbFqbc2BiRUnTqQjk4A1dvMgNj/mZtkjkfkuh8yM
	 KmDWN6iYeERCW3QlGQfhnMK4pYa7Vq2FIEUHMyMSIrU871e9cCfJsHpE5n02wzfFNc
	 g7TAUYPJA8NZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99405CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172754015360.2433.8651348087950746839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027b42edd329cdbb7ff6ece96314b1b08eb5ad3d4e9f2732163d724377f64bd8
Date: Sat, 28 Sep 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727540153
