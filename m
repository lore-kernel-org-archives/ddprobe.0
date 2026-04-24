Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F2A40DFA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776990454; cv=none; b=c4ct03W7X+ZQ3B/PWG8aCQ76O8ZQNpGt1nXweL1Fh4NccMVDP0jaAcqPh3nU4kpmIMjuMTujln8dzQtkv21xZeHxLuMyW+XpABDqksrFbScciur7coNY8Tiag0lsVh3MfCpujLOWGkoZggq0wq0wl+Hd1av/OMfs2yvXRxcjuLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776990454; c=relaxed/simple;
	bh=6NQk3POREHKegZu6/unmO9GB6WOl86pbxqUxjjqloHc=;
	h=To:Subject:From:Message-Id:Date; b=pZY65pT19e5y/s6+tu5UqON0alTuahn7JsSlLR2BgYoXSLm4/YORj62BZVIb0uhaDAYv0oaE1fmOOJBezZyd0HQ7XZMHaxWkCplbGCspp+pPPB8pCiifSdAVgRHjppv4tfWyS73M6my1//InTANXhoey0LONEewEFWT8TXSr/cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLKIKgw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLKIKgw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C61C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776990453;
	bh=6NQk3POREHKegZu6/unmO9GB6WOl86pbxqUxjjqloHc=;
	h=To:Subject:From:Date:From;
	b=BLKIKgw4ST4BVXKqZzy0uyvuhsJVYUua7M7nSLZTJ4r+ivgFzmiwOJsYmlmBhbtl6
	 FynnBolZ/HtWLrcMzfOqpGQPj0Mp2ZzZutw2zi+CXscjnTOJT2KjZhGY4AMX+kRbwP
	 +hFZAUCSi9UgXsN2Xz59QGHjtibVN0ZORco60NqU26Dg/7yUbThQHeXTQOuHqpZFzN
	 W59pARs6XkBK2u+KGBRH4HmMJqLyvtVrlEpLe2uu7mgFzCBmHq8mmg6vkJIOfdyh0l
	 jUEM30gMbH89ayRf/OhiNtUSoCj6cVi9VrWHwtHMH/6Qdmd0ZSjwatfduZr5D+gUIF
	 0Oyva1oBx/6ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1ADFDEE39
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699045368.4444.8735198683688043218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e97599ba431c81f63bc72986860b6326dd0710703dd65d0b88c35b9356a55c
Date: Fri, 24 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776990453
