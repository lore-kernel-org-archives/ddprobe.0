Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ED4D2FB
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735091754; cv=none; b=AP0ho4rAf9fyCpdDT8SzlZTmnAEqhp3vFP3A6z6JNIAgxf9tukOfhAx5fHV73d1RQ3laZjkUIw6Ph+jWAQQcoSC0q1W9fu93xn0yiM91vzC8q/KzAvguJh6Kii23PtM8SvAo8MKVRI6v7YuGB4vVPZ77MDrqMxE+TEXaxQJBGd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735091754; c=relaxed/simple;
	bh=QhI0VGvsm8cYxe1vzK11owsVVX6VVt2lJijDH/Cv8OU=;
	h=To:Subject:From:Message-Id:Date; b=Qlc6zorlVFQloLeVgcW/RFexmAXPP65QU1n8XYFI2cL9kIM0uN4b54fpAuNZKhUDd91cq+tsXB60vVHRUyacgcfUeZbkyLCOWYRHEvWR5Q8RsZ7Nd+GACR5/9mHK0G/12l9FC5B03Q3beGaH3mHLSh9avLI2piLoS+qpTqYeOJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmUaUCEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmUaUCEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6120C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735091753;
	bh=QhI0VGvsm8cYxe1vzK11owsVVX6VVt2lJijDH/Cv8OU=;
	h=To:Subject:From:Date:From;
	b=EmUaUCEhyPC1XL1LXUG+0v56RKyfaQcBOPuGC47rITafZUuw4wAW7bgdED7rfFSBC
	 xsQ0WOzpNg/RZhDoyvvZ352SkGZ0UjXKtYWIk+4Xv0goq+SIF+lPDHPAWvuja05K7W
	 u21fcSIfZKkqp/vivWw48ENphJVcuDsKjF3giCwrTvOg4Vo6IUpw9uigTFoGh9wod2
	 2qwChlg7x9tSMYEqX6UPbo+h2XDtLeW9vCdyBP572O1AQvCXGBeHdydpYItX13fBK8
	 I/Dnb6z3wv4fo+BDQ5NuFdGQS8eZj99V6EXHvrynFJHFpqVt7Ikc52OhZq5xO1L2dO
	 M4Y0JVsqY1XFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C1E77188
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173509175358.3636.13499247912482497777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d48216e9b43356109be1fad3caf908ed3570d05be4366fd74e2c9baab8ac94d
Date: Wed, 25 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735091753
