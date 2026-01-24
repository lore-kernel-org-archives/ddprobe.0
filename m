Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9751A262D
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769242434; cv=none; b=V+hYfXXgGRoHk5+nZ6imKW0v15Uhbg436Sv+cbZTCQa3FaUOyHMuQNWojNwQ4HFxkO5v4sK3VSM4S371SSs5Pg0mTuzyOd2m9slft+2tf6t+U/9Kz01LkrcGBgPmzX6cQY8Zb6/ZraiTYtDmIj51wPGkXcX4qLV7reKfN+1xdzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769242434; c=relaxed/simple;
	bh=7lqLu0wHiBlC2WXAP2H52o3QNps0t8RZ+x+TO4l+EVM=;
	h=To:Subject:From:Message-Id:Date; b=FRbKIMwl8hbu/azrEKvXn0yVdHzEhWZRuik7KREH0Bk+QF+IETVC7HleO94kofAcL1v/ejDlrMQuVUPRd41+Rz0pzUc0VZKrX+k1jVREdkCtcvdYeVeeFs5Ttq5rvM65Rlj4kmFL5lZcY9XqwvLyylKwvwqf/MP0e/QMXWt6rcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWM6oIs7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWM6oIs7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AA7C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769242433;
	bh=7lqLu0wHiBlC2WXAP2H52o3QNps0t8RZ+x+TO4l+EVM=;
	h=To:Subject:From:Date:From;
	b=nWM6oIs7/7ZlR3igcNcYDmAyDTty4KNY+QYfnyHHlmiLAFupZDbNo9g/bW5eClhzt
	 rm6e8tyva/iThrGIxXGaTZyoC55XUF5aNPV6qXPAAsb5HbntzhROWQAqlNl7/e2zUg
	 iTM34e5CamGqLZXpQJog6OIQKqtVD/I/d7ad7ECNib2iKKyocLtslZjuWyC0Ua01+m
	 P5Ko7+dBtrJeZ6LsizDdTopRyBwrhuS5UIkMjkkfNjlGNkMfyYY2cra79Cbi2/ZuYY
	 zHm8gQfMQ9K4nmqh+wrg4MP4z9TNi+LHe/I9H8K7VbrmnflzDCAGlktM/BtIS0r3Fy
	 DQj2gTbZshv8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95091D715C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924243357.10785.5890822611478951521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d6e5be06007535e291c2e4c3a0cf0516f76e8f73de7d1df039a123f430d847
Date: Sat, 24 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769242433
