Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254FA3E0C62
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778932834; cv=none; b=qSCPgSCnwckAMnrG2NUAOBCFtl4B9Ez9pUQvqZmxV0Ee4Pn072IOI4SwNL9v68/KvbuIMkuCkO7KAhF2QY2AgOGmw9n7pf6oaNIK7dtkczIXFA7WaFMBpALH3n4egSLFAals2T+nS87etYFG/DyLMChhvBCixWy8weRkJBzisj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778932834; c=relaxed/simple;
	bh=wbXIrOF2q2inSB3amP4MTD0eiucK8fN4891HWhO1Ds0=;
	h=To:Subject:From:Message-Id:Date; b=GA7x8zg+ClJ9EmbSRxlWYHRpENrMJrl68n5yxhPA1rk3iJsgg/Cfl6za7mSu3cycISKo1WIN4c6x039kobHzod1ORfIyiZjnnJ7FBsks/Ztays+xMHN2ElGGz15wTyk3CytYo/zrkBh53BcIurjOdyMw3X4Vhb4lhSHMom6HyJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebVM+N4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebVM+N4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBCFC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778932833;
	bh=wbXIrOF2q2inSB3amP4MTD0eiucK8fN4891HWhO1Ds0=;
	h=To:Subject:From:Date:From;
	b=ebVM+N4iavU9jX7oT4suy7kjP2GGEtbNY1cdH8iAviOfRps2JYezXWZ0bR8RgRy6K
	 bfdQ4e9dUJpeF2gt/Jgxij0ps9Yrp/O3NwYwmXo/1z3+ORdPnyIdPe0oOpNVT98qlh
	 1viKI9CCp02b7jtuMT1YjyCc2sWF+7eTx6ttWr+t6YgAMnbHUAXhJuu7YKHJ80IzIt
	 mP52fJRPryi7vxdKLukaspV9sdx+ewPUgixlSbkAVALVkKlY8Y66b2KpQI99Lpn8SP
	 nPa065P1ikznG1LetiO9xBOdICQZEyL1V8oceu2tN0QwUMIlT5Y1bMOIIkShPbIuyt
	 ns3E8WxAvnbQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5854CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893283376.2295.3282573649078651133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82f2f0e19243e77156c3605d3f208bb07b65f24d955e5510a7985e202e20bc8
Date: Sat, 16 May 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778932833
