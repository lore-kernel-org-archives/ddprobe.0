Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062422E7623
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768547634; cv=none; b=AnO3aWnFUUGrHPjdBuNNzb/mYERFbnsT1cixdEMCwIdGSy/LpGTGj/cYhxG6Exxxmuzz7DcvxdqDHwdcsWk4fEkMR17qttyAzDJGSvZNXIygNkfpxDHQionF4pdbRWXwVuejVPFMLq35MYgkjFOfcowNBpHmzKMzS3EbHxIOEfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768547634; c=relaxed/simple;
	bh=0yW3iOSVb4LWxEAWXGHyhdHyGB8eBfSf5jvWL/8pIRA=;
	h=To:Subject:From:Message-Id:Date; b=P9fHfe1+10KrBSX0TzKRqMur453FlLKVBmUlC2+Zt5iNSIyVCYpDEKIajEqKEgPcdDVnSnJWWmAEpuVRt11HlbayKlrxbTtauTEyqMwDMSJI2DscxSANQgM1/B+91jNFyNKaNqs8Y+C4v+pIxY5fYqtteG1XKr5nIokVZ6aNVeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GObc0NTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GObc0NTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0907C19423
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768547633;
	bh=0yW3iOSVb4LWxEAWXGHyhdHyGB8eBfSf5jvWL/8pIRA=;
	h=To:Subject:From:Date:From;
	b=GObc0NTToo4nDoGnWE6moIyeiRub/QDe7pnuQ9zqZoUS/8fdFaHv2RbAcfjDZ1nbx
	 cgLX2NfJgkOJZAc1mEG1baPtsLtToiVsLzHpb2rYdt6Lu044WYGqSnwOOawZWf+Aae
	 z44G4b056yxWCDuUmE/2yNidCl4JRcOLhaDw5olvJkLmpGDISUFdR+d+SGcTgVIHwK
	 /K1QBOucwnnklCXd/fqnAoFznb3eR3O7Rj5ZHD8C1x8QpYuEk2/ROesanVVU8yT/AU
	 zjKllnlJPzEGiACLqiCXODXga6smrf1B3f4O5G8UNqFzvJZigfzk2cHOpd0MpPYA6S
	 RaT6rI44QI9+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED81D4A607
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854763357.28462.16621668912953977370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0204ee1bea7ebaa23be99dcd8dfe983458a13572ad80bd4d7987e98642772dcc
Date: Fri, 16 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768547633
