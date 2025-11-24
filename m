Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E81D2E093B
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764019974; cv=none; b=McFCvyekRp0B24UwrJi+j6isrOOBFvKFklw19jea5QMKyyJkJS5JU/GPfELQS+7Q8t0a7AIKHaxvmWbXL881E0+zIY8bRJXOZIWJ0Q7Zpq70Jm094OmGjhVjhONGcD8t29SzDN/a8lkimcYfycW4WuJecjUUcPKGGufTclwcLjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764019974; c=relaxed/simple;
	bh=lSQwQG9XFrkTbl14/4meS8O7ctf8OBsjsmaSXAIQLDA=;
	h=To:Subject:From:Message-Id:Date; b=FybmxCs+7Ve+0mzjh59xvFtWP2+5XHC1p9TTu4ZBKkJUChaQLdqO9oT+ixWUBSuMCnKd9dJgc1XjARkuXHdK7f9BxIEqwJXqqtw0F1NYne4sLAbZ5QQZJzrFktsCK/IOXQhMzIqatr8CNTnx1PEF68A20GUJdjOvYmeVhA8T5uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qg5h3+e4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qg5h3+e4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A5AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764019973;
	bh=lSQwQG9XFrkTbl14/4meS8O7ctf8OBsjsmaSXAIQLDA=;
	h=To:Subject:From:Date:From;
	b=Qg5h3+e4yvOukGwrAW9evMwdKh9/lrVymwGOOJMX9EBdaU8ld9pB7U3lFX0mPXXCq
	 cY5o3gqh0sd1wfqEARmh0q2CfjdH+0PzdYVWvDE0mCINiTIGdNIkm67qPXaGY4pNMw
	 6aW2ae9fmHaHDiuej0UyKR2mYlSrqXebvcrlcUmIdCOQk6F+7r0Oyt+1xKDFNUhA5o
	 29xlQSJ9gzEMpuGVVX0E5pnzO8VrECy6O72SNyodewcg6nAFDkgtrjGQ8n8LhRdgCO
	 dgPWSCl7rld68Y/5wgb5dM/7TI0NWr44eEjYBzW2VjOBYjTEJrFIhK4UjxY280G55B
	 ZCr40HbaOm0fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91730CFD356
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401997358.3430.3286191210043499304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd150b31cb0f3da14af41f00f611af206f02a764a3ebc158d896d1982cd7022d
Date: Mon, 24 Nov 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764019973
