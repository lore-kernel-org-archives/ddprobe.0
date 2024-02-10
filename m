Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30055BAF8
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707582497; cv=none; b=XXZ4SIw5ubuH1nezTZyRVJzpctcO3Y3E/YtgtG5sBfwYEXqgSV1VuwKEMAvRELZkugi1BBAFD+Btf8swsfqe4Sjl8Wn+d/IfeRiePlNH44qkJOQTuER6C+RidzB1Ynrf5vXWK3PxziacvRymHFNfGJcJf1XivW5KUp50GZDvXJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707582497; c=relaxed/simple;
	bh=CFr5ZhbcvVGs3iECsXNG7j0p8m0n/k/qgzQEXxgdqG8=;
	h=To:Subject:From:Message-Id:Date; b=XnLWyxnw75a2rp9tTZ4gIZERe9mDdoeGjbU9t8SglC0XH9cbpK90VYb7hBzbo7oYByhiNIiBB2dnrGJsrKPuQIVpiv5+EKk9Z3w9EOZboFOVvGPe8FKG6MI0IAwOQUVFju5HtphIT+mZizPu3pcR9P6vqZSh8npwmhXL1Rg8k2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8P1x+GA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8P1x+GA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76510C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707582496;
	bh=CFr5ZhbcvVGs3iECsXNG7j0p8m0n/k/qgzQEXxgdqG8=;
	h=To:Subject:From:Date:From;
	b=Z8P1x+GA95ccVPHBYBpGjhYlF/6GOcK1TD39viPriyR0LMlXvGrpy7kCU/DtL/Hxk
	 49CuvvjV53YHX8TnEDwG8FbfYCi0NN/NQFJmPTvn2ORFpRlTh95f+ORZVejYxD14lv
	 7GkTXTk2CODx8o14RlAzljhNOJ1c1UP7K8P1JqVPjnF+W+nJ2azXus5UaJGTmV/B+E
	 iu2Fl7ow3rHPy8Xxuysf2iEtF3ZWFm1uob7xdpLHfAod+0aIX27n4OqctpbyrGJ1hp
	 r860z3M5sgRKrGqszw94Kei5XAh07+/oZd5SdfZetYJBOMfgHPR01CJ6SZ02V3lKYg
	 gYOqNqlUofAVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63515C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170758249637.14092.16075599369051818984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20f84dcd8d7e0566a752a979a9f2e707e65e79c8fc7bd8a136721f32a8cd1ef
Date: Sat, 10 Feb 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707582496
