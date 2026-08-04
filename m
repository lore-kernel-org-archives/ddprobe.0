Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA1548AE04
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785871834; cv=none; b=rZbv5Vo7uVQCjdI6PUqmtxfuh0xJKi4DJNdLERru4faVhX8oXomnfZnldjGCXtNvwS2CaZe30EKlI/5D/k0RLJbiCVmL5hAZRql3u1BFuzPK2NdWHvW6ND3ef97mROl6Ixsgr1pA6H7BZQel2i5bxjG26Ng61YlvKe8sbYcG0YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785871834; c=relaxed/simple;
	bh=N6W3bk88V2iR5hFcel+Ja5SIgkSBp8i2pb8fGSyX9ng=;
	h=To:Subject:From:Message-Id:Date; b=JLYN01Nrs+hjcLWlHbMXiWu2LWKp5KzgDIQBh9kk3MGAZzVU3LuAEnIvadAhA0Bk1WqSlyxaBN8O4m9z5833WWhqkU7B3BxHiLeviDdZi2FKSNqeeftZ1V6qOCvpumyxyWVf24X3DJNAiavR9ec4+ViYFgucV+CL+5ddbvxcFmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r49qI5O3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r49qI5O3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC02DC2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785871833;
	bh=N6W3bk88V2iR5hFcel+Ja5SIgkSBp8i2pb8fGSyX9ng=;
	h=To:Subject:From:Date:From;
	b=r49qI5O3PN1CiT+2j0PcivjOG+0jVg9PRVf7Mu0hFGm4kBxuifqjTipF3hVWIeGoj
	 ekARUuU6lT+Cn1Ivm6yzQDUJFX9y1o6Po9Q5Wu1+4SOI3q/rDT8oh63yuqHXt8BQN6
	 a0Ej2r0u0055R/2caOSt8MKovme5yFB6ZKYKu38L4ndkJeDLhNxGE3nEqDOYsMNADE
	 7nvGkZjk4vGl8gRgrvn6XIk4vX1fHRTC9e61QN4A8yLnc3QzixbJE4PyC2SXJGskmP
	 rBJnDQlU0bSN0KRmPCEux3HhXmY96ZO81sPl/lhnfrX4yZpR2WiI6Nh/pi7cBgaM5G
	 9oJzTVxDivGwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7154C55ABA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587183373.10047.1080854147614833548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374c316efc176dc5f4fdfd36c0bfca9966c42f18fac656bdc64252022ac9da5c
Date: Tue, 04 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785871833
