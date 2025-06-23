Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338C321ABCB
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750681794; cv=none; b=O+cf6LFnIhEQm943zwyNR1WcQJod0GVvCNYjNn3V/2fMSSCpbJHz+dES8kFt0bJSeRh2d2EGbYGhtSoxqowIxBjNBMUdjzxYyi5nOOPzVE9fsFSAaJ8UOM/0xh+R6nU1wfyxTH9JnWjdyhbdz3gQ+YCNDUKx/5ME+I1CyyChuig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750681794; c=relaxed/simple;
	bh=POpB/mYPEoBz917Ev/Qz2zKVF8EX8Xx2i0/GfHxA9eA=;
	h=To:Subject:From:Message-Id:Date; b=YtyRhSjCYsdDJf2ZadLoAS8F4IR7v4Gui9KIwJmYpnhztMbtHgeP6UpEs4/JqSaD5dnPkEF+HyNvpT3KRuUfIit6P6O7qKflCLY7wrsr+t7SCr8fRUWn41ZVb4bICuu9f9FxmzQVugfVh1XvYisgmxhiB6ggzwVhkdS75AIqsgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIAM5Ntm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIAM5Ntm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFD8C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750681793;
	bh=POpB/mYPEoBz917Ev/Qz2zKVF8EX8Xx2i0/GfHxA9eA=;
	h=To:Subject:From:Date:From;
	b=bIAM5Ntmru3ayA6dGLyQxPhRtRPQIS3JfzRgIjZdl6Xz+7Lij18bBI4KPZOfk0cWy
	 33qD5hB/Tuu7zmMvi4YJkJQhfWxMQSJnkOwEkxnoHEKPBurovQI+eshSnYXN95twx3
	 zpwyHBDOZNyJi7DYnB8SWzdHSIfJGpPcXqyApz9oiuD3C7MqU02EEruKJDiv7VqGfB
	 RWu3Asq1TgkyUqeb5u5m0Wn/OEOVWckakd+FRzdCN3Q2AfhRN91kt/u4Q/ovf/Ye8I
	 eLaYrNQB2vU2ncaGoo53S0+0CI1ry1/WlzGz5cqg1W3ZYfgWzNkz/yzCniLKhqmqR3
	 ek9gCvfSyaPOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E442C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068179357.19180.1544611465655989696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd10fd1e30f080d982d5eb5ce04202ea53c507e6e76982f4d99bc1a25b61d350
Date: Mon, 23 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750681793
