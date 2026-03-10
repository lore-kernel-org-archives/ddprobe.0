Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302272DFA2F
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773185094; cv=none; b=lWSRDFtUOQjHoVNrFBCUJCHphge+qbgM3P3RAsztY7enhyeVte8Bupys2OiTePEF0pWdhCCwQP8Gv3YtKX4HCraE84mBV2JzE4vyQxdH7LwT7ljjJusF2q4GjeCiRD4/GeuFwQeK5DH8yYxb0JDUEKdHXjJ05E5L8j7eSOMiCFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773185094; c=relaxed/simple;
	bh=3AXXOf8OG1FNusOPGDOZbXCvCKTTAKuEAFwzl/yUIDw=;
	h=To:Subject:From:Message-Id:Date; b=BjLpe6K6pR45H0X+fmwguiXsNKaET5spWMqqTynQ0pKBxorOiqDyVgfySQ3un9xaCFykQXvEd8rWZSYi5Bsbw5molq4hzVEjkfCUbwUSwlCpjFNP38EvWU8gU2N3mL1QUhjYZgWGggapBcERxaHs4ECMITR6kuakuQx0nJyYEeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuRUpRzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuRUpRzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3944C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773185093;
	bh=3AXXOf8OG1FNusOPGDOZbXCvCKTTAKuEAFwzl/yUIDw=;
	h=To:Subject:From:Date:From;
	b=JuRUpRzRXn3Gng9ejU40zntrupQTIIIFvAVlhUs4o5epBllFsUYsnl43/0uA63wqh
	 lyCRRlgwTU3YzG3k2EhZDsg9l1M7vFLUIlegRBE3npYZeXh2LGK8NwVH2hfTgd3vfY
	 LWaBVGaY1WabKuGde42gwESzRDMyc6jUaw9ZBnF806fvPF441Dh7vm8cRCXRZe9eh9
	 rWvwt4YWUV2CLXuuln+8BUix+uojwe1dE96jyG2JRWYsI9xmqI8irbl7qY9Hach3Pj
	 6Q8s2SKiQYloEneO6eplhNl/l+bPazPxhgeE56OHZTxUKKZrcv4YAHSvzeApBgKKxM
	 U1PbNBAxLRFlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F56FFD88CE
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318509363.15281.224104342841612823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f0fac4dfd785ed6f5c9f0b0c44541c74437490f5a9bfda5f5a41dc6823fb61
Date: Tue, 10 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773185093
