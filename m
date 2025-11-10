Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AD52DE704
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762803594; cv=none; b=BLs7ZKxWg6KoViRrhNJYLuaQl4hRfHZyMKtFlYws9/ll1FvDnWtB5dWI0B/gKst7H3cHkWhbm43B1gCb5XZUKTULp82nUxWSaRizXq3/b2z82Zwe9uWz1aQ6Rl1O1fd+AjMN6VqLNuqB4JLKxjONOetg2asMNdKjubJlC3d1XsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762803594; c=relaxed/simple;
	bh=3dJWWY4fpI/ClxqtIOmkZ/dncxi8tNll7t/sZlKqRl8=;
	h=To:Subject:From:Message-Id:Date; b=m1Spgv29Em9jBhPBEj4w7hIfgntCk+HH427kfk7+xEwuH7Nzvue1EErtg5Y9LKQmxbNBdP1mevOoK8ItMt8nXIYJG08JFzrw/JruWLSqIvXiwC9rolvSCd3db9hPii9fHECy3vwmC9jtC+hYngSLsvbbcbv9thgAV1FaeGLIPkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUziDnzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUziDnzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0418C113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762803593;
	bh=3dJWWY4fpI/ClxqtIOmkZ/dncxi8tNll7t/sZlKqRl8=;
	h=To:Subject:From:Date:From;
	b=UUziDnztXgi59jW9jekEOXEi1P1bN85el2c3/OIgAcqKTR2MARYrfaZJeA7liXbj1
	 l8oy4eKRKdq3nniv8toqQaNAXyxCAPgvpXI5WFj/6NvQE7WYUkWFzs80XoBKw0SfI6
	 uyrCQNncYv+gHsl9/t3TRQaeuwOpYAlFWf2yVyfwo1V1aTl3prd5uub25kAbVnCp8r
	 iukeEKsLwfwUZN359IvmLqny/V9gYWH4vrkn4K9ZXGw0VLxTUu6TylIcDfnHYQC0m5
	 unos9EqjvBcLMccU7oV3hpcbVeU3bKB0AH6tO9WdRsPqYf9xGs+aoioT71/QgTtAWS
	 CVwe94xeqv7ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC30CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280359364.12888.5547863151990098171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e235433cfa292e9680e577ef5cb013af918cfb7d1e41558b4bbbe872c8f0db0
Date: Mon, 10 Nov 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762803593
