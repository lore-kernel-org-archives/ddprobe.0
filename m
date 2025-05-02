Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3381728F1
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746158994; cv=none; b=lXIre9+t0vBpfdhz109V1Z74qN1VgMXyNJXoMaTrwvsJZTVQOh2FZyiB1MdxDVB6r51foSqS5HNoVpvKAMrcNZWV3LktBmzClhFch7v+1nCFFP+cmEmbp6ejdKE/d7HbOFkwmduytJ2JMsCoAGyyvEuyyEN8Ovo4fcsQk4tVoPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746158994; c=relaxed/simple;
	bh=3G2pF2HbGt5SdEkwyNVzRFCc9pOD3MVqttdYp4Eg9LI=;
	h=To:Subject:From:Message-Id:Date; b=PrGmN4DDSWH/nBdhRNtSyjrr2/2PEDuHoG28wJeRrgCbjKxNIg9AkvNqfq/rLr0wm7MJi8ZzyExV1Zc8fVt6KAGCofUcEIR41lan6V9HeWnzAC+Inz8sNqulqZTZcXltgD5o6TWP0uv/BcBvsEV0sGAtCX+W2ZuShz0ZBcX2TuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEr4vUiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEr4vUiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F481C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746158993;
	bh=3G2pF2HbGt5SdEkwyNVzRFCc9pOD3MVqttdYp4Eg9LI=;
	h=To:Subject:From:Date:From;
	b=jEr4vUiDlD9abdadgBGFL7qsDNQTdquXbkuQVCHEKftlwsGwdJMl8dNMRe7Vs+MIm
	 tp1b1mAfEf5VI2ZLvpTccgr/m/Br69LMJLuh4wGicjQeJbZmoFi9W8eenRoA1mE4/F
	 KwLEBUV0w8kz22i9kX6vGae2zGdcED0o4yUoZW50FZgSeO/bL7fXXGN9gZ3RA0rJS4
	 LkLLolOBocTMbyk9ZV92Ki7bzAAGSpu+AI2OKUJ08uD+E9OIf8viX8hpDhEOUYTJn6
	 V4mFwDk7HtKtGjM5Kyas2A7yYVOgHOzY4c1aWgstUKLn+nBslktjOwdY/KrbL/+QWz
	 hqzKB/XH9UvjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9CFC3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615899357.29647.17318881144641170287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e155e6f90f73abe075058e5fab28d10e29cd941f2d128eaef5eafbbaf531d8c
Date: Fri, 02 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746158993
