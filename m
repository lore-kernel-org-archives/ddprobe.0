Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A4130EF9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757347794; cv=none; b=aQqm+FZPkd/bdR0UbaPUuQeDpjCW8gXDIqFdb+BqWZpfWOPdBOMyMci9297Udb7QV4UZUKfLL84cxTvNl9Ntk1Gdkjv8BphGX4pKpei3ND9j+/j85UOff5niP6YoFLb+ZMD9iHwnStYXS5IOqC3+9/6dqA5WDTgXRq8SyuAOR3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757347794; c=relaxed/simple;
	bh=di8KX/93tPBtzNKQm7CPExHRrrSkosKXA1knFxUw3CA=;
	h=To:Subject:From:Message-Id:Date; b=tkSW6YsWWh+w0XRPxuDJLU+8KzAN/Lxjs1uPRhFJPFMdW5tCgTZQ+DTPruo/h/iTagNJU1vsejOLw9aWLtMrOEOQebgunm6zgJKRg6mjjBj+2smXDSHz0K0fDaiDfAKcMKwIiTBA9V6UFXoR8tJy1ZD8phCrGRtEOgv53lDld0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnbMJb4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnbMJb4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A180CC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757347793;
	bh=di8KX/93tPBtzNKQm7CPExHRrrSkosKXA1knFxUw3CA=;
	h=To:Subject:From:Date:From;
	b=MnbMJb4bQOSJMbaomG0rIcz7TGAqBW2jn7eAP8UWldDPcJRRb/gHFeVq6URr/OuoP
	 czTJ5YqXEr6RFGPE28YNA+4rrZSWYO+FaN1hFj2TfJMtGX4DVRHA0Foqk5eKU8PD/j
	 +yaba5OElSyNihSjUqXJel/LWOPXfl/DfJU9De6Tj0wn0YMbATsw02Ll6nH7KYsZho
	 eF2/Ey7DZj3E5wf91PdUjxTqjl31OAGxsDSnN/os6VR/qP9ZSM6bzuHKfI3a/XVla9
	 9oeUznerrIs+8wmPTEwlKrdR+MN3VDRhGAxvIzLT+BxV3UBTt8C7Ff6LOg0Y81lqtv
	 yUBYfkj64u0KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F9CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734779358.16059.8225706745151442267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05be3bc83bf7f5be96a513a43a306efafd8309fda19b76f75c187a4027433a2
Date: Mon, 08 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757347793
