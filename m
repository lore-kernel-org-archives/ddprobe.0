Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A520398911
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781786794; cv=none; b=gNiTH7sZkKRquE+aMHY+zze0RagC+Mus+5xZS+Izg1hx48iJOVnIEHjQds5gMnfZf3aBLjGZItJxYgHuDVdCJ7S1LAbbBDSgMJxROonFsNpLl0uZ2X6IoQucv7Oup9uT/wTXHWes24kBAjt2i7ZvX84DLHbwDiViTCizsNimEKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781786794; c=relaxed/simple;
	bh=YwuiDGOZxFBbl3UtpXEptxTMzP7GJR9OuorDYsUjSNI=;
	h=To:Subject:From:Message-Id:Date; b=cuQd856u3t/Bt0pTV3v0HkfLeyd/65plJwka8zx15RXBZzO2IoJmtZjdkwtMUssTpS3DBoDTh7i32v/neQUV9FOTIL8Zu2b539xQZV8GqPCf8+yjhfhLtkaCoN6uT+jDXj6vFIm4NZbnxX4QVSAiBUdsnBdxOhE+aLWy9zN2FLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqCrirOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqCrirOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3C4C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781786793;
	bh=YwuiDGOZxFBbl3UtpXEptxTMzP7GJR9OuorDYsUjSNI=;
	h=To:Subject:From:Date:From;
	b=lqCrirOcswqYF4u70a4zeUPCDbz5PWOKbPkJk5eDlDSXa/p1iiigoEs4CIt5MYmcE
	 GmcdkNj4sl76HXOAwjeMeudpMdpADV1kLVOBTFLmQKOUUkPkpmmRXQY7kGyY+qyQj8
	 yFxBCu9y92Qz1Renelh8PeqqH/j9uJhcm+sIZbBs/Q1Yh5i2M37jz0Fq035rpO252p
	 vtDOmtUXBWBRKdBwRsmPp5WNa53pjpadTpMpbbd/WyigT1p3SlY1CVwrt6jSyoFXU6
	 yYqk6haM0LxFiDAWF8FcWU65gAQaMgdBM+1S34VWEmfhe4UULIcEw78C7K04UVrTvi
	 9cJ+jtndVPzbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC78BCD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178679369.3253.17902472461971584073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe89f047f505c2e5af98da54d8a2e223cac7dbefcc0e7727c058939fc59ece2
Date: Thu, 18 Jun 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781786793
