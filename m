Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190C81B394F
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760350794; cv=none; b=f0e0ZBbmc5RwJ4r6wQmQLjDS3yQ7JUuVfvq/vskVgcyE6hkdm7h4rgLHHKaIL+oKZedw+m3tswiipJfvcDmPA1aDrS2crKBwtXnR/xOSGW8XAdG29WY0/Z9y/R+uRiqWr8Ex4s1qjWbHqUrCnTm4APICMUexOsO6rle/kI+H0CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760350794; c=relaxed/simple;
	bh=48KaENNci3JtoOJVFjGKl26SQEVHNHuiUim+VgyTSl4=;
	h=To:Subject:From:Message-Id:Date; b=KMGuN3fHpAc9oFjzwTSwfe3/yK//okuMWiuABEEhvLb037IuOgT6skF4IG8CeoPp/gpiZM3SWw3KaFQm6aPgubA0RGF1r6rj6g3z/yWIFgXsRViY6XAjrUmXdH0pHMLf6YOEVE/9c5e10EBTzhDifB0P857WvdfKZRAhWpa/54g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epCkXRZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epCkXRZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A461EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760350793;
	bh=48KaENNci3JtoOJVFjGKl26SQEVHNHuiUim+VgyTSl4=;
	h=To:Subject:From:Date:From;
	b=epCkXRZ9/lgc6QcCuVmZ6Z0aR/qOt48t3e8BvlaOaA0/hrTdrsUgUAOtfB04NPWxs
	 BoKBtgRaCGDEKbeaCRhrVi8Y9ALu5vd7XxL62N4etz4hvHuWHLedU8PwQtkAqZJJ7o
	 12CoWoNwQHAG+7W46T4XTgnNTDnvMrAVDfVjHSNJi7ZpLP7KKayPjSKiMOWVfAvUlc
	 Y2QanBjFMwpBHxwEwVA9I3jdLIlm6VBNldRe2uSZMe6y+NdO5fDreIkQWgk35k03tN
	 EGPlZ7/R+KKPF4np9EafAv4eYL6eOsGwxz1RRA061zHCmBFsYWWFdq6zSlq1ym/nKA
	 VmKRu59NiIUSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC1CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035079359.16413.16302250660707168365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b61bde949d1432c74abf9036a46a546bc188c9de145dc2888530a280b9b58b
Date: Mon, 13 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760350793
