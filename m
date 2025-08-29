Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1647C1BC5C
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756433994; cv=none; b=LnhupUZHMh/aCX+IJwYNHoZTnEGQvcgMH1baLeZ1/+paDyDIfzTEDA++Xp59CYSHf5z8H+Ia+6CFB5/48ZCwIN/OMFSv67TloNgSWH4omR+Dl1JzA+ztcyt0xnxQh8d4Alhg9U4lCcZKjFxYr+dxdD+PgIgXgscsMNabj372RuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756433994; c=relaxed/simple;
	bh=/jBT9x8lHhvux/GXim0zo6GDMRT8K2lshA84MvAIT7s=;
	h=To:Subject:From:Message-Id:Date; b=Gc+VpYnwhHh/l4JdEV08B/Qv5hUtMhu9j6PT4zlzmUl/0hFha2LB4Be7OewDubxg7tV5jaEOrbxhS3B+lPgRHkJ0rwKVsLkZ6Fzbm+xPXVN43RRuqhfhJDwny2bDaPoPQaq1uaU9RFGVNrij29Kcb3YtO7MpGYQC6RbaNvgN4rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1+DuVku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1+DuVku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC0DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756433993;
	bh=/jBT9x8lHhvux/GXim0zo6GDMRT8K2lshA84MvAIT7s=;
	h=To:Subject:From:Date:From;
	b=e1+DuVkuQGEtyw1R7PKRtzoFawwbYID8yCbN/f1UO87kC3exrhBcnbZbT68r4Szm1
	 um5iZkNlSs1YdgiWrxphA2YSyqNNNlT41nNZm6gSUaQu45F3n+GksRfyagOP7afVn0
	 Ae5P7w/65JZxK8POP5NnfFzDVh7iFdRdJ2aZhS1/KhjVUDdOd/KypzB+UUAUrgDVqy
	 frto90M2a4yjD3H5veSC+se39LhaLRj2PHs2m7mg7/r7mEgl2qzCAf/XAQOoo8l7Uk
	 kRjrf1mNJbKoGpH30vxq61t7+n/SWg7TJwd98jyDpv+dsAbkFzne/cuEv5/Hzc+VDF
	 MHgZYX8BnT7qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E633CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643399357.13105.14746170427878541499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788756f21db5b64fb26018956d564063b87dda2f32f2c063a625a55f199c2029
Date: Fri, 29 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756433993
