Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D32345CAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779351034; cv=none; b=Nrsb+hoIxLcDGgjn13IS5mdPkrkWIDYvl3TiXZuG8UpTgI2GKsDDHSyge6MrREkvX2YDexFifELWJi7xHRvItyNvzrjR5YmNONBVa7LusqmnUKyOSPuuCc/Gec26g6gZsrb08KBWWShB8MdNgQexMy2+Q9S7T17JCwQMrMWjboI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779351034; c=relaxed/simple;
	bh=4U09sMG14rwgqS9f8tDBBoVUllMZoQfZZ2VoQasBpT8=;
	h=To:Subject:From:Message-Id:Date; b=sQZaPCIQIncSPQjpoBzRD9MUIH/XybY7aJAosPAMYJclBocOKBwwMLUGCFf8CbuD6WkzUEsiCv1vkwxTHaWfx9HfodbOxrqyc6wA/Oxy51IoKXMXSGaZFB6dCOIaYgWyXtjwPYDCN7+tTwcOJNJZrPG5vACVID1Ig7YjhyGWIRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AV7zYk2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AV7zYk2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACDEC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779351033;
	bh=4U09sMG14rwgqS9f8tDBBoVUllMZoQfZZ2VoQasBpT8=;
	h=To:Subject:From:Date:From;
	b=AV7zYk2Fuo5E4scPf6FoIF45ujJS1g6twv/5Ubqva8UKWRIBCAVGFrp2PxR2Pp6HI
	 iL/pfKk+ZKwESD31/83CrwZoTejPM5KMHnBPHFUwHv6ZBCyZhtKCam5Ca+Ij68PFwi
	 92s3c7Gsqy4tgHcQHlKEpd0h8gP4V43qnmBrsWl7euMbr8B9pgNcc/VFFfOkZuSxRP
	 mX+uEJr1TkaMCSEBPBFl3Wp5sDYfy5jK7eW5HjbHhh9nLQgtguxx1xHxcPC3mIKUdw
	 h6FVOOxehEWMEQgk60pKe3m18E36VsfZ8iLAW4IsBr/74As3xrE+UvCwFE/YRsFHc3
	 80HB4+YinN/eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFEDCD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935103370.7032.10730925129932689458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39e7bfa67cccda79137e15210d2c79bf308f3181ea46d7ef3307edab6cdd871
Date: Thu, 21 May 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779351033
