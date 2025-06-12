Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED1F233140
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749724194; cv=none; b=tcIovg28+/EfIGiSMqkHuSQeJsy2AzdQvkp6I/ifJmDK63b7x5rktRRNp/tRjbdSDEqx6107J2Xfr2fx/wTzEa47+JkX/I9/dos/rsSu/5BULuYOc+rLOV7JxF5/g7dIeQ84LZYKPXMyHcyGaq70VkdYauB33RPtN2yHcB+3u2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749724194; c=relaxed/simple;
	bh=YM6Lc6+HXJ+pNhyRpca7v1VI8r+f/UKveV2Lo6mzdzE=;
	h=To:Subject:From:Message-Id:Date; b=Mdu6FcTBm4sEoaltPM0ZgEL/g+9CmJJh79/KAMo505T9acdaKlDKffoTz32EhovSRp14DhIA7YC4p8DoO8l1Mk+CeC2NamsfW72LVmQ9nUvamNcHLabA5Y9bbDNF55IM/ExvvDnpb2Hv7YTuFZGWvYEVVsm+ynoV2DofN6GYJkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcNC59QT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcNC59QT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FCCC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749724193;
	bh=YM6Lc6+HXJ+pNhyRpca7v1VI8r+f/UKveV2Lo6mzdzE=;
	h=To:Subject:From:Date:From;
	b=XcNC59QT+us9kIdKU0NpG1LorIFgrOzrkvPkAJkkj3KYkrL17VIZL9QENtguFLu9l
	 iyqdNuKsgxtaVqvkbQL7Vqq5w+zJtcEG39KNEeDZy9vdtei3mY1sGuLguPS3E5cb7B
	 RZuJdt9cWrY3iRFE9zyOFkcYaNTgoLJBV+Rtzrryf7kd0vRTqMTQ18r5ZlxWCz3fPr
	 dIkK/ga9pRdb1/GCrPaJv3GTSjvMXiXZq98Gr617pm4i0JMFUD6vyWs49UKt9Pkcsw
	 F8sINsBvLQuAMrqxmsKQ0TM3CofHe9lHe6SL5QottySwSWKs0ngaFJ2Nte/TZjtXmB
	 QINJvHet62C7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F041C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972419357.468.9804068542907154526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d026da410f393d5d9618823086dc92a04d378bbb018add39760e597809b6eaf
Date: Thu, 12 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749724193
