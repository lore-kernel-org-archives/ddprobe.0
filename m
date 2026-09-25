Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAC623645D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790303434; cv=none; b=F83J+3fRX4dQaZ0AqrdHHF38dEF1V5D6BtfvhTBZVnqNhqhB1oLPggIT8wm+WHsRRLrVaokDe5jW48pzBoRO54gBxLtmKySrIV1FpWdbA7AkOaepsBoXkyttmo886oKNU/jYsY8AtWD1jGop4ocd+lD0Tn5lBiVIe6N7mUxMI/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790303434; c=relaxed/simple;
	bh=oIyQKZAgA92JbGrp53sfDEdPv9poYFk8727rnn7A1b0=;
	h=To:Subject:From:Message-Id:Date; b=T2G/mOD0KldNsQjg1Mv+e5yr+09p8pC3I0AZGLCo7627qnbiCBjtw94ZXEGDFUQS9SKmwk15S4h6JfmlX6MMMJ8F91fU8lX6bhosfrkTfmAVTseL4+qNxHNNRLK07mKxeKQE7ez6B1XUDznoDKtuR4eyTKCJEHhz6lE5D4pE8Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilp+2Bro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilp+2Bro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A8DC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790303433;
	bh=oIyQKZAgA92JbGrp53sfDEdPv9poYFk8727rnn7A1b0=;
	h=To:Subject:From:Date:From;
	b=ilp+2BroDlGwqC35I2FdthHlBwLVxTeAa8lMtk7ASmJAyTlB4kfrubB35eAlcxpi1
	 F4XUEVee1bumcyiEFJKNizr2zUc44g2UayjIBn4o3JYvVWS+l8IjFSzM2x8Uo1U9Bb
	 4Q0mUj7hmsSxFnkXOuGov5dfP1TcJ36aQvmdndezUCp3sbKtdqlvYK0c1FQFxw8q6B
	 bm7BdSTswRTTw1TqTxYL+OiTIAHXKKi0OuB6dRhaQi5GqSQ/CcM9Hf7WNbtXGZ5CR8
	 X+d2bWFe2i8afVYQonF9G3p/uWzC/owG89zDVi4s+AEs/kWlcpDF/vFtlxDhkNbzZv
	 VAbRoaavO+HyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF289C98318
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030343369.15761.867795068074775449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8c2a7dcd4aa5ab25c210bf25b9f690a9b6710fa95ebd4856805d3ea9b5a6c3
Date: Fri, 25 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790303433
