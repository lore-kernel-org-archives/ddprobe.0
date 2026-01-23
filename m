Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB63D2FAC12
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769211235; cv=none; b=usVmfGA6gG+z4vAnEJiwBgXNN+wh+5lagB7y60R5I0+Xvi8v5rrI+S5p52kB1FoIr7y/XN7RROaA53Lpf/Npk/+DK44SQECquhJoZX2+sfkpnkmO+iiRazJCrepQ+kYnKFPCiq2ODIbQdeqL7921es/OtaoSD8M57kpNi2L3y5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769211235; c=relaxed/simple;
	bh=09kZQ6bY3kUanOn+wHQP3/YS/BaMbBr7Nl+0gA5gsMI=;
	h=To:Subject:From:Message-Id:Date; b=W+c8rJ0kqmQXGmXk+DpdSUyE2SeuaiMCF1r8fmdwEg0HPNpl8Z8OgfPTlrp4zEMl3e0W+Eb2nUQLG9Y2pOhgh1FyPak1MaMC1gWnumeqZTh3W7tOIIKssYdICTC4Q7NIByrdE9p64kitg5XAWwhQeU8YHkOh9ceKV1/YGJpZ+os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSuk0/Ue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSuk0/Ue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4360C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769211233;
	bh=09kZQ6bY3kUanOn+wHQP3/YS/BaMbBr7Nl+0gA5gsMI=;
	h=To:Subject:From:Date:From;
	b=DSuk0/UeFTAhRKe+4SPoDAd50E1Au/QGIcmaFAvVmY9fiHRlUU4LGH0jcnEezTuji
	 FQXrIQSDxjlUlMqeZrroEnU4KD//KSjveGU4Ed3ZfX3HyrJxdH1JWp9y41TpxAcf3L
	 5cAg7jjxnAHfK5WzAdgnECPcjQp8FLxVvqqMMcFYjv1qsGOTIXVqcc13P3Cdg/rghj
	 Y6atXgpZzIJFR52JN/4jxrYyZBlMcKUpkOKfY3o4bfGKCp3f3SK8oNNhjCiDtpjMJS
	 FkJKwKx8i0Rij9jnxoMQqf+Lx36PvYWRtOk1+zHNUhZjAohRHcBQHzeShfaxI2d2CT
	 QtC8ySCjiv8GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4C0D77898
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921123357.9417.9444621518739424728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5dbc6e6e1a7ceed0c6da5b9710a08ab4e50faf707366f464d5a7cf0fd04ad1f
Date: Fri, 23 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769211233
