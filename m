Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDD6523A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753244994; cv=none; b=TSTz6kN6nuMHpWIMHgy2fei7GluClL+C0PHD0REjfL2lW1vPJZ8GQrb8L3evlb5UsEkPOe/+fFut0creV3r7DJ4PPo3P92EnZLuNPlvpvwVBPPII8B4NHzEadccc57YTFj4NCfHnCIXsI6K/1Jr8BhHNQVn3iGjhXc8Nnm5Jm4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753244994; c=relaxed/simple;
	bh=/bwkznQ9XQaVy/5smLIg1RL7wkBrPUQybJ+wWAjQt80=;
	h=To:Subject:From:Message-Id:Date; b=MWxXSvwGuAP3+aFSxC1MP13SJlaho7awyexKHUo7zE6CjYuiixD2i8XMMvwG7Pk5AZ0KNUM53YxRFLWBpmoKgpJH52lvViRqaqC4XxvD1YpEFK/avepHqHw3JcqoOv2ZQt8zod4TxtebDVHBv2NOPItn3aNJMq9HTBaelnvqCjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHYZEH2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHYZEH2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90CFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753244993;
	bh=/bwkznQ9XQaVy/5smLIg1RL7wkBrPUQybJ+wWAjQt80=;
	h=To:Subject:From:Date:From;
	b=vHYZEH2aeEvMT46w5Wbk/+j27RKFOYV6SGXL/nw2lIk12xVd4rdKrcCJgG3Af2lwv
	 gb9zJX5mWq8OT2VW/GHADYdUWeGH1C6VdC54kZt/YDAar5QnS+A460GMbDUwX/epx+
	 l7YGfVWJTewynXIaW0Ke5e6cuk0JkIG6LC8peyGDdNTbny93FwIuhia+8/T+WFGKHR
	 Gtjfc03X7SV7g5gj3f+QzrHTKhlQiqblrwc+2OE8tNJ6Od9PG2mob+AwUyRZ8RxD7n
	 GY97tSwnVDM8vKNtDWd+EpSNkEX8HLHtGB9zQPFx0ltYGIfQR6c8Es5x+JYoVbi8Wv
	 mdpeHqG153xHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E27C83F25
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324499359.9871.10834291053246337729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da30533ad3a4711d1651ff59dd06fd387c302875b0fdf4b9499b6d2caca415ef
Date: Wed, 23 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753244993
