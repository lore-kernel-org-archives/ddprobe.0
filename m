Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081483644C1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774212294; cv=none; b=f3A26kAtefVKiVXfMvnbBABGZJFEQi69Dkti9jEr3N9Ec6No9GoN5e4/DznZpqPzhWZhXUENm2k0XXvYoUdFJ1co8XwkIa6NJ0cBIhqPkKJl/+VxiELYWY+vAIGX7FunA2dtZGW5iEIT2JAGx6fCiAvNIFCf71aBe2Te6aROWjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774212294; c=relaxed/simple;
	bh=WskhibTN0YY2Az7+ujXDFVmPGejj5cs/B6lzth1sE5o=;
	h=To:Subject:From:Message-Id:Date; b=ECivyg5GpTzyGn2pkPnzPtKoO7fonMgcRoEeMJKEKQtiLmrgopw6wu2jQfmb3JsR+XuCY0f9gNpIXG03/42Yw1SO+BpsQgfQ5QpBHypO3LWZ/VxBRCwBaT9LheXZ8oUOrWKAM+kOTplhnBA2a9R4h6EQlCYyLcbXmrjkrP4Iwm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iupmb31F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iupmb31F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FD6C2BCB1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774212293;
	bh=WskhibTN0YY2Az7+ujXDFVmPGejj5cs/B6lzth1sE5o=;
	h=To:Subject:From:Date:From;
	b=iupmb31FAMeiQHFT44NgRU3bjRwqJv2V8Lq8Yu/5cyptvHYT+0ckhYfDZwYDJrc9Q
	 mWhKJC0xaIgGIMn0zN0ntLj0e6gdquscZCdTFcLaAnFSBw1gIltEdTT8YRrr6zwHSW
	 Ze/pyeVLNK9uEZfzbqZXiqS5m2QPPnuXetw+gyARh5/7e/Z19zDUB2rIZ7JAd4fufh
	 1wuqdNlWx8FmywzHe7dKTHbR7zjiNQ4GX+SAleyNjbBX7ke0+bZxaLP1OXUwO+PLuk
	 1dDxmiiSiICfGQZdYRRbmj1eE0eD/wfqNbA07FoXVQ6povEL9i4+2SXw8b+hbE1NYN
	 uXMyQM6+wp54g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973B5D58CA9
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421229358.10471.1611752588194674298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a1bbdb3e105f7f4597b5126309b4c58361e3cf82612914f739dc4a25e1ab45
Date: Sun, 22 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774212293
