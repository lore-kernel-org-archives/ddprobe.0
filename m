Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBDA1DE3D9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745345996; cv=none; b=KdO9bs22EvK/9rxyZBwh+qhV5GizKZLjkBcw786uV7JR6PMEcZ+guzqXLpeUPxe9eejzcrSko/1fX+f9dRSRg+tqK4aen1InbPHczEKU6YpUNJxdtQPo6U7wMJyx1iXltLVZ3cUYTOWoxZOkDAPOL5nEk/EQXFR2FkNTi6gNYws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745345996; c=relaxed/simple;
	bh=LnSNGugv2EgmnxmkDn3rzJiA9in0nWs64dAK1GTlrxE=;
	h=To:Subject:From:Message-Id:Date; b=HKW6kfaOkTmx4gRTp1ExL372xILKD0g9/xwNuwrsGRkLDiFiRaaFH9vnR0QBJZFoMk0IYz5maPBbxWsMdBCejTCxvNLbJPyVQSLB6I/BWB0oZnfqbIFb92V0Lsb267cFSJYn74ww+cxK8s5w340bpAmZJ9tHw1u4oF6hwEBJv+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLxx+its; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLxx+its"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28ACC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745345993;
	bh=LnSNGugv2EgmnxmkDn3rzJiA9in0nWs64dAK1GTlrxE=;
	h=To:Subject:From:Date:From;
	b=nLxx+itsRsNlZx9l6hFcKC937iTywme/aUernt0++a+xMoU4vmmtWroxDc+UvS/QD
	 K81FpvW0xmfdQqOWVppUN8Fwyw/FUdqLKJBmHJ3lXsdUihQsYUdxT13XVnlFXxcVFy
	 RwWyGXSGVDwQGqfh0OI4FiicOhfdjI+05HmnUfj1UClPp2kaZmJ6t2Z9UzrBm1mRsz
	 CyV2Up0V2hnqPzS+yH2fWMeVyn/0NvOOfilm9r+VOwWo1TrJrYKO+ph9B38n1AXhf6
	 dALRF2nr6jHJA0D55V4xJlk1YwquGXCoMPJjCngufCg+WRkySbTLT6Y1m8X7S34+1m
	 zwTEWlOLSh4IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C28C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174534599358.16887.10682175027902081680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd86806c878fe30174684961bb3c2a2e762b38658d42e6dbf53811e425c8eaf
Date: Tue, 22 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745345993
