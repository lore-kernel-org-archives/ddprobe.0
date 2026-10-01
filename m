Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E8E51D523
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790881234; cv=none; b=DLN9C5TsHkyQiiAlfd7S2mEMAafUe+DBQDOjnqFZAqzFnymgJH7USN4kAGL4jvUCLX+7XR1dwiRUXkArkwpMvVMUPbJhWR4Dax1r75aGJoMIzaBvwOn7F0S8pEPLrXmIjXYDOOTLhEIAePL4BTnCqnGkR8sIQSm1i1PbJjq9iKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790881234; c=relaxed/simple;
	bh=DPgBi25EcO+l2Vwb430GOM2xYs+pUJFTY0FcldBlHbs=;
	h=To:Subject:From:Message-Id:Date; b=EMnnC+1ooB0wgfdGDdZ5vqaFaG/9kVdNaS/KrG00Oyc9q4Basmk8c8I4EjyLpLrVyevkL1tDIlBDG8iPA9/Dzm4ZrZEztpZ0eH9YHhj8MNCg3mIpUPlm2ab/HXc1vKdNDzLffTSTsto5VesR3HMfhz/a+xOgVZhBXovMBQ+WOkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WR/1Qi5N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WR/1Qi5N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC1C6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790881234;
	bh=DPgBi25EcO+l2Vwb430GOM2xYs+pUJFTY0FcldBlHbs=;
	h=To:Subject:From:Date:From;
	b=WR/1Qi5NItkscRTpyfFUPW+2omr6w66vQMjUZ11x72Yjr69Om94m7pesr0UN6HA72
	 bobBkgweP2ArijtBz133KUiDr1kOLPTo5R5kSTC+EMLbbITB6yme4/SJtkZ6t2XknK
	 TACAUozEeqdQaAYLTJPl39abCvxusf5YxVB+xYILhz40wawSrcREcELM11WgBArAds
	 AhgGnXp0C697cYyYnb/yc4UiNqS4OpnCGl1Y7KlV9vVb5mGd1tPG4BUKbR4OFxsWF0
	 WTCDPY9oKsBf9n7THtuYr/g0p0t5v8mJDVfAOPWc+ovZOWeWl4deJk2PUNmsEOs18E
	 3avDLb8B2AU9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC102CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088123369.28396.11773552808862276041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d4ad7ccc90586908668fcc7d12fc4987fc9580ada98d4e1f6a81cdb53e15fa
Date: Thu, 01 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790881233
