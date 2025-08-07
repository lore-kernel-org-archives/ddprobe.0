Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEF243146
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754588994; cv=none; b=Tuqs/hITqD7g9RXCSy08rGDWDdwoEZAaQK8I+Szro3iV3A4Oj5XdvXMIyB4UKpaZarWoZOzrJx7XyTnZT4sHIKbhV1Qnj+2HbNEoxK5aehbqSy0F7CVy1eQzepEMMHZq83qrEVkhTNOuO8HfdEt0JDOXyhyYbz5PYwf/USYZVDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754588994; c=relaxed/simple;
	bh=QiA4mQ4oXL7uC8GaP1wVsYphfkZmjCn3N5uko1D7dEI=;
	h=To:Subject:From:Message-Id:Date; b=WJ++o/8XCC31KwG10yDGgfAINc9ir3WopHEIeSZ6Y2ATFa7RrP10AjmZtaQ0+XxYKdFvVwBmO5MwsEXhH/1FYBlgkczbEy3/RyPsPUTb8+aZxvPAOrqNo+QFwhc0tXrLB4Jw3Wg6FVazAvAa1IBYNSMwYbiPIrXw6q7ubAQfdU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vy52MtLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vy52MtLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9066C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754588993;
	bh=QiA4mQ4oXL7uC8GaP1wVsYphfkZmjCn3N5uko1D7dEI=;
	h=To:Subject:From:Date:From;
	b=Vy52MtLUGmVPRQvhzEbvxan6gFmwA18hQeHOdNHtJ1TZ2oTjMmW6vp1FmrrF0PxbS
	 9QYOTyAWJQn3IyOMrp3/C0GARIv4IHPmJcTex1zhJqbfxjWlCjRvUlE7ni12mJVdr3
	 QBk9yWb1HL3U4irF5SIqEYugS6zmJ26MUk7VityelZX5l1tI0QSY/uETOvNSzfRVX1
	 WLCDeX8AxnrzoiAgzxtEATOxk9Q22oCz3Xkc5MlCnMaGSnQq6HVURsJjJbenx9qdXH
	 IZ6y11LtbtFUecxev8GXThqjupxcKjKfcN1Fsm8qxpa8IBORtEAcKWnSzCFsMHsO5V
	 r7Ja2mpdlqmLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953C8C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458899359.19237.4103386257601628149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a784ab39fc2f0e7a3cd9bdbf1fefaa7bcc8d8bc2ca5453f4f0e4d4e77138bc3
Date: Thu, 07 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754588993
