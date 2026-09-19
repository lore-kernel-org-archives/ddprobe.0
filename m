Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598CC370D43
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789821634; cv=none; b=cLBWR3tEpAx0lMOjUQiyRIFyx/e/OJDCMHKwBZpO5lzNuj0P8/A81EZXc4XRbULW0xKRkQow5LpWr88RaJHU0+xqk3RYuNKoNG6+i6K8n16kLj1HM/2BnQORtR24QhnVuLa5ZweGKYfaO4tqBacAvRHt4HpQt/7dBwkBegZMXCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789821634; c=relaxed/simple;
	bh=qE/KEZffsOIrGhkJ/EQ2Sab0UYmO+kHn83HMVccjFUo=;
	h=To:Subject:From:Message-Id:Date; b=jXKEGAZACGw792n3IRKMtEcvwxFJ0OfEwcaMFJBk11KaMqsVnaPXb9iXNcfbZRuJb3w6phbJPQjk/bYWAi4tfql6Mf8uCtYWM6sRHfftYk9KHWmO5Q5dK8I3cPC32rSrqKqYkk0R2TOX4Y/anT5Mc7iAwuQWHfhttTtMS4N0VNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTKKwGBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTKKwGBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AA9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789821633;
	bh=qE/KEZffsOIrGhkJ/EQ2Sab0UYmO+kHn83HMVccjFUo=;
	h=To:Subject:From:Date:From;
	b=ZTKKwGBWc6kR3SbKxO6gBKrzrFJYXiBWVGgoJMCCoI18uE5+ujRk5yYKOlfx3GTsC
	 OLLBW+y9wrr/bZH2zPAg/K4OcjDpQCy5y3fja5DF+tr1BgV24xlB3EqSJaHosQpDFq
	 tO75jaUEmQTC71LgnyQabtjgzhYodcPctUnN2tGcTP+Dib/QtGjCw5t2sfDElIFBN3
	 bc+ua30t1OXur7rIS/27k0aw5bMEyaJ0FydTQwh663BXbljpVzIW2ATqEv4JAHDHkY
	 e7JcdAzCaGRmrskx4u4axC+Ia2Cod1FckWtUD2qWbf0+enE16XM5z5EHPAv5PfShZB
	 1U0WwqDQxfHMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9611C982DA
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982163368.16499.9130246536035645034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f6ab0ae88f06753c88552a778ba6149a0327456a97e5cfb913050c1749de8f
Date: Sat, 19 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789821633
