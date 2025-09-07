Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A27E1DA3D
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757220594; cv=none; b=EX28LOjhN5Tw0WqtoC0y5leD5JVRiHERxBB0sYFEUZWtdiS8fLOWgQRIkzbbLGTAcaVeOILsFO7nlSuh13X9vzYHuy6ziUdF/f25ePQT7RKQ5PfgzHKTnVoHibnVQrPo0VESGOtYdX9fE/DYGCh8tej+KyGSeNOg/BvZnm4BXrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757220594; c=relaxed/simple;
	bh=Ktne94E0OvyStbAg3MvIL53/MR2BacUcloAKi+44xt4=;
	h=To:Subject:From:Message-Id:Date; b=pyQS20JxlblOXt6K2AYZKkBr9NmDojpJ1JVmHcylxYsNgVaI6RjLuj3mp2QEh7ee8OaZtx7DOc+q60eM4f3uNeWzXUvEhV/FWxR50b9t+NEB2o+vIzpMO+zg0hu9KnYkL7a8jHSmJP72KSEZ8t+1izBk3kgtVMmG75zINWFw4cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5dI//5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5dI//5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4492C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757220593;
	bh=Ktne94E0OvyStbAg3MvIL53/MR2BacUcloAKi+44xt4=;
	h=To:Subject:From:Date:From;
	b=d5dI//5fAL9sQ7iJF6uYljFSyoK7rTlhxC9FuZLZcRX4iBCMBiqTAa1BLAmaYMsfb
	 1QO2SOPQmMPag1LkPdig2n24C8msqLA5Mx+IA+f+ZvmNSG+XHUM6pLEVAEQlm6DU2i
	 3DjH6a298kkOxWxowUw2/LsTjzP1ua+3z5pBcgoyFhVRY/XNuE2Knvuf6OOYq6hfnp
	 uhAb2AU9DOJDBt5Z9kMHB6tZ5s6D9VrIEIuqWDi5cKfFHm2oGRj5sBzXlFXz6sIKym
	 sj9R+mdMvvhxpJNPWFGaFFTJB89AjwM1SSqa6+cWECrMvRohYV6+xlouaXWpqEPqzD
	 0CcNTTsgvN0+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9230FCA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722059357.4658.15621763335296984898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929693c19d0be57fa7c5af4e0e7f3e745f638004cd9cb2177dbc2ad610f3b91c
Date: Sun, 07 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757220593
