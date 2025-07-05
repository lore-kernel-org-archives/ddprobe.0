Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F65E360
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751683194; cv=none; b=LGcxACdAeB61U/SsCYYZoWe0g7ZVO8VElNt4iQSgTYlosq2iRI+q6kpUQMSwo61QJHLFOmuHJxM0tIyVoEz1oiOjl1uGT+wWjGZOTTog7VDpGxDaPyACncta0nJGIExSKl4WoupmFOpUPtUzagO4OKfqf1/Iv/p8kAGjT1Hj0Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751683194; c=relaxed/simple;
	bh=Y37JG1+aGXYI5U04YOX7ieoBTTMshyq3zFRJFop1GTU=;
	h=To:Subject:From:Message-Id:Date; b=l/Bfzx1c9z4GNaz7wgfewciCi+RiBUAQ2Za9JWJiipd07HjJ2yfa0VsWQdLdNex+uoR8F5KvW0nLOOO/L5rS/ZD4yQcocLyLwcpcgjPQc1xWotBC/8ATRuX1c+zRMzSCKRkc2aAYpIoy884cchCcUz25c/nikOqgpKvoLvXPaP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfIc/koI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfIc/koI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4823C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751683193;
	bh=Y37JG1+aGXYI5U04YOX7ieoBTTMshyq3zFRJFop1GTU=;
	h=To:Subject:From:Date:From;
	b=YfIc/koIVG5YTuOGx3owxhauGAb5HXowZ8g3dakT0mkD6NqHAGfDF6rTBl48V3qqp
	 3KWW3UHVOxPfc81ldyI6oSkPEi6T/UC8a46WLvDqqWZRkzgP0mijB48wjFJLd2VIQI
	 wJ5BFE9ua3PK90rtxdZ8yp3GqO7QufME/OBVp0Pevk7eBtjwQnVCfuok8eDGCAOpjU
	 9NF6J9jirOE8lVR+Rm6k3keKsMY6tKOXwvam/lamLEhtgg9TneNmuaMq8L3Y04049i
	 eueRLwC4iS4KoQunEl8G56DRtOl1KxXSItuNqc+POcQYz6uc8jM4pw4uCQ9OHcanvS
	 a3C+eF0lbg6uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930FDC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168319358.986.11734918403561430288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278c27caaa2028db6bffbf0d2346dd59f8a169726ceecb92713989f077743878
Date: Sat, 05 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751683193
