Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BB213D8AC
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730414754; cv=none; b=SHlwpX9HqFlTwNysQITXUDsGDwg/EqJS4ACWk7YEyQtchjBb4OG/uRiZU1gzHEO+TMaF//6VEjVVRBFe9i4eTfsmH+ucRWBwUduetF7/EdMPp+tDnURnkDtyOfFn66ro9Gs8JUem+izuhbLUgWTePFbAYGj2/NmlEQUKhTJTy70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730414754; c=relaxed/simple;
	bh=rHY+gXF33vu+P2cliFFzmHe4H2AHlTUKl2at3jxdbUo=;
	h=To:Subject:From:Message-Id:Date; b=EBERhW8Fb6NkcljEGZ54z9Pe0OU4s3cN9gAf8wLc/ChUakii6T1JglMA47fqb7gQlVlZlAHHbrqjBoIlasa1iP8PBL3VLDQLb8EYqCCL1XAXdDudrGgDIuwnBw0fgAGzIO2nw2Br87uDsA2NMw1lEyMRNmFYTxemXSbhTE3Fp84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JroRlLye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JroRlLye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73D3C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730414753;
	bh=rHY+gXF33vu+P2cliFFzmHe4H2AHlTUKl2at3jxdbUo=;
	h=To:Subject:From:Date:From;
	b=JroRlLyextCSPR1mG+81FZ8J5GDE/a7EjA4WgdS/ELkluHaquWIi9OHUp54elO9g/
	 7PhrLjqza9z4JQ35np/5UnDeHE7++gPxbmr05B4LgzxbWfN2xWzyL9CMkJI5UTZ1xM
	 o6Qoveb2GzbnYSCrq89sQyoy+XvozHz+zLZQXXuCzQSwjzTdzeeE+SRB4e9i5EZ7V+
	 clUE2AO2LPqPaqYX14ulJw/9PqVAgK2GGP5nlDRM6VYI6PFuOpdLm0P4EU8zx/QVkA
	 aGdLWnSbTGcFtrPzFPFAb4hwL0n7SR1+h2NKE55vrdqimeh4vlfDzk9sgrT+fn+N4Y
	 9uxdCGfwN/icA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4195E6748C
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173041475366.15606.5542131422653390565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628b1f91b8560aa112910e81bf605742f0c2d548644a964f59e092c0741b81ed
Date: Thu, 31 Oct 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730414753
