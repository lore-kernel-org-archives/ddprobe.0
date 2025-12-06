Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD5B1E86E
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764979974; cv=none; b=k5Jc3+0eLog8DuXwjezDGFjH38xY8w3PwQ+FbdNPDzW2OSkocLThnuXe0tm8O6o74uZLiW1/SrvFOLOLrXhUzonk7MBDX6ujU/mTYTRj3HY/MOHVBZtDxpOAYeDjnMrC9CaAMTxiIYqO/YFgiZkO3RiF3JzDGf9mAB5XX7cHkZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764979974; c=relaxed/simple;
	bh=W8tHFwtIPMxMSX22WLuecJWk4tRnWva89OUagHrnWVs=;
	h=To:Subject:From:Message-Id:Date; b=gwzxoUYe2McF+KpH8Oe8CSqtGeZ05yg9u0tsF0Gf3H1OvsFpxEKDwx13nzR9xJpNZzLI66NA/2rQg31dE4FAvGp98raM+1mROeEBceD5IttekubMOjKkOA+SICRvpsW9+Iyn7e/Ymu7eqxcPv4OL6Evt7LVHYuJOAZna6yTis4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0zYPNBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0zYPNBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50AAC116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764979973;
	bh=W8tHFwtIPMxMSX22WLuecJWk4tRnWva89OUagHrnWVs=;
	h=To:Subject:From:Date:From;
	b=a0zYPNBnHKkB8jpyEZrJhKTeZfOawcsdQsDpwVQFENxIBwNDnTA4t8Ok8B7hNooH2
	 vbHlDkqWPfuPOIdtiIA/s4waE5giL/tgAvyfrBB284LRiUcDKHpjxF2rtX90GxhkTW
	 mOVGsLer+JLU53G7+/4BcCwbMIq4aTujB/FNlaaM3AW4/QvoNJPboNcbFvoAwVdwfN
	 hm7w0JKKXJAp8yoLdbsFNKbwNd4yScxIn4zkbeli055h4XiqMo5149ZpqC4ohl1vJj
	 Qg8p42TW/Izh0K3YemuO4tE8Y6OwulTKL4p4ZIGG+C0LCL3p3QQMuxOanWVGp8irB0
	 +Snt9gI4otUYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950DDD3ABC1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497997358.20391.11924426824701455323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67d27abde02c575ff894861409899eeef40548a850381edde061115e5a63cff
Date: Sat, 06 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764979973
