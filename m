Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4956443F0AB
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784360914; cv=none; b=CfdfpNuTVF6fVnb681DDtnPOjeM8qT7rVBwHs1YybnjfcwlDRdAEBZIDHYs1LtvpAtRaQ0L6gwHqLwhR8nx53/u2dy3GQ9OqgvvJOTzvqjDQfe/J6ybph8ycWpzJ7lLfg1f+MTOy8cSqcjcTbvX1x0HubgtKqBmryORqshHdqlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784360914; c=relaxed/simple;
	bh=uTSBSq9I/S25MIQNViml+M+EfCcoyYGfMPyppTCO66w=;
	h=To:Subject:From:Message-Id:Date; b=Q8kKqhHw5FMOpRsE//byOiMbBbBG5GkOhS/O39c/ZasnvLRpIHPCJUCHiB5pfUG5U7ekrmShqVDNzY3dwIjAKQtgQfHlnkoUoO3gu4MAXevdX47WAoqtQTQkZaGQP9XDjQ9UMdeqR4G0OIKfS3tAdLHBsByLEbgCRFXyEjDERtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otChWD9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otChWD9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56D6C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784360913;
	bh=uTSBSq9I/S25MIQNViml+M+EfCcoyYGfMPyppTCO66w=;
	h=To:Subject:From:Date:From;
	b=otChWD9S9SAqNv11pEQd3NuTHjEYFp0FNtYcqnu9U6WMmzKIZVTz10dyfMhrQEmGZ
	 x+f8KRo6q23RY79Ao+6t4jm3JbDFw3h1Ym3AocnIE1CaPW5X7AHM2SWix19z4sh+h3
	 QbPIngDpYnimh/dTjTMl2mjgXV64HObpaBG9qeviWOniuDEYyGqNIBUmX6Dc+oHRdE
	 HYCiPtnw+xX4pjvUdB44q7x+3hyS0LgHyevs0lhp0SoM21s2YuVJzRHLxkvgptcZI/
	 gnDUYGaDAJnSrQ7OEmwyL3eLw7H3H+mDsE77We6xMFQxB2zP+8dChj2CCoY0wSHFdl
	 NXWMMc8OVlCkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D61C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436091368.8575.4324266462958829431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13fd4950479084eae834fe4aa7fcd5e4ee0b4aeebad48ea540739d2d9c115d21
Date: Sat, 18 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784360913
