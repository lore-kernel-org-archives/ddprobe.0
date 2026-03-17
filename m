Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD565CDF1
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773779694; cv=none; b=kL8hRKzUDGqyby8YJORVVSBCEdAHQQPX9VGwzKGPfvya+2k6iHeqUCJfJ2+/UJGoPEXj3N/Rm0fJY3YBEvdilrxbwsrFtyPYrGpWcoZQJKBw9bTMBHYMJ0g6yzmya++720YQCpUrPYf670KMdm026xX76OWBXd5TBXznt7bPqgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773779694; c=relaxed/simple;
	bh=IPL7Sajh3gucX4EuX2p/KV3nceSalPSC0/TTiy348PU=;
	h=To:Subject:From:Message-Id:Date; b=eZz+AlhY+kre1OGkJFbz0w9Sf/y3YgmlqWesN6+fjLTi8lLpJIiA/kmcvLvZYDXpDpm2aG2UAGgRsJ47g6aMnqI7peIgcSzvzvWDqXHEuVoNaD+byUYUdYE5OnkIJ4o4wVoTenyvdnQqIjxwj2rkblccilSoagjDWQpXCMkWAVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6413s3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6413s3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2637C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773779693;
	bh=IPL7Sajh3gucX4EuX2p/KV3nceSalPSC0/TTiy348PU=;
	h=To:Subject:From:Date:From;
	b=I6413s3T8nlMkrmZELxJ2xJ9+2WlWf9Jru0pfUlW0E6utQ6qpf3k6KxmHmWHpEW9V
	 xphE0/4Uv79Um11zCrmJsxUH4WXTFa4itKu0smym362YxkGBpeSPyDMZNanntsO/Ff
	 4bzDIUvS0VLey154N6HPduJol0/RLPtYwKRv+cihP+eNEo4VJlDykDOv8T4yiQbL1T
	 kXmgU2dyprMMNBQ/1QZfhHFCzER3OgAyDi6nt02DYRrTtIUh/vdbuAgHXNt7H/Xerj
	 Z7x/uAg4YczJ5pYu7rCC3nuWd3kRykG99nqrLuTO+AHoJz35fITU99aJ/7sInNHpUB
	 evir60ws8UHGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F538FF6E72
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377969357.8092.13518219260157662097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01cb8a74ca0fe248ea55dbf75e9aa9529a9affdfc6ec9b8ad185a50712ac8ceb
Date: Tue, 17 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773779693
