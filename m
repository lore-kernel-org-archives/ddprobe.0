Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82809375ADF
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789637434; cv=none; b=MBYnntl5TWSdTMgS0UYiUaQeeXalu2NvlCrO4M6Ea7qRzi/mWQ/XkkwpsSlt9MJslnUxqdXPApiwSA7JaDH68TOJZhUpoDKDF+zwUEaKhSJsvpydqTQjwTEav9T1rGfGX07KgUD3c2AdBJI6vokHgvUrshqA3kQJEjyVPsvOCEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789637434; c=relaxed/simple;
	bh=zw1PBvSs+j+IBZka/2V2KGSL1weHH7GeIdW7eyKoo+U=;
	h=To:Subject:From:Message-Id:Date; b=SVZmpeJbmwslsxqm5gUlJ9iCRxyHe1EmkdUrkv/stG8E7bAN5HyG513Y6Ii1WArOrTV32mXiOheh60GzioNEVUmwqSqprvUq8kQV9brXV6nFShQGeo8akBxBuKwBkkbcf1ekV+tRYrCGonYWZ+OjfCLWNDF72ISG8bGMEii+5iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fePgKCyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fePgKCyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D018CC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789637433;
	bh=zw1PBvSs+j+IBZka/2V2KGSL1weHH7GeIdW7eyKoo+U=;
	h=To:Subject:From:Date:From;
	b=fePgKCyHzEwZUbzSCtN7z3p3LfSElzMDZdbGWL3Pj11XY84oyWLFft5hzDK5hmHnS
	 o9PrtGaAi9aCCQSk7p0XfX2dcHOkV+0MWwNr+LE85Z6zShsIcDfSmT3oFIS4kowjhX
	 HBthsEt3pMvr0THp1IQvPpF07vJ485NUSP9Y4JERd2TwD1+AMpYlLfxbBBLMwLVoHN
	 xfKi9j1l4DjJ7QUbp38GEOV7wxvDMw8zzmLFKQPO4PTZwXDHCObF2ped1stlG5oDkX
	 5TUXu9cBx9Ww706jDZumTZ32hzPtZdmU8it8iSlybhpK5pp2k6mrNVeUV0AZZTJ6NA
	 hsAVt+POUVZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB408C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963743369.31619.1517923276637673082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931b313144b7f862549465434e45309db91c39c075ec9a312d8454faab17597b
Date: Thu, 17 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789637433
