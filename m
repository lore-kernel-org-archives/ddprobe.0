Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC14038B
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758068393; cv=none; b=ZzjeVcr9YES1UrGe92sdASpqJQOWWPjOVmr1cnlfPicvnCsOhk0RrxsgSYnbJ2D4iCCkU3jl//RblXaYtS/2II5kHe3ruFEztJozHTa2gf1q1+92LOqaDusQjvUU06pIRwNpqeuWYt2hXhFIyhor8+pjJEVh6yXxSV310g1qn34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758068393; c=relaxed/simple;
	bh=imX2kl0h+1NKjsNG14rVq4Hk6xy+DJi5I546fbGdOBs=;
	h=To:Subject:From:Message-Id:Date; b=ikjWQB8hbGqSZK0PuXlRqKtZ1sgDt/y2jfBDPTIPgzNzflQce+xm/CIDGMl0WuQl1PT4Y5b/FiVP5rPmnKEX9nWRZHK1T29P+jCWoALvQ9E+0hVMNlFi/bt+RJ87knx61hu2JhYJZvGKolICBOd7cqseGCQ+br8nqnT9W1ZkmUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBUzvXAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBUzvXAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C69C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758068393;
	bh=imX2kl0h+1NKjsNG14rVq4Hk6xy+DJi5I546fbGdOBs=;
	h=To:Subject:From:Date:From;
	b=nBUzvXAetjR6PAENBkr/yz0Y750pqEtVpPZ3YzGbkmAWoqv5KpJS8XrngcsjI+/WT
	 g7sk02jjgYxVQQZBHzK07R0dMG2fOMz4M5vfBWCaTRNTbH8oQn8cuCJlcpwwvtBdnf
	 oNk9QtOF37tsyYG38EiV+7/JMWJyu3e9I7EI8A3m/y9uG31zdUnS6Ez6JdfD2Tt4fJ
	 csy/z/h7qwa/6fFrRFV41s+6VLZLY8KMWE2KhkxB0eODquhDk+SG/xyU7Tz7Rk0S90
	 RGoJ3qRJBEN7NB/sTWR4vgECgmq1ZpL1fBLzS9OTK2i/+7fHX55eKDf6rfMepKvFmq
	 ++wgzoz2Uwldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A726ECAC592
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806839365.24153.7063694824953558683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1574c25e354a03f0d0aef3f06edda7788950c214c0cb1ec39340e28ff9cac745
Date: Wed, 17 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758068393
