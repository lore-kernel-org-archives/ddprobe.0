Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCDE29B789
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751542194; cv=none; b=liX8kIdrWROkJbqrKUwcy18PH4vGj2PIeAEaBv0ojqp7pcMZMzDsM/ADyldm0qErVMqNYvFvMH0cjXWgg0/a/9IX7vC2+gLXJXj3exSna7j4hPsFGAOwpjlzttf+u4xCSFfBL4omofkeYKvPJGiTe9391GRaiPzF84t1Vvb38hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751542194; c=relaxed/simple;
	bh=5xT0yYeLet/caPPAueBCXOvK79+h22MGt31vdVLHtz8=;
	h=To:Subject:From:Message-Id:Date; b=nmD1pzZ3Khsfpoyvp17Xi97rwpfiS94syXgKKERrNh4bF283YIRtR7AOFjj//OtrNO7h2JqliLoLJdqxLSFROac9ggPUCW28cglul3G/9FeBdoS75MBmPI+1ynZ3hKKUWgCbnBNt52q+TOlVhIBSpPtabXXiStXzkLf4WgNcRTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnMd/1u9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnMd/1u9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A138BC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751542193;
	bh=5xT0yYeLet/caPPAueBCXOvK79+h22MGt31vdVLHtz8=;
	h=To:Subject:From:Date:From;
	b=SnMd/1u9TX3IBSWzb3tpWdp4ZxnG+30cCEJMc+BcTipbJw89EqcLD0dCaw+Q5S3T6
	 fSkrKJ03trupxW2Tm0l1ESLqwqz4AsDDLjseqsighHetZHMzZo0CAvlDw7hV+sd0BF
	 i4Qyk5K33lxbH09mjPH3Zf55EmsA364koaY/z3KatjW73GgLKj5eLOkk0WhKy4dcNt
	 0gPjnhsqDDGJ72R16jbvQbOW4Q92Va5rap+6Yum6Tt0N7+D5+org3u5cB6WQmC9zKr
	 VOWaR2zWspFeNFFSeQR1TE/8JaAfRnmHEO/NKHdNZK5QivuoZ7/4bKOKLOXRCHx/tI
	 /F22Pani+Umfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAC1C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154219357.12396.10044108688402855372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa81212402fa36607696dee170725584b06c5a7e39f121cfb275132d08f630e
Date: Thu, 03 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751542193
