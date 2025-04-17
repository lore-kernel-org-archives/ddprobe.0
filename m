Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C513A55
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744882794; cv=none; b=WmQrwJeEyMAZ1E/QHKGVhaOR9UHDhsMsBYgfjWcOjm+G2KE3ur97j+Xbr8rmgLFyRNEvy9OICnFd5u9VYz1HkmOK7qzW8wAe5LRSViFp5P3XWOwz1rbB6BebZ5IDm/pzRcfHEChJ6Db4Bs+ZU9wFOZH/HIHFVlttUvS23q6+i1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744882794; c=relaxed/simple;
	bh=cylIpBnpi4+Nox94sBSOcmi8k4agAl73hI8mCyjVFSc=;
	h=To:Subject:From:Message-Id:Date; b=V8ZZoeXsD2On+aIaf0yT2zieFuUB7Fp47aMuLgwmj6Gzj76h7/s2aQNCDxvKoYiwL+eN/QGe1o/PDXTi5UTBrIqgIBDW61uLAnCyFd0/TEzqYKTyYt30xkxaDBlUDbXTwQBXTgQmSnKEx8ivDqEwqyjiommK7YECTtd0sSpjtSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=br3/QsfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="br3/QsfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DDAC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744882793;
	bh=cylIpBnpi4+Nox94sBSOcmi8k4agAl73hI8mCyjVFSc=;
	h=To:Subject:From:Date:From;
	b=br3/QsfXoJenbVsELUwSn3V8LiuSVGU9TzSFkHepJffX//kAxpcmEMoDs8JiT0Dnb
	 AXyCuu/btI5SxrFpaTKfZhRmeV4CzPCBPOyVaswQkWnSlcgye3j4LvSiPMSTiE+VBw
	 0EecOb/s+LTuG5oEz6z6pL/MyjrNlxjPxOL7umdwySSA4ZqHJzpa7SYluALFz0gN0w
	 nxLD3FW57hxHVsXEaXsp6SYtBuWbJjqWIKquzwKiAK5jUUh1AB6vSq3W+R74b960vq
	 5oGCJfPDA9u4OgIcIG6WL0//UMqn0i8TtqoV+s8BZmZ8wkJQxSyEDykw8Qv8NLLyNx
	 YESqkw0nJWDQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FC2C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488279359.26084.313788396256251075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366f5ec374a5d037d6d3b302e84fa3242667bd20391078b9697c61451a4443b3
Date: Thu, 17 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744882793
