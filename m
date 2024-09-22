Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38637B663
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727000754; cv=none; b=PRmxQ0ZO7NEuXJP/+T7affKIOIYgfyquCobLPV4Gh8YuP8Ev1E+blwLNZdk0r5FDWmmislBNyCSBmv2AiEQh6G1r0r+941CVfHAweMyDXfSzFkr2MJTeM2pRkBrl45i+AbP7m/LxUVqR+17nwhX2R+L/HaOMDbS4EUS/O0J2J5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727000754; c=relaxed/simple;
	bh=hYey/mPb3hAX7HQVndAcgyH+ehAQLOQmuB/olJgcmoo=;
	h=To:Subject:From:Message-Id:Date; b=UJtya163JVmbdlCoHKrg0dbXnYI7jpHP3OWfPB/hREAu3gcsOpDBBBYreUCsIb+JoJ1ay7HaPT1ACMBiyJs5adZiqJ8EzJLR353d+tw+nimC809GYrisFG/m64UoYlEjx/6yN1LVE/uYMi0zoaGgb85OA0ojBoCWpRJV9hdiWP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8Ztrj0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8Ztrj0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A66C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727000753;
	bh=hYey/mPb3hAX7HQVndAcgyH+ehAQLOQmuB/olJgcmoo=;
	h=To:Subject:From:Date:From;
	b=g8Ztrj0o4kGg+I8MDR1+DnMMsZI4IuJDvKdFe513bDTy3JirUx851yKPp9T1ehbqG
	 x/lOHBSJzNLphAn034ZsJ1UZTk0kTs+Wum+f0gnlqFUwATbL+ZtqAot5T4L8P/3NxI
	 F5/X2USI1yVsJ35XFhT445S7TG/4IulADzTTW8H5ybOq0YmFzh4PCNk7iTNxnMh6JB
	 4bRUz/NY/P/0SWPK4+oEJi5vrbl+UJj9PiEYDURINJgTH9VlGA865cmEBbWK367udQ
	 4P9ky0fbNeGMIX0wAmJL4xlBnTO7OfQrWsiDgRCQCbqKit2TPdApKmetNrdo8ZM0TS
	 kZkfBPynSLoXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93067CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700075358.7225.4621333279662765790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc13d0552dc499b66628c7ba4974768a3adcffa2452ace64f61db915c9cce34b
Date: Sun, 22 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727000753
