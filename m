Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279F9194A48
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731069954; cv=none; b=HDe4q69ZRXE+StXQUf60+quPTSIfUYL2YlDnpdSSJqnVo+wJcWeklwPHci2hwJyKCbHHPlGb5YHJX5GYPBVGDNsUJDxinsUgIUwcAaCK7WG25U2z+UX29A/z2QEIgUtePvGuMbbaGsmghNqIgQOSoRkWKvNCsdDznzt8u3xqpx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731069954; c=relaxed/simple;
	bh=iYTu9un+BY6cKNibAuElASGRhao2tocJ7GvrDeRFeBw=;
	h=To:Subject:From:Message-Id:Date; b=b6X28ypWr1Z0eruXbjncbo6AMJcqhtCkDj3pTHb6AFg/rEWzLPpz1DNwuVkZFu6nENbqEvs67hJcFJsSgmhykQMeVFJ0RDcHYTCapdHFziHYMEB5bx4AS1yIzd81+AkqcpTHsH/6ZGcC6eL+aHrGqBOuk/g0mHKtw7Wa1KbHRn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHE/bmxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHE/bmxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A808AC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731069953;
	bh=iYTu9un+BY6cKNibAuElASGRhao2tocJ7GvrDeRFeBw=;
	h=To:Subject:From:Date:From;
	b=VHE/bmxYVxqRbH2eEuGebp9KTND+lKwfV2WAfoC9CM6ezu6Wh7x/08tNRludIRbp2
	 +CvV8W2ZbILzxj48yQJGvvJFM+qqZQbYo4h0cf+l76/lxzp8CRcY+1XAnGKOJln96H
	 lAnP+GQ++cmCpZDCqfopumOQVU0d6aDX+mROPUBhvVqZKW4lm3u/vL0VF6cPKGBabO
	 w6B8XF3LufO9eJ3C3mB2HKHHWmsi9kFnAUzsyZW/S321Un/J7kSvA+F5Jgiksj7KMM
	 oTYun2fYRqy8Ma/vUXEv6xDnjGfbovPWYYRGJOFZHp4JuLS1JJUPllVvthtlMeFnFq
	 dI6Z3mMPETEFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BC1D5C0C0
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173106995358.3215.9074652208094227387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8ee3e8a5865ee97181094e2c7839199ccab3b16051e7dd861d7e63698347d4
Date: Fri, 08 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731069953
