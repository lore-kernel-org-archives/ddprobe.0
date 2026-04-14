Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ECE78F26
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776151054; cv=none; b=lzdFzFJrQk/L/+CeIpkNp+Yp+Aw8c5oQiNcfjenxRWUbTYlH0ZVREkSkSYyU3rAQMd6gPP11Tnt5B74IyEuyFGVgFqSHkkJ8y0gWBU5nBUfTvky8OwHPe7pHEkB8tmFHdJsVXJrqdUaPDCHqKnBvr9xI8nf8OBRAaEodAJI/mSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776151054; c=relaxed/simple;
	bh=gmAch3GcHLRHq5bGTMmY0UlMMHXjGe1aRnRKDS/rWHg=;
	h=To:Subject:From:Message-Id:Date; b=C9dZtoyZ/kJJNlC1IO/kyUjg/klwM53GAGINiHj32Ll5HbpJxdDaf8p2kWr5TtBd0UNOoibLT9ovz0xfdFd1WSWW1nQNKhn3d/XBYGhrvRyTTkqxkFwmBrd4ckj7M6oE+0dqy6n5IFpr2uJVB86wkcwvEaO4vmHAPPsUg1o95sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4uC9K3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4uC9K3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAB8C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776151053;
	bh=gmAch3GcHLRHq5bGTMmY0UlMMHXjGe1aRnRKDS/rWHg=;
	h=To:Subject:From:Date:From;
	b=X4uC9K3OirrmjE67qLZUlVthd0or59uRRQca167dYcVLEIEUrcOu5JZcue7FF7clw
	 ds7R9dBIgz9q1QhzT2pwhmy37dEJmcDCOQtOmispw6Kdfyo185+mUq1FK7cWwhjPLI
	 4Oml3Wse8QmAp8nBbFdvcUircv0b2/XeFUsxP7ZwTsRIjJ85tL+fiXMEfdDL93zzJw
	 quSzDhvFh2dn33he2BOLxk5BODR6+gIB6DKhGyRJgWfL+4/oGg/vOIR5swcxlwSI2b
	 m4QJeWL6PnViC+GO1JSYgevbGj27DveO97Z+j4jcgtEwKlqvV9jNKeMalULClPua1w
	 JPTFJFre9+jgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD05EF531F8
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177615105369.25933.6925142707858525179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b41194d9c5c5d2c11341c243b246761f7ba0f7ad931310f51593d8d890acede
Date: Tue, 14 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776151053
