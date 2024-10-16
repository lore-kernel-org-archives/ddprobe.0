Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7772125B9
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729107954; cv=none; b=m44DB7mudRQLiWQ0PUahRKUT7vYln+Q9moownRAsT0QwBze5hIU10qyJBk6/TL1lsme1kcfhwqKa1/U1+ENoYfaBsJrLI+UgcxAKJIdQ2ZKXxeD6KqDyK31wlkkuVFxiUrRbxHOiq75/c6eDESm5Cu5Lkjh1yo8H02FLWwdDbMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729107954; c=relaxed/simple;
	bh=RjCcYu0diLQUjyb+GwtqYsNoCrNqsYlF9gTnwpMsra0=;
	h=To:Subject:From:Message-Id:Date; b=RwdQIIkNAv9pA79RPalZ47FpPaNlxRx9YydQ55pVRsZvMKPtpzqCdTyKkoAXvdRjpbHxs23u5MUCAa1ArpTh83rrWPIJnDFapwsD77MxLThpnm5nk5eespKGbqZe8uL9tp6w5Ivx1lNtPBLuM2tezVG0AXWf/MisnO3PLHKMorQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faGfMx8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faGfMx8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C6C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729107953;
	bh=RjCcYu0diLQUjyb+GwtqYsNoCrNqsYlF9gTnwpMsra0=;
	h=To:Subject:From:Date:From;
	b=faGfMx8F/M72FTu76XlpSNqs8hU8G3Z1unSvjVE8aSJTPJK8XOwjmWII1JY9EvqL2
	 T9KK1RA1UkYgRKYi1Jk2s9desLj4/idB5mhsLkJvqttoWsBM/d3d4UAZ0IOLId2JcV
	 wrG6j7u0bc04MW7/Hf7AZOfJ8z0Iba8oT9FypJvdyiLq8oB2jA5mv+rv7AraioB4PR
	 T8YkabGwLfCWZwcZjA9sduDlNkSXTW0XgWG7F1NbZaQy3N1nVOmg9UsNDsuFs/NOpN
	 3H6x26ZvZjDk3lilbODMrUH3UUa1/MRKqtcaSTNWUJ3ZKdF8+zhwSa3/q1O8o2Kft5
	 9h7nZHtOWzBqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E68D2A556
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172910795358.18784.12457847241701374698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ab7cd2f74926bf2a5d30cff2d51f901b90b5162e65faee9ec133aaff40757e
Date: Wed, 16 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729107953
