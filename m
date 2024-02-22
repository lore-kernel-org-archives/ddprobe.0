Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA6712D21C
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708640897; cv=none; b=gcsXnrq3cy0b4KnweDw64pTnZvBnI2yoPPNgXF2nqrNekQSZAw7HTzt2SchPdMNuIBKzxuMsYNNTLKA/oyaOA6ljoMTo+AbRjj9nxHRlSFF+nHzEq1YH7lCVqtnRNPTJl4foNOgju3xVLzhT0DKfrcASfin4H/iviUosqh3E9NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708640897; c=relaxed/simple;
	bh=pq1Y7B6kZEzJUv+AZAVv6+eheAyWqWCP5gPnepjKIjM=;
	h=To:Subject:From:Message-Id:Date; b=scpYcZ1PoJMklcpEDlSyqjGQRrAS42tkRJQo0xv7ViyNhVPq1GDzeWHDs/42x+l/97mAamKDQ0Fdn6AgyrXfH4D0Wf2gQVsfKmIq7KFLHSuPNP0kHAtiiI8u0AnCfuN8JtgzFCSeiLeT/t5K6l4mH761t45URZ7JlxpGhRUnfwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQMJO+F0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQMJO+F0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D74C433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708640896;
	bh=pq1Y7B6kZEzJUv+AZAVv6+eheAyWqWCP5gPnepjKIjM=;
	h=To:Subject:From:Date:From;
	b=oQMJO+F0+GMMXMIT9IxrfG9B6sgBs+MGBliJOlGfQ7FUo17vE3s4FdgeugQB6xBju
	 M6emFP3z/f3ObnltZqdiCmS7CEugkEuvrAUAJQPqonWyaJp+qsH073fK9KyflMtC4I
	 O24MlVfJsHVBttvePyCHDpFQ6MWVF0SgckFFs3BIImhF+/ZYMjYVf1iEYHi4bSbX+G
	 tSXTPGH1te001B921b92lIPHCuTnkqUp7+F2B0mbDdIgq7hwwfM8Q3x70JlDAw83gz
	 6u7L/C/WKLEjxQrHaTT52gYaMJxxSoknyqBdvfY4Zbt7wHdRbOOzldxUCogM0pfP2I
	 W15AxPP+w/goA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF29C47DD9
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170864089638.30414.17311673677120661118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04082b22742aad7734712b7358ac0f08dd3d43cffefec42b478a2e89e2c444aa
Date: Thu, 22 Feb 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708640896
