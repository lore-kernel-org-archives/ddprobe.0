Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360721D54EE
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752835794; cv=none; b=o7Alr9f1P7QZpFYbJ5uDwqFhH/svuDFN9b2WEk4r43O+4kN+YP3Dm17qAcBGK37SUGfYZIHAl2yG7K4yx+EtAFNMPAZRIa7/dtKJ7oYC/Z9D/+nlNi9/kmozO8oqcqpxp1ZMaQ8hEr/fwObYBEeUBGxDU69milTN/qWZL1VK8ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752835794; c=relaxed/simple;
	bh=YcHM3RIhvdK21Cw45oTPDZEJSWCLi6rHvqxO6lkiPko=;
	h=To:Subject:From:Message-Id:Date; b=L3U3l3sgKzbrZJmMRl4y7FN+MpgOWoAMBaIZ46vWUESOjl3CfbOX55igilwDV2zesa0nCOdtK491lNZuUkXS4VUR+Avln88pJwSgStXH248BHCA+SuKmroxrSm+ynA37sdqA+5IpTNsJU9vdIa0d8PaA5HmyAxhfIx4peILFCWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4wbmcqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4wbmcqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A274AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752835793;
	bh=YcHM3RIhvdK21Cw45oTPDZEJSWCLi6rHvqxO6lkiPko=;
	h=To:Subject:From:Date:From;
	b=O4wbmcqwNOQQswzRot3tJDG8W+Dn6lLfPvqCD4+zcqVEb0oXdnLf6PYac4VhKVCiW
	 hLdI4hLZvbEn0+whlzsPRxWlkkXFhMXv3wtTLhDHtszWFmtyzdyzk7U719Nddv0lem
	 7dCHeH7rHtP+Qxx6+Xq0t48EOruYa/mpTJ5xZK+x4cbNRwvFRp7QXXOLe53nAFAXpt
	 RgNKPU+Ec4RsjZpC6TgrcoouatVDBYfYDi7VvaqK7lytDlpBSy7bqLHB1tUIVmjY6A
	 TgotFqjyVqTZbZKjFCrgNMg5ZrSV+N/g6neUGp01tSnb5tSxMWDTYUN8dsUy0ojjvx
	 Wfm7kKoha45Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF95C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283579358.5897.10036271976162031307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2afb3d9424dbbf5cafb7fefb5ac0e6ab0ac95ea94c69fc9464f00e822308d7
Date: Fri, 18 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752835793
