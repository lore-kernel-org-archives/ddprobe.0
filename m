Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A427082A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749791394; cv=none; b=fu/Q5DnvcNKfa7okp2ej+PMOXnYxmEXq9baasrizDm2e12/5jntktWnh13LQez5urBvKZft61sB+qET12AQmmidQBt8tXcHWh2LBZsdYQQgir4tzwQ6pn/gQiXN6zU01qoihU7xUYhOx+kgD5Juwg3a51EIj8slmstr/Yg5ij8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749791394; c=relaxed/simple;
	bh=GPquVLRHqo6BmuqLdONIsx8OfxOqViPas5LHF8u+Qyk=;
	h=To:Subject:From:Message-Id:Date; b=TOSQ6QsGMtn0ncBWabg62Wy3gGXi93r5yl7QQwycbnnrzFyg9rnv3kYRwQMV5Pn0W74D2ciKdHm9pvYXc/1mC4ncJKn/YOmjQzaPEpUFCPv9hLZblhA/lfkj7GaQgZdIhzjg8fs2seGlwdRUMJvSBn6RiaZTVdWK2QGFyCy1acw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qx8TU6JG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qx8TU6JG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E70C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749791393;
	bh=GPquVLRHqo6BmuqLdONIsx8OfxOqViPas5LHF8u+Qyk=;
	h=To:Subject:From:Date:From;
	b=Qx8TU6JGtWczbcywkLzUb6mKCllDifseyfSuy/gdhht/kcguZCi7cZftAhgVLyH9d
	 PisHrV4A6WgTFXx+QJFcV+IsCt7zNb39EUF+xqgOoW6RGGhrzHAOftdWG8pxErmh+E
	 zES0LHJKNxucXDfciYDraDnwbjCQW2YePUhM6xdluHI5rxaAxQLaOltWMG2ROCNYcy
	 F0Us2aa5ETy7JqH+g98kFX8jYWSVLDSJzTGOEJEU4aJ9ZImFpS+7cE9nOomK6OFH7i
	 a+aEDkwxkAPyGuyWfeFkLAK9NoZELrSFukbc90AT5ryBhSHHIu21jTPneLItEgo16B
	 sJDx55afltERw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924C2C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979139359.25402.9869704064976749366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222ad5ffc1e389229344540a08cf576c31ac68b4018bc48cfa049ee6a9c40762
Date: Fri, 13 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749791393
