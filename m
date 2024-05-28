Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7028716A39A
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716891863; cv=none; b=mQz0qIdV2TxFdxuE4QUr/oRCQFeRMBR/tekHHwaZOdAsnRnCUjmvedMGn+kMnPOskuBhmH4oOCH8VyM863j8gi8PBGk0cKxodQOJAIpmum4VbBEPMq74A8yj+J/iBsQHo3u2UwJ2ndWf+OlGmmpm6H4GaWNWcGlAX3A+fkHi/gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716891863; c=relaxed/simple;
	bh=2+NKedU9MyIa0cMcD2AvQ1OeNPp5VikrpRcW6Nfi24I=;
	h=To:Subject:From:Message-Id:Date; b=oAvFwN7TOWq6+uEjBZan6KxaTQhAp/1bZwnHDuKzelhGB2kF6ZPdJY0GtdQbAkQshGRKxyYAk5K7jQwlsmVqcIMvtxhZjXUIkDyqwJYt1GJyKWue+QbfIQ35nOW73yTjwVbPwRMtri1lPEYbpxIgg1gY7ykY6E6pZyPom/vi+SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cqd9ln+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cqd9ln+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01F27C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716891863;
	bh=2+NKedU9MyIa0cMcD2AvQ1OeNPp5VikrpRcW6Nfi24I=;
	h=To:Subject:From:Date:From;
	b=Cqd9ln+MH580tnpgVvECZu2CPTkvM0l6amGRy5OPMjObmX7HVItQxIdTWIhwO/6dv
	 WCNcANefbtPKIohJh6lBNsE5o4dPmkfBKncCMpTSObCJHLKz+JyoizCkyWu2h0PAVX
	 SaRWecT5SoRRN5iOnh8mKQdbTqq/Z79yHjGadJKgBXiFsy3cz8crG2kgK+yEEidYAs
	 cxec9NT+boGcq8UHRko3acnH8TqxniMw3I5tuCTIisMrkq4idRGYS4nRICMneN9rZq
	 p7XLwUyo+Us/3KLfB0ZW4a/zuLgqik5Ksihmx53s0/9GaEYHReH8HHf3PAiepK4ZzA
	 neJBCI5scHg5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF4DC25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689186282.18422.8717848755192510894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb3c9f34ac219374b481ae069c06cd1860a9878d263612a6493e1e1d6871ce6
Date: Tue, 28 May 2024 10:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716891862
