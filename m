Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47597374F1
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 11:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741432734; cv=none; b=Hy9AM3T0WrjPOUwfSo3KJn06ErU82AvHfTslg9OS0dYQYWWiV+cXrnyesT18M6WbvBARQwdQkmOJ5fZogsJZUJ7YjRv248+eMiCC2KpsZcRKeTUWUsEbsHFpUMmYrBEkz8B+nQ+JpC3zk3Az6UdQMp1UOMck3TtBP0tEG+9CxOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741432734; c=relaxed/simple;
	bh=6IXkNosh5LZiQmILEIidqTC3hENfBeKqu9CFb7gUvms=;
	h=To:Subject:From:Message-Id:Date; b=YMJJGNKFsyMF6zUz8CpNM02WO4lHUFQ7pn0rfIKRJynJXMNE6rHrrE7/3NgAVu5v4Q6iLFxnDAciB7QsLMGrEq3X71gzbd7k+VAfWSq0URCgSKJjC8qbWanAegyeia7X97v0IQsIAZPxFUv7ae01iPiTL9hEb25qaDBsWzgSs90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufyzTJto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufyzTJto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37ABC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741432733;
	bh=6IXkNosh5LZiQmILEIidqTC3hENfBeKqu9CFb7gUvms=;
	h=To:Subject:From:Date:From;
	b=ufyzTJto48tN4xeVe8uzBzVXsnfeSEY8vAFAhc51xgJ3+JhE6cfrjfoy4fzcybDsC
	 xG18V4Gley3DZC0CC07WVNMQwwwMwbswLQG1fFiaSGvhVGB4zNF+sjQvmmDjZRiJin
	 O4pjUPvG1yHbQlZvsashy9iJqMuV4C0B+QzLbBIKGW0+Cr6aV09I8LWEjJ8ETVctol
	 2X+iwfyM78sC34FVxTG/SSk6wmQ1z/dBJ9mSsq0ALwQ9AfTFP1CdDdUpkuNQz0Ys0s
	 KOZiB9ePnvXPidxNkYI8YHWsV8bUxiXdaWyuXsF+/fV0Q2Ih1Vpn4Tsc1V4QD3gNJT
	 e9/JWInbqj4fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E583C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 11:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174143273363.865.5994373676711915947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f590fd82b3a7766aac92f25c964a1d06467ca42e1ba2e18808c091cb2b78e77d
Date: Sat, 08 Mar 2025 11:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741432733
