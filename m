Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348B6208D0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746664195; cv=none; b=IC93sVXlYKuHpjsEuMbcG8EU71UDm+puYfnVGjf+mhH2GOmu8xB1yjLiUC6RyDBvWj7M4Qr69RghtCInw4Djc1nIVlzO/0BjP9NZ0EP4EWfkLPONlt8pjpaydXZIOBvUBg0MaMHH5qjdpTxrbYn/ZB9p8j/9DY+IWtI9pfyq7ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746664195; c=relaxed/simple;
	bh=mwlMhS7eOb2ydk/4uUgilIEjky0/p7cgkAPZ3cOnP4w=;
	h=To:Subject:From:Message-Id:Date; b=Ybqm0TimCIrPmVo2Q4IJ5ordAQwq/EBPiT1p34cO47C6czSMtmabGiHJbqLujOxd0McgWJ1nYaake8X9kBWhAQsnvtJJMBP/CCqke3xetnCOT/Zc0SeS4lwecENuMvZC/4hdbqg3aZ0pC/SYyB++tjnpAJd+Ip1zR1WT8edT/rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBo95uSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBo95uSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F963C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746664193;
	bh=mwlMhS7eOb2ydk/4uUgilIEjky0/p7cgkAPZ3cOnP4w=;
	h=To:Subject:From:Date:From;
	b=HBo95uSVP/zDQ0Ie1U6hKgz/Xkr49vXAkAGg3M3AzFVK5cCl3eGBm+vye1tSAv46F
	 CVcJUYmC9jwf56cLN/EU2iDyEtAdabnXcxWoWlBqUAri1RDp3z+C2u+4m1e9LabnGZ
	 UkB6oNzJcQnWKV9oxAw4KBXJ0i+kg+ffDUvWbKgeW4CdSE937hnIZqv+yDZoD9Mq9K
	 v6/l2HuMYNUWCgWKZfs/xUZYrha5U4u6i0hdnnGuquR6sBPkM2BSxzU6Rj/7A1h6wi
	 ZzPZX1ctJ4XsXC2rx1J5xMv29YkXAFYSvqyYGpExzgS9P6HJF7tXPmQn8Cjxj4N3Q1
	 xr0c5dKbRKm0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9081DC3ABBF
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666419358.26110.4235413520118940799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ab4f3750ad080fdd817d1e39d537a9d0eea471788ba435c5e7ac43474fe818
Date: Thu, 08 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746664193
