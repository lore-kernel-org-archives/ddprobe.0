Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CEF383
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748753394; cv=none; b=YxLPjByDT671Y8CMpYEFB9BvF+UuXFLf6DBzYMzlOkbPedUpG3qbvvuFhyuvhhaio6mKyO5gu9YVLLSM4//dhrQplEslP3lOFtfHbJEfQFF3KKzZSsXfi7cDGyJBCPQ0WeM3rLGYgH7pB2V2Gg5GtjFnUBBauV9xWpCx+e3ZNDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748753394; c=relaxed/simple;
	bh=wy12AnE8ISOauL9Sox5Uuhth3zfGRvbBboX4LldHmM4=;
	h=To:Subject:From:Message-Id:Date; b=dP5B5Tycr3w4ivdLUGcrsAvBC1jaZ8oJPI91gSHxvRlPPo4i0ReqhGl8pthfhXwEoDBBSQ+D59Tb/Cn0zrad9/SX+0Oq3KRdPMGPaD9mErsHay8CbJBcnuV+A9qmcsEIrjj1RRSlsbkWhA/y7Q/IK3rBFRzsWc6vOGsLauzLXPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUmDeiVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUmDeiVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8861C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748753393;
	bh=wy12AnE8ISOauL9Sox5Uuhth3zfGRvbBboX4LldHmM4=;
	h=To:Subject:From:Date:From;
	b=ZUmDeiVVNtaG9Xzg4XQeM8tkJ1xn3PNN4d97yFJG7PW9eBo05jzZOdrvYoka+Q6Vr
	 oINE9LCIZauJfptIHGc6paLp36aHBfokdeJMQLd9ryZ2Ha3LPP9yuOvFhVJB11HQRr
	 uueIWabxnKB32O585N8s96R27TCPCm3reuW+gXrw2WzJfWUDruafqHnPXwR7pGHrlP
	 VX7eLS/3cjJOef87DTPfoMzFi8BnDhUBx2+BvkVPAqE6atZZneBMuDUpNoLJZIousA
	 HXk0WhseEBFC/4nn+Hj6EFFHQEvT4LFOpb+KdnCD20jFbHIufZGjuwr8iuBlrDNfH3
	 znshiLdGXAqSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96093C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875339358.6513.12351992469106658509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef5fedef58047a6b39d8d04f5922038ae63932f2a3f3ed3fcf84ab90c7e875f
Date: Sun, 01 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748753393
