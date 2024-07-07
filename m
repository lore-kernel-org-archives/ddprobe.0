Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AECB193
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720311383; cv=none; b=q9ynM3cj5b8f2ydkQh+vSlKV+Lj0sTgDfUM1CTxdvsI4s9zEN5qDsWIieaBPyg1m4JE8ub83bla8kplbadp8G6pCI3d26uxl+RCrl/JjzYdKdlB2MajZFCrMDdENwWPbyLClcnOCBKTwxe/jat7rhYX9NMABRVNnz32tLHTA2YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720311383; c=relaxed/simple;
	bh=94Brk1Ab24jNbqdluG/wrL1qVW1T2qGP5vBFaxR+ThY=;
	h=To:Subject:From:Message-Id:Date; b=FVzmlJYYViPol4Z3iB+PkKZgitKC+Fg1pPTlFxc/a8GOb6u6QdYaKQgCoOWusrZJmJ7kqzA5MU56y2z9quJoTacViAHN/Hgh5qIWxXRtdm6iM8blXTRgRN7XwuqCcyotGZKJQRUOiOfXdOQcvEzc6JR8s8IZ3nYXvKYRZ+783QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4v+ONaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4v+ONaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF00AC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720311382;
	bh=94Brk1Ab24jNbqdluG/wrL1qVW1T2qGP5vBFaxR+ThY=;
	h=To:Subject:From:Date:From;
	b=p4v+ONaW4rBpMb/Eyb5jt73FTIWI1QWCRy9nngFboBOC0XVw8OSvSqPEjnseFv+C2
	 ySsVFw744J2JuWmfVzRyf24BpgktZa5gf1TMtEkM4FlvAlIlyNmNtoiVRmCY/+anIg
	 Sv99EaEudhErKUhX2SdFNSzy+iNfTwJ8W5JeC7JnxcOT49MQDL5ntnXv0oy97AFDEv
	 uEWFIaC9nvxMkPogRiRBtXdTunwo/0hWHdiFnYXHwDFMFpCIox7lwQ33DnhM5+O0Xp
	 kYKYrEUfrGsR2wOrYAB7XjObkQsQXc49Ewi9d5T8bQ3R9dpmE9Sh8Cm761RiYzgoow
	 rSng+V+Yg2QKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB314C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031138275.24791.4015996268718925420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841f8dfdf2aa5cad6c3d1c4393e0c1fb42adc8c40c3a8ff223a3d24c5d8f82b5
Date: Sun, 07 Jul 2024 00:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720311382
