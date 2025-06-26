Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D8484D08
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750918794; cv=none; b=lC3OrvRw7LgUde874aPijPMuDc+AoXBaNVUcHUqFG2cCCKzhIgzCMAYQRbJ9vjAgJIcVxI50gdU43JACAnCFU7fz0WH2ZYZWqfEzFFzyNvln+JOmvht/vBDGTa/YGow+LgG4N6BB1W7ztDdC+78gV3g6/OjETclcgQgzwQN8m6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750918794; c=relaxed/simple;
	bh=doUWwqXNBsMKnrdFBzart5HepUH+SW0xN+EVgmXv+r8=;
	h=To:Subject:From:Message-Id:Date; b=ae1tOwQ4IOj/hfoGm+KvV0kPAT2DugDSVf+z8a81fj6EruKwg700eTUM4KrtecKki6RZOcEl5fXsfz3yjnlLTgCuKx1GEmIHG7rdjGdnyw7bamMBg1vNrpJbHDRNrmDHviWvAoXfcT59v/gfXcIxHxhrNwVoAQq96bWoIJd00Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/evi8yJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/evi8yJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44C7C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750918793;
	bh=doUWwqXNBsMKnrdFBzart5HepUH+SW0xN+EVgmXv+r8=;
	h=To:Subject:From:Date:From;
	b=S/evi8yJYuyHjZ8mtOWpF6sU3gPJFf03m1aPAZYVuHC2uF+zwT759tWA/FOh2Y1J3
	 Cxjf4kX7wQQS92w8i8MSeNUziE46dHXdgsFObHDnP01o+HrZYJOzCdlpb7UVhcLD7k
	 xc7PKCKSXo6equZu+Zfpx3cMu6biNGLmMgnIYNWupJ9uR1KhhmnXUVY8SYY5x+9UHk
	 4mnQY6qZUsfbsOKR7IWHI9Zxg9G87QbTLwhCTDOlFem3v6I2AxKfvOx9oIs4mi2x5W
	 Gs/KU7tjMP1ZKNQWzP8wdmWwGVvTiovYENGm43X64qsPDGqnTUla3O530H70Oc1JQd
	 4gV02nCgIFH+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B2DC7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091879358.21247.197095744368881027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fdc27209ab217a6eced9d9f5b733273a94b17b789c887acf5995b2c2f4fac6b
Date: Thu, 26 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750918793
