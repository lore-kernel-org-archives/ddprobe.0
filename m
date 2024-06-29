Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6775B28E37
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719642263; cv=none; b=LsKnF9SYY2zGOQ97XLhP3Rr0NeIdcalVrQKBloC8K0kgL8DLUVWvaBwuhmwn+L4T0DPsLDl2nN/cL2zKBgJvTS9L1tmPmMd5fHtRInzN2bjkOAj9erto9UkatC708PU8G1EAbk7dFg21bRpWurXk5IaGakGjPGaua2B3EhLJbj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719642263; c=relaxed/simple;
	bh=fRrkJuSFtTv6kdFtxVj+1nzvxAflYSUk0isQ31CMt4c=;
	h=To:Subject:From:Message-Id:Date; b=bOA9G01w6U5yM4OV5/LvyBLPSQY8V44PblHsQ4L/6QS/16N8jUms4wiqqp+pHG6uyOucgTsAOnXac6tJMHKH+Yo/YayUvOd7ZVKZKERY2CVmkfo6q4ExoBHy8wHlRlN36RAAVCqEREtRmUeeMoftuGlJbKIflz8ugoccNp2eDHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMF5SnlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMF5SnlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF079C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719642262;
	bh=fRrkJuSFtTv6kdFtxVj+1nzvxAflYSUk0isQ31CMt4c=;
	h=To:Subject:From:Date:From;
	b=qMF5SnlAUYZzT3LqSC5eYlKOS72ql9nHN0zLtjhSRFhrt/uGhe4qBImfREsVL6XIX
	 lITra6R1xDoYgurzJzpFND5yzXjgDpQsLwRhj75Y7Omyg0t4j3iweAJDr/bNwBdLuf
	 T5NfFdNwW1FzEGjZZZADSTJNgFQbbjUoNF7S4sFj2DY8JwkibIv09jLnroS3OVMc2Q
	 iArGDj4hIW+Ow7LSIKnQDQ2FH2pqYIAapfe6Zo9YUzjb4GkApT1c7qhH3VRI6E4QDq
	 bceDgR4dEK1kLolUXaMz9uRbpQqgaBskV8Qhq9IglwF1I8AI2ZNemkZxdAOpNSHo8H
	 QPnOVfiWhedWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F03C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964226278.10056.4064932252482113973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82cdfdb5794c5a651c892a2b84b7071e8cc39adb71fddcc83fca5fbc526efe8b
Date: Sat, 29 Jun 2024 06:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719642262
