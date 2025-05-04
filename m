Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534ADEEC3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746403195; cv=none; b=YmLo8u7cMMJadTHElxL8Qbw3HMQc+0wUsVCYh2F6HaQcWZc7Vl6u5VxkPx00PhBpOHGnFTpgOInlErqjdg8W5aPLMgWeLYfZkNd/PfV9mc79v9G6dwZpOMhDejD/8QiUtga4H9fAwGZpicMlYr4SYvOMrdihzhhIh+LBzzbJerM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746403195; c=relaxed/simple;
	bh=kes7512BxXCdRITyB4EuIzoKLvxFA6eq4l2KbOHhLJI=;
	h=To:Subject:From:Message-Id:Date; b=HrIkn8FUFr1MSVz93PPGLktLAsDJLmRWuIGSzKKxZvTL1J7CwMeWQY+nx9p4yKtoA5Uurafv9LhiPi/8KUxvHTOaArb8rbcsu2trWlQFUKH1Fg3mVWaL/r/wXEQz0h3l4EfI6LHAsUNbeQXhXmjO6lvFeolMAzum1Bo4QTMgWjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZeLcNWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZeLcNWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCB8C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746403193;
	bh=kes7512BxXCdRITyB4EuIzoKLvxFA6eq4l2KbOHhLJI=;
	h=To:Subject:From:Date:From;
	b=nZeLcNWgVQrVy7IZBoUCT11/C3QPZJHGIiIrmlaKDce0lwLSwafr7Fc0X5d+DBZ5d
	 I3qxzopj8jivHaMOTkuTIOBXuv/k6y2dM0ZqSnv2iuwb80NIIFHAoIdajxSzeejX3O
	 5/m7WMb/ZGr97k9bNOjXFfYdDr8dx+ih3ivkbYdt0IZ+xAobhSX2PHGISTowQNTRFS
	 MfKiSfzqsgZhpHFEJzbh3tNpbzP0b3PmZVm00jYVtQiS+goox924jS0wfCwPaBiWwX
	 Ul0H9kmpOeA8U71JCviUUeCH7guHqBS5YBu/XFznhHsZ39F3bHL2ZDtL0zMmJIj9eF
	 sRkHFYB390ang==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D823C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640319361.25741.9988849694549492378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22be34718ac9518c7150aae11040ca5f7abc70434cb5cfc358ba1239198ecdeb
Date: Sun, 04 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746403193
