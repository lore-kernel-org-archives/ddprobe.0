Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DD92698BC
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744958394; cv=none; b=kdjtCqpoDXX2sNPSQxYr4kghzmHsA1Gzg1pcDFnWVXijS5lVnbBbwPeuxIQpwDd5JzeZ2Jz7R4dsicPjn6VBpwHbNoOlOpvD1A5+mRwNQaPfU5GLSTwo5nJUuiF1q1zalhvw3fs9xX/MaaCm4r/IaSmfW6Gr02vfYv8fGMjQFzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744958394; c=relaxed/simple;
	bh=5AY4FeC0IX/Jwp7TwXcVE6kb+MCTZf6CmffopN7KBQM=;
	h=To:Subject:From:Message-Id:Date; b=cts3pxjUzy9N64huntWxXbObwRbSvC7QtVzO9r25Qx4AC+q6IF4+1ccS9wobOlvouzlN2aK+5s34e99DztFncRA0X7SYf047O28eagyF66YOvFYQSInQNlhzryLr6fy3DNlI0aOW12YgDaCSkdaTsbnlhtHS1Sdss7TB/DCeytk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SaEEdCDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SaEEdCDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA06C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744958393;
	bh=5AY4FeC0IX/Jwp7TwXcVE6kb+MCTZf6CmffopN7KBQM=;
	h=To:Subject:From:Date:From;
	b=SaEEdCDcK8ljt7stjpV20PZ7CcPrFH6oLFNKyVxZnCwHT56TKu9jb65k1SbkkOj1Y
	 292AEJmK/uJw7ge7l3rhzck+XO9mB/JpFsJl9vUKw0Lfvw6ERIVu9QWch3p5I7QoT1
	 /OVlVycIi/Tlkk9nc4sByO7D1g6Ykcpv5Ypv3jeggIQDlpNWUtAgiXI1yQ0tk9kjl/
	 jy3IBibVxghODCG81XhYLxkSwOwUQ9YrfpjzdQuM2aT3+CPAG6KbswuFYd9JcY0eDb
	 3ZCDNPiUL2DBxh3wUIc9/+ESrLdp9wcSKuGzEONSAzoXTIeI2vl7RfrkSY6honcWlZ
	 yTRRSZC6iZ+mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55E4C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495839366.11491.11893535275039155008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58b2aa1634ffb0c25a1488fcb428e67abef6be68d6a85b87374224d8978e9d0
Date: Fri, 18 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744958393
