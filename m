Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162A21A267
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758940194; cv=none; b=EEvy4CMm4jK60QT0xs7YdxELc622APWr/bRdsTAZqjsxOjXufI7ToWxcCGOV0fi5sFrM/IjauuvpldVo6XClbr26Heex7xStdmHg4lQeIP3lj0QlAYl+76oRYVol6MWc6gOKjXCKKLplIvBp6L4r/e51EBso7TPRA5koqxWr7sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758940194; c=relaxed/simple;
	bh=MKHHhP8tVEx3/BAyYo3XLoLXYZ85eW7/Ob1cAm1biJ8=;
	h=To:Subject:From:Message-Id:Date; b=b0CiUpAikA40qGwNjCu6/Cv7R9NUhho9IkMqDNEYmLpPryQTKcbR3j8D03IG0YAOTqMh5iaUJbw3vk+O/QGSrgzEecj06zLrq0yYTjrbqh6KDHN0zE/FnNIX0bMzTbWJfOupxKgfPQOEodeLIDassWUm1Y5YLQ1OMvHXLbNGu3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7Qq9/6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7Qq9/6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D654C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758940193;
	bh=MKHHhP8tVEx3/BAyYo3XLoLXYZ85eW7/Ob1cAm1biJ8=;
	h=To:Subject:From:Date:From;
	b=X7Qq9/6buMzBCLnRQ6IAFtM7eRtDcgjmZ5uzyB/+0CKFTq2uhoaLoN9F89PMmB553
	 03H3RV+FJkIg72HKeV52MHgQzPl32CkI9cYy3kYXNX+WAVqA2g7phP4XhlyCILAVYm
	 3eLMEaYyYM3zopdNtq3RQPiq3740IYKOqAHQH74tAIjScCPhLDsgGEry5+0VK3Cqk4
	 +Ps52dLO4ZvLT21VR1CCAKwfUlmLvTN42CqBYdbaTf1by6kuPzPYYXYtfa9Lcm9ahc
	 +6SFjKDbrj0ZfOI6BpgFP6AUhVS1tIqpZ6PY95ah50ryNVqhJtn30fwXySrd0x5Oab
	 r+6+RKLQtjPGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958D5CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894019360.1594.432989072646717143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be1663ca8592b571f64815f68e62f39d0b88607aa711561edcdc27461a731742
Date: Sat, 27 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758940193
