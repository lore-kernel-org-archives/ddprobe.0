Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B71126C05
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735424754; cv=none; b=IamaxnTp3O5+AV4kXS/BwYztfTyTcXLL7NkLASR0BX3yyz+w0MZ6XbgW+qGw4/g/dd5jUMz/rCCxn0SiPe/ppVCUOmLfWHeTC26iSBBbt0RkTi6L4/HX3zeikzRNE56OnjzqMmmpNrqrUvM7+1+UvDMPoBBb/5VS1xtfTxc6mGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735424754; c=relaxed/simple;
	bh=Jh6VG3ksi9vBwCd00+VEV3gNYKduEFuAJQXyoSBvKdY=;
	h=To:Subject:From:Message-Id:Date; b=t+1Xr0XQ63aduiuQ+W+1t4O04b8h5YSdGV588WxUe0viON9oQMmFx8rYPNkba0W0l6sRwmDmIQ4PDChvkDT2uElW4lc3evimGNiSkxxJ99WIFum9Gni61xQG6dOyk7hm/9LRvKqGMzbQmc/q+48n/bBOZcG1cJZS4J05q0Z4CI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aM5HQ3iP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aM5HQ3iP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4266C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735424753;
	bh=Jh6VG3ksi9vBwCd00+VEV3gNYKduEFuAJQXyoSBvKdY=;
	h=To:Subject:From:Date:From;
	b=aM5HQ3iP9py9geneXThC/4m72AolrjHuEXxwRwRALT9AnOb/TlesJhUQoRJNZoJUj
	 NMZdKFi3WyvXgmAq71rI9dYV6hLlIEK5sbCDIDqrV6F1/BQN6fmCdjShfTBVS/kPUb
	 +MD9DdfcokGM1oVujSCjY6WRjtGfesmhGQzWphlKgUZVS7i9kd2PBQind0g5XivEuX
	 eR9ugJG0JqSoR3AhsnO/HtVMI3K5rcJP4nH/1h3j67c7RKuwm8s4maVUJA6/RlzaMK
	 pBUgU+YBUgR3EuYWH2RvNQD/I4L6fdSrxsfR/B1vl6gXXBuOSzqtfLe77+RQl0435V
	 qVrVcLlZv2dfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D45DE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173542475362.7325.3979125289074770788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c37733a647dbec5c501e63ddb8a415c8ce4cf6d14463cd6a27463274de291c
Date: Sat, 28 Dec 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735424753
