Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B29F132122
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740955734; cv=none; b=Gw6BkIjzu08SqrjKY8Yk9TafXI9jv3b1J2UFiaIidZBt1KE1eZuDYBVav5CMqNoh6e83r2vHKAgqDGWAXrlzUqNLzZ10aT1HGrigwPp8YMqco4PxAl4GHokOUb6DUjyVCeWcDFfeR80YsWGUja+vScb8THLEz/oSAQ/CrYqMIbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740955734; c=relaxed/simple;
	bh=tOjrxYgFphOGGHQWRrBVaNMWs5d4IMGW4SJJ5sisFvg=;
	h=To:Subject:From:Message-Id:Date; b=lirB7/3TSM22IPp6g3lNjA0fh7dbm/q4hSnVY9oOjzxKugW1hVxvREqJyVcY2y0jbgXTwQBVd4ZQJanHtQY87XISWZWrChk7DBzj6pa23TcjR22kVqsdYQxzpzZCYSo9IWSFv8jRW5rA13bMRuNqRyhrEnURr9r5QsMnTc7d8w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiqiG3BB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiqiG3BB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10A4C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740955733;
	bh=tOjrxYgFphOGGHQWRrBVaNMWs5d4IMGW4SJJ5sisFvg=;
	h=To:Subject:From:Date:From;
	b=FiqiG3BBTTf5e/aXxs+yuv02NTeKvj6VQ645MLKiXVcBERtPCLsbvfj9EOZ9j/7D6
	 Q0Pnq6kMimvpaV781OttxKC8kM2+0ORw2r2+L4NsRKEjgn//MPPHBPpUBa/SGlr2uv
	 V9bMOgBoPiy6G5vAnNZQw9FL1vzorVoGJyUe0jQPzLrZ9qiGiUke7dmAwlbqpzDU4j
	 UpXP5n62LGVf/2h4jS1gPBlI8ntHfPbL3v+Ggb/RV+mwMfWFohFoR4RYnm58iU5X+8
	 mHbNyd74UI87fAWFcbMqMYuNvUdS1J20cWuh9cDkp+hFZIc1+VVU6vVbAClskDho9R
	 vHVma9w+NJ0+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1D1C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174095573364.26296.13308695904332425649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185a3550840e02cbb43ba868140934de5c5fb72b70236f4b50e17932c7feeb6c
Date: Sun, 02 Mar 2025 22:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740955733
