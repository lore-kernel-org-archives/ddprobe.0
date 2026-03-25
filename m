Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3592D33DEC0
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774427694; cv=none; b=A6kn6vUqCqz65px4f0rGqPsCBk7PFAFPOnnJxmoI4OkSLQbw0ImD7ocD7WR2rrnA+5RabxWOZ/l0IGpbUpfwU2/TO3FxVQrMAvu4mVRiQR5FrvBh/U+rX4IJb34LxUQDEb+oRFfZgBKs9BUEEBYmx80GKjtPtb099KV/bieN/zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774427694; c=relaxed/simple;
	bh=ekacGKz5Uvo5TrkGjmP6NYvUhqYsh8qI3+0LMn2Hfzs=;
	h=To:Subject:From:Message-Id:Date; b=WEIRV04PmMPNZOG7q1Z0ms7rzFUSisWAh/77UTt6Q8aGZLOHhR0SfqqFCVMn52tp2n9wkyTH3itBuBbpAu31rkG4UCUFpK+TVhAfoqHoNPDt2ti7CGApbiPGO9lTDt58+WZN9zKoQbEdYPiB0Onq0fvC2JDhX9oAa3XT3Szc9EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Avq9eQx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Avq9eQx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D07C2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774427693;
	bh=ekacGKz5Uvo5TrkGjmP6NYvUhqYsh8qI3+0LMn2Hfzs=;
	h=To:Subject:From:Date:From;
	b=Avq9eQx0IM974B1WJtwL4wwixuh61CtcJUx+iplW8y31vis4D6oI++2e6wVApQmOZ
	 NqGTnvgkumwV2xzLxxUime3zGk+EFCNxD0IYwinUC4kM/n4gvePI/KpEahJlJTIqEO
	 zSntkooeCLzjRY/s8d6we+qFsgn/UeiwVZ4HJsm82X92pYyuuf3QuUCs0P24BuM3TY
	 +DEZflfh5kWFeSXTUJDAgrQ60CjY4xreklk3iiEWuU790Ke92JCCXrZQd2lwdeiMrW
	 E8+mZaNLDTZ8SameA+5m0459stbEDDjwUwttQhh9bE0EaaTSvxGYsdQbDMsjatUQ3U
	 EnCH31tpHNUcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9453EFEA82E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442769359.9640.14249610578935616168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d36f6c214fb35e15d2f973e228863fff08f7da15b448e53ed322ddd90e5916
Date: Wed, 25 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774427693
