Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7F91B81CA
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765654374; cv=none; b=hbZ5D42mQwdTC8u9dNM1/KmjFhYc5nKNOcLW0KEo5zTVKnQon00Sek4xsUDUROk3bmm/KqPlpDtsoAc4XXT9DFHAgIA8QZREtCGMVC/A7m0UgqPmxwPy6BNluyhgvp/5JbE0K7EaONMLQS/EjGrrVaK+rt8WdBEEMOnSQZ15LHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765654374; c=relaxed/simple;
	bh=1qnD7MkYCCNmDX13xtSy1rhY4UVGgDWPh6hFqT7/w9M=;
	h=To:Subject:From:Message-Id:Date; b=THcFgKPXakJuEY6by6yztuXpEQdtYxG8JTgsbrVUZc/GXNko90Q7tqhFsD0yP7khd36OtEhALlh9KtJt0xLTgVRu8wx2YURUloA7I59CPhGTcKQTxvzjTdDramLbINtKKDLJvFMgGK+MVkUfHHJZ2dCAyasWOtIT2SPt9qtoNLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUr7ypyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUr7ypyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6287C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765654373;
	bh=1qnD7MkYCCNmDX13xtSy1rhY4UVGgDWPh6hFqT7/w9M=;
	h=To:Subject:From:Date:From;
	b=sUr7ypycOornpe7eg2LM7qDslmokiZ+6e3ap8A22YTLxRIFTwgPtzKzMkSWBoJ4J3
	 iUjYX67PezkPqnMsQSs4c/h1UGABg2auyyBOOVnbOQG3dzInkcBOsPOizTzVfOkusE
	 WIT7s404NfjUHo6MSEd4S/nGP2JN132jlQbh1MUMWCxfYZUK1LJ5Jt1EzXxbdgyvPp
	 tIUwD/Op+cNYQ+IkYBwcnHA3KsRaCCeSuLD6nR2auqSc2I0gMXZF/0cdRdlHclGuC7
	 tL+CaGFNkyyS2YUO+DRHIC8NKu8SdNPd8S5oT4jhF3jUuO1eXUPh4sbbbAsS6cDDR9
	 Yg5bqQDHj4KIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C49D5B15E
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565437358.1246.16159684260901677194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a03e3941b0ffd1c51d0903ea39bdda91e37343257436ea78174ffa9aded9f72
Date: Sat, 13 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765654373
