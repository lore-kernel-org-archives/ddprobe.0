Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8074370AFF
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779191433; cv=none; b=bAHhosesKArwrWHZKpCLLnyxTIRZAf7nvYH2+Xtby9TRWEJiHNV0LLQ5o9lTuzAPK47TB6pAaxJ0N94erMzx6qA2OjvhG5EsFLoALWNMcRaqwPdsNZjC8jQIDYOiPNlqsiUHPEiGP51Lmal6IrodcLvsE48JBPMpryjZ4YTBmyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779191433; c=relaxed/simple;
	bh=fnzUxVh8VOjw34My3PzA4SPTvw8dk3JOCmBSFFjORxQ=;
	h=To:Subject:From:Message-Id:Date; b=eI0TGR/6+XjSsdmfyl3aylIEtFd0yEdQn2RZ3NjkgqIXRwIuxKd26WUoHZChE/agSfAlFys7q6e6koOThFzBX1UewoarEqYIwJI2ZhzoFVomrD5LLRSLbtjV84r6Q6BQTsBIhTmVkCy0jldTByfNObUwPlxn/8iYCBfd702PQ3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOU2ABZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOU2ABZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC46C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779191433;
	bh=fnzUxVh8VOjw34My3PzA4SPTvw8dk3JOCmBSFFjORxQ=;
	h=To:Subject:From:Date:From;
	b=cOU2ABZNmrZk5dBG3vGHMAM/v5jyTCK94PUKjfbzhiKnMMgU1ppfZRRgIUCUmVOxJ
	 oIvPwUczjBiQl4vxjajQmCEKPmqGRRt/sj7PI+drCWJbQMw2fXGvVozAWa9H9VuUM3
	 +pKX7rDtyWchJDSPFJCu8zwqw2JUtfedYlYxRvL6djjP16uCIc0n+U0E9wCMYJOode
	 XIkHtnO4zhf5XdViz+SIWjw6XyM6AJHq5GG41JB/b4ullngvC4DocNwxgJFrsLPywu
	 a1xnaild2aZ7A2xgehHmNJDzay3aLS9C8DS8Yl5Nip3AmVmV28I97Zqv8iPrU+K2p5
	 cjTgwlstQcivg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA1CCD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177919143369.3230.828813719584133102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e416f70e30453b65d876233dbb5095b5eb5a3ed1ad754255426533a7eb08d3
Date: Tue, 19 May 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779191433
