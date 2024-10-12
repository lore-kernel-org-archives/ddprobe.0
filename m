Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2336B4315F
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728714354; cv=none; b=SZ1NrDRpXui/MzGZV1jF5rOXYVy/y83nrrZTzq4cOtFYTFZLLy87bHySOECOnJ6070ocsR50io0jpV9e4sR73YWJHxYoIjMYzlhQVdZwTHQuZNnQMQWhsdGbGsgwY5PlMlLLUCyOgDzL6V+IeqHbWfbM6+mdZLNK7QO5tFCs6CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728714354; c=relaxed/simple;
	bh=d5oHuJNyxpHm70YRUBiFVK245GTpDL/SabJS7tf4rto=;
	h=To:Subject:From:Message-Id:Date; b=YGyls1BGbYHhWPsn0h0GpfVM+kXlX52m/K1YClWyh+PiKohUVJ9dlo0ZzGOfHA+GlHlo1bEqGWXPzyNPUZ+hzyVn/rNdu43GsMlBPsWIZAmtGY+/roJLPBbTx922mA7S6JTIR0Mmiruwg7XRAq0tgi1cI04DGO17/1aER03EftI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBXAsjMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBXAsjMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2210C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728714353;
	bh=d5oHuJNyxpHm70YRUBiFVK245GTpDL/SabJS7tf4rto=;
	h=To:Subject:From:Date:From;
	b=NBXAsjMkrthIBnYCUXXkJCqp07dQNWuMlIaw+1oRACcnKfOFayoUYW9kZYhpmFFTp
	 Hjf2NeOSFE0LGDh5iEpr+39mgNXPbxH3RoG68cLhwiIp1kV6biZTftphiaLlCmwYHk
	 FLbynsugSteDWDFiuUgfavO0Btx68Yzc4nogUnamdMJC7lO2brec1KwwRAYJtuvXbm
	 SJbzuBa6GHhXHOYbWJo8v8U0TrwU8AvlR/dB5WrL86t7nDdgtIUoR0PKRvl7xPoqZc
	 av7CkhTi4vStZvU5myjcjpowGD4Bc0/jZl+M9FNtquHVzwEVbE9KPYmyOMDzdCkySi
	 zMgT0gKpsqe4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957D0D1A431
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172871435360.22323.4191454145843551710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994b0d77f459bb79e094091d1e88dd95733ce23e6337f156204e42a504943719
Date: Sat, 12 Oct 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728714353
