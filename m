Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363D527732
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763182194; cv=none; b=coBb9uCrVMCKFdL2x2jLN9c2WS/B1WvqJaSUN5NosI6e5QJl3pBhCKEGIiQDYsPTo5mryO4Ky0bcyYBy7WE1y187e2g5+nn1seYfAaBwsm2kg9S7ftPjWxIZCgiI3v57/nQGmsZO0LVR61PISwUVnKoesFzyKtlRHhhXsCEtezU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763182194; c=relaxed/simple;
	bh=FfKJJ1Y9tRvxQnEFSuNc8tlhrSoGex+EdkbfQWHrgKY=;
	h=To:Subject:From:Message-Id:Date; b=Q4iQSGQ4K/mdDKm0r9YOHWIjyLR+RIBVJzmOGJ9XuuOU5shRLqvfmWH6+GvOb+2rWN088IM9anhLHsyclf+DXQUiaOTS3U9TkQnDVphqD3H5V8OLY8a4q41tLxGPSlcggmefHkC3bAV8lj7nARuGaRFHWvb3FoDXDE92EFZxPqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCqQPhaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCqQPhaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64ADC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763182193;
	bh=FfKJJ1Y9tRvxQnEFSuNc8tlhrSoGex+EdkbfQWHrgKY=;
	h=To:Subject:From:Date:From;
	b=WCqQPhaX3ZnEcT3YnGe8kdxuCcjsuoALwsDg5ber5RxMPCsngu/SYBYX8enxpqPiy
	 ILoIRQfn0uom4X3UFPNsDjOin5OAO1NGMA8nIKrzjNk2VBepNq6b/ADxxRPXiULsIf
	 roRuNMoyBaHJS4Zi8g7dcLzhsNOa/TSPOou3DbRWjs4MqhpY1XfSuA9NHFQT5shoWm
	 mIulp/DNOzoxYFcEc/05rEvBLHAIeSjp18IFUwIVyqNh9FHqiyyEYsOjIBs4QmHfII
	 Z4USvDYD24Vv5raZNqIaXm6R2atNSif+trRRQxYWH4XWncC1sBDeIf0Obj1U8ErjqP
	 Qc1XzoDO4FeKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94475CEB2C2
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318219358.22197.4443271429753015783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca52bb1fc439b4df3048b83155ce04d3b80374828cb4bfaf9ae7c263289d12f7
Date: Sat, 15 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763182193
