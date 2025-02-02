Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C1F535DC
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738494954; cv=none; b=CehcVtwR5egcBLTsUCaZGTjxUX2WDIqxekc7HM7BUBRgVDnlgY4hbJkYnDBq60eQ4/VUe0yTsS/YRm167r+bKs7hGla+EPwOwzxK6DYsMy0AWwXgSSKHND8PyaDAxQlsDbbcYi6ZuwnsbizVJAVy672T1BZur+w6emyHsKYKHAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738494954; c=relaxed/simple;
	bh=CnClOZ9dpwe0sxEBB4mc7PDf3XVNujzvnqmdbzR1bmk=;
	h=To:Subject:From:Message-Id:Date; b=Be3khD6rWuHftLdME3CxzFxdnsxAvq7MSdvANAbElD8r9yoDtGdLuRFs/OZDuOF4TggavBp/GNS1yeFsKhLQ3PO3MlQXp7XEiTdJRJkLSm5ZIWqa41cfQdW95EdvQWK53a4bBG37Cf8tvwprS4SHoM6lPBXnPrRe2jgfJKpwGvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCXR6VOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCXR6VOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9338C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738494953;
	bh=CnClOZ9dpwe0sxEBB4mc7PDf3XVNujzvnqmdbzR1bmk=;
	h=To:Subject:From:Date:From;
	b=qCXR6VOvUmmwF7WZiyA+8OlMZrJ+/PejAsD1PDE62k21o/WSYX9hYvzkSJtgXodLy
	 64kVgYS3PJLOAlTcQSwwRcrhqjiWiQXJ1clXkUlJCrWymr8hWuFjil4iO9wQZAWXcv
	 OwsqSS6MDopdlBNY2d3emN6czCCZfQH6arOy1y3x50prqSzLtbrKem+mgfNlfX9Qci
	 /YTQ9CvqCxiIDQncN7W1vsPM9CtEegyaqHcDztoBy8/2gF8DIs9If+6cUKAcF35lQo
	 Xpfq+hUmp6Rd1g1ykKEsar9S9TN3AIBVEnyZUm9b8dsuJiH4d2nMQhyoqy0ubw5hRu
	 I+koup9uXALhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9636BC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173849495358.20663.1486236240096483374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 213caacae341c3e32b7fffeb8d158f611ba1d646368b83f9787e28d0a60ed842
Date: Sun, 02 Feb 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738494953
