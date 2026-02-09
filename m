Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4B63803D6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770659034; cv=none; b=rho9EY3HLHOVq3MPYYkivKePr0xCu1PRYAGykJ4y3Q/VRRjwW/jQWKzwZ5hOzcVTzIRCOY5IWs5xg2b0SlsJ0Q4VRR4lUnmrMdI8WY1Wesu6qlMbEGTM2ib5OgyfTMt6GjYmyZ1lseSv5zORowl4KdtpYWetaMpBa2PVVVOVp1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770659034; c=relaxed/simple;
	bh=q5zFBuL5ClM4mVuGbFL1BcLm90Y2acqb95t3FMoRmR4=;
	h=To:Subject:From:Message-Id:Date; b=fveR5LhrBkR0XUjAJGDSmmJ2mUrzaZ7DNw5nytJdxN6aj1wtVZ86hVxFbzASj2quy5mwIFXs50QMyqf8KYkHTjmldZreJJ9WIkzp7tMQe2C2suR+NQkVSRClLpwfkhysAxIzh32KuVc4G/6dHRcFukBkHxpv2yerDWGQXJZUANk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rr8ml5RZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rr8ml5RZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD9FC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770659033;
	bh=q5zFBuL5ClM4mVuGbFL1BcLm90Y2acqb95t3FMoRmR4=;
	h=To:Subject:From:Date:From;
	b=Rr8ml5RZELh94D0z0V0TZk0P/OqcxEME1NsMMmJ65qUCLoDKc/4X4M6DOsrSfir9Y
	 13s0uETU2a+FHUjBqR6j3PU3t4mp5vbkil7ICH6csGDGJpvD5DnH+36WfyvociNH29
	 vAJVY3rxc0KOFeIDkJOgX2Fi4TCMHmtsqANAQEzljDhJ3TXENtStCiU68A6dQmQ9nQ
	 IdjfIfIrjRwlIRahmXHYgHxYCuL7/KCJFlkLJzQEymUXqPfN8uhjjbZFR0rkJUAAK9
	 7o87UGdcbTvawX+Ni2ob3rABsdD/luCxlHTAyDl7IonPcncBx+cgO6c8c+PDxaiB1V
	 uzK462w7EnwoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C0AE7E0CD
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065903359.19322.15548860567626285397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c54f71912616e7fd4681ab6e85b9d461cb98b226ac5b253b6a47ade98c0f786
Date: Mon, 09 Feb 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770659033
