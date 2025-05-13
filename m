Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5AA19E967
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747166395; cv=none; b=UVID1fUNG9YHE/eGjtlU5iRon3tEM/meQ/vKTcTIcYSfccD9SdHXdCqOPTVfVMVrShIgCILWx/AnufP9ZlvN6ui/lgzLWDB6HU2W87tl6oVCzKkRnV1SxCT+JR8US5F3YmofQohDInxdSXm4HRby5AghooVHljOxN5XquuaojWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747166395; c=relaxed/simple;
	bh=Fl+DSPx6qPmGEGigHazzgeOmHAjDqcH79GrdxrjPvGQ=;
	h=To:Subject:From:Message-Id:Date; b=C9mKKJ6s51DwnMl657xH6116EquoixILZ/L2ow/ZbJM0V2ce7Yb7GuC6ZGDbD3+VWQooEgeOlWU8/NsOzVd0gkGFUoIt3f0Wn+jhq3zybqv/jjbk10Suz/RKAkhhGlfvvaCXFeo9jbL/KKBeB/rcJ/C2ONM0xnXB7zd5oePvxDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5wipM5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5wipM5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65CDC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747166393;
	bh=Fl+DSPx6qPmGEGigHazzgeOmHAjDqcH79GrdxrjPvGQ=;
	h=To:Subject:From:Date:From;
	b=I5wipM5PfRWc8b66ZniOjNqkjAZFzmwUIA5nEKpz24BeYILd/0IOrlksb350zv39v
	 3BPbWSMbitfOFzNiB4sO6Hf1nrwWOTHX0NDQqtn19F8YjjS0jeXMACvn2oHifBlL0r
	 l5jQvzIPV6+sOXeEpEaoWi7flLeA/HkzfsgXjZ+QiosZEeJsf/a+es65oMkJyb1tuY
	 qg7l1ItsvC583iMfwGA41U817nS0Llc5bAILOzxczm7eC2WGF6tVDtnqgJp03YRMq7
	 OW3fTAyc0PJsDD9oVygDal9O+Wuuqc13szobUXsjAMcAcR7Jpv195hM7bwMffYnWCK
	 snt91k1DNPMgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940D6C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716639357.14338.18031569400224597049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f07022281b4a57209eb2af060484f775ddcdf1318ff8884f848a5a1ea142429
Date: Tue, 13 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747166393
