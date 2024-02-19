Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA7540BFD
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708368497; cv=none; b=IVyDDC6u2ozIK44KO3w1jQsRLG8wZScg2DP/Na/dp/yAcCMksk4LCupIy5IyQ8J71x1uaBm6kSJK78bB3RP3Hzl0seMWvgoPCzil4IUkOnBXViPvX581p1wKfoSoiFIjpkh5nA0tjXeFrpu1tdAQgo0MNRtTpJJhS5coYS/sX/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708368497; c=relaxed/simple;
	bh=MoxSr3UI69snz4+4wHaazUYbqqXRf7oBVGNg2U+Eid8=;
	h=To:Subject:From:Message-Id:Date; b=u9U+YY7QmQkD79zjOWC20dlwyA+UUueiiOzXaPHuKTA4UdBJiB91jVlPdAi9Bypjziq0oYzW9kzqNNMzjlCJq4Qujkh3bUHesxY1vnuYyA987g9EWpDJ1aFYJUBuPtftgnnaHtLxWMyKGajZdIwB68Ox+MFxrSoN3UGkEw6FbQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+W8JyYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+W8JyYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A962C433C7
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708368496;
	bh=MoxSr3UI69snz4+4wHaazUYbqqXRf7oBVGNg2U+Eid8=;
	h=To:Subject:From:Date:From;
	b=Q+W8JyYcOvxDryIMox7aquMpNHyKBDmhk39JkCc4UD+PDj4JDyPBAUlLQMzfTPEoQ
	 yZzYQrUVEfVc33an9G0zFpgf4GNLsoZNIPPKIF8uWAqqAiYjFA3XBuejatolSHIGnv
	 pn5biVjTCGj1GdGJw837F8uyL3wauzY+y+eyJ+BDZIO52H/LNxOm3WMzbLJeMHEvT+
	 h7Q7OXC7XoCtwIQxJSj57G5+ZK67YUWu9327fO00mFi8XljF76E6dAI0uJBDqHr5cK
	 pg1ZbtSuljUlLSjKvlz4qfXe7+f35gbzRy1yqP9grJoOoa2LJKD8eogsYLpsoat6/L
	 jtoMBW6l2jc8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A1FC48BC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170836849639.24785.11315203686599386439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2309b46f6df56d7dd4effdeed2e85e16eefdb29d3782fb6d6c490cb8a26a8833
Date: Mon, 19 Feb 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708368496
