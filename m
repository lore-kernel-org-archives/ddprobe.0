Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FBD199231
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728680154; cv=none; b=RvsQ6O6k7+bpmAsIWLDaEnNCY7WkRjbtsTnVcDhltIC5tWghw9hE0rNhaJ4vShANcrs7sJoHTWPMPX4iJbANz9fU4sWPxvoQmRJNiWOvIMj9cvjQKuk5CObtbeTu2+ivgMcPydrTTNNSD70ALE7vDDY38tvcnISoZ3GX13hng4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728680154; c=relaxed/simple;
	bh=GvJ3WX6gmNWvWWTkE8R6n/ovvtti8sO2/BdkldPnXfM=;
	h=To:Subject:From:Message-Id:Date; b=gJI8dw/FnglX3UDynEPUaiiakxvwnLW6DeehmrpvY0IRhWa60iCUM8IhBqFmfxRGkhajmJzSlTLC9wrrZ4G26B4Ap/MYx++o7lWAJQYTYTHHJcoz43ZPzo4SwkQl4j4bOdLB1ixHYI3pKnhQVAia6Y9/DYPILJ1Op3Cg2bQ0qgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atADyg3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atADyg3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B035AC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728680153;
	bh=GvJ3WX6gmNWvWWTkE8R6n/ovvtti8sO2/BdkldPnXfM=;
	h=To:Subject:From:Date:From;
	b=atADyg3yl7GENulVMup/IGIcuz42rm3atcDP0E1OyleIbgaQ7sJOCdeEQ6bHQIST0
	 gtKpORL9YNdzjGtV5gU2AEJSII8umvmCMkScGBmGfBUllVIKKUDvHGnBHnzJdSlHmK
	 vmOCGYawMeSiFv/bFZhUhndz54sH9zws9aFWeHSomE3PuUxMgOaKs00yvdt1ReKlQv
	 1YFHrZqnwFYcRHeFvqyUHgpWy0puTRizynoZwbeXWaLhHN3rDHPsLaH6kDxZJmolHB
	 MA3U1AVzLiwd9TcMtym5sWcXwUuxbQx6l5pmlvGpDfKBG02O4RXFc84x1RU1lL2Zvd
	 5Yx/YwWEvycdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA3D0EE3F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172868015358.16603.17147547395017135444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a4211f717766d51321c5f29cc64deedc1292c5c35596e7ec4bf3e43642d9a8
Date: Fri, 11 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728680153
