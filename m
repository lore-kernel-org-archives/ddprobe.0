Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0BE33AD9A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762867794; cv=none; b=tH+NwRAOUxXQiaKOsPAm+GX556xyUsfoWDYj5/CVoC6BmDUM091zrUtTXBc+onX+Rpa7uZzb6TX5/eEni2GRXAhC2wNezNt5Vk8zh3SAMnJ0h1A0YA+vo7Lh+I3RMz1CzmZOusB1V1nO0bQqOxVmiR3Rub3maqg8GIR7z6uZzzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762867794; c=relaxed/simple;
	bh=j16ohhoneM7ea8+7VTcS+GeMq1SlB1s6NDCyRPEyw/M=;
	h=To:Subject:From:Message-Id:Date; b=WxY4WPq/cUhCjZJgPWMkqAmUQOZvWgoPCHthpWyoxOOEgI3gNykqmzgJEdLpPYoPB/aHt19TmRrqC3P8aOJ5h88++bj1Gyo40smiNnhgzddJn+0SwcHNjZUZ45SgjVSDYtShuEDp6pxRt4v/ZizlwCUGs6izdKfBYMbv80sH4aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEEGUTU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEEGUTU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D73C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762867793;
	bh=j16ohhoneM7ea8+7VTcS+GeMq1SlB1s6NDCyRPEyw/M=;
	h=To:Subject:From:Date:From;
	b=rEEGUTU0wvUlG0hGWlnho1X1xVtp///xLu7zJZfe4jAO93V3Xy3bhimTkH6vyjjzd
	 DwA4UzyQRMOyKgQD1Ssah/LKUTEM9DBwikbu0XEPt9DhRDalMSup0QTsnmiwrmFQw8
	 ST5HkfT6y6FY6uSpbNJASJWrqAAP39Bqs68Y/9AYrYkwzxASBmIr2YEeW2sVK/98ur
	 x9LFL3zC/3OJGEW1X5k4BGa5IkwWLWk6Xrt6Kyk8kzqlJ+V9b7l9UxwTGOvbaI3OMr
	 9fBa6jXURddBw0t1kOvKeA+Z1n61FJfwQLx0gx/jpxkI+MCw4zmBLy9MgFu9H3stRu
	 3aveQx+ME+YQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D83CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286779358.28904.2311009964630842020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17893654dca48706d9f2f9272c45aa29290dbac777f0f5b28b6ea57683f59108
Date: Tue, 11 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762867793
