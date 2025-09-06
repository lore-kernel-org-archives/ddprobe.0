Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1470617E4
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757118594; cv=none; b=uHJ2UCkCQEynMLE3kVcJJKxhroi2NO5n8OEQZI2h6a62i5d9u6ttssG5109cn46I/USFD7weXGWSV4ogF/PhG3QHq8KIb7jkGlOKBOx+jJ5FXTJH+bQj8BM7zbZ/rMNTZz02cf9avBtPMAh06B8pfUXB41Fe4VkCBHnYMlRbOvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757118594; c=relaxed/simple;
	bh=u8XAZHI9zSCOhf0s6LSdArDEMb+JnU+2B0KzqwTpln4=;
	h=To:Subject:From:Message-Id:Date; b=lLWZq95ufnHG7cecFSwvI2GfJFG1eX9AlpDCZsV4A0VLQ8C+M/eBPvegYM2rjI0G0Yv4Y+gIsIIXYRKtBJ/AsIvrwYMtShwJbp9a3fESL7ONK90fJ7jxHjlXEbZrJiCN7SKOZH/djkZ2g3hhi7Y/J+Xa4gdWax+vGeadw2HsmfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deDqVmw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deDqVmw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F469C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757118593;
	bh=u8XAZHI9zSCOhf0s6LSdArDEMb+JnU+2B0KzqwTpln4=;
	h=To:Subject:From:Date:From;
	b=deDqVmw4tlLAG0HP6JzxMeJcon57937LigOB+P5RfAgeVU/2CHTIAQuhRii2yK42C
	 bCLnMol0UzThiWaJrD4AAiPdoJqhk/aPYvm2RVKAO5Hz+jQjUMqTQz9qyd4G7TRbsZ
	 ordRR5DF8K8ETkJXmhwtXTlc9PTMBErubpE2M7orq+JFU5z9FLea76rqS78PGdGG/a
	 hf4FvM33odMYoYAx6sTK+IILQNbmFa8IadMkfsGqzZcs8olhFL93gmRy3QiG4uEB/a
	 Di4Rl0cY2tvpBP5ynVY5t2PP2TKQUWk/X6uEPwfjN6iyO0ZkQkw5W6lzyNjb9Xy+OU
	 ijmgLbWMmvAQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D7ECA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711859358.7599.7873310621090637191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e030cdf88e6c5df228c041cbc24babb9de81bf62afeb512955021c12835dee15
Date: Sat, 06 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757118593
