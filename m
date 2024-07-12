Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5108B524C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720743443; cv=none; b=TnomIWCUAFpjxD6qu+Z4LguxLpnqnXekTvmkZSB8sxvsS6Kg+YYf9w/PbMYJLFoMXY1vS6d8jhU/RLzxDr+jd7DwWhXkekdbc4tX7VRt5Zw6wNX2X3bei18f+sjhJHanQpG32Q4IzGztNIO96TAHB2E6J96mym1L8TwAKdIeGqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720743443; c=relaxed/simple;
	bh=nDhjP5IBCQKNIaW3Mb7MOreuWyuYxQt6w4aFB9Ngy5w=;
	h=To:Subject:From:Message-Id:Date; b=D5IE5lGI1UjxnZCfbHfrsGnjO/fUwB29iBF4A8WOlIOALKBhj4KyvrFwF5vJvOf9lQkVNc9uU0D2bjWqYEzZlbPULoJDr+k08RWvtbO3I4VsFRn54gk6HceWYINRllhU8UAhwlSvkwyuMw8at6zeEt/2JPIb0wGDZ1AWur63WDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tX9ecrvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tX9ecrvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA66EC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720743442;
	bh=nDhjP5IBCQKNIaW3Mb7MOreuWyuYxQt6w4aFB9Ngy5w=;
	h=To:Subject:From:Date:From;
	b=tX9ecrvkI3K/sdIpjMyh1HVeC2KM0S7gyHHM7RCuMKHKNY6ejB09QCTRZa1IuQkGr
	 l/kt55DmEbEpyb7apUMajcQB4GXEcQbY6BXmqBdA8MOnmLoapkMqYd+HPS7orz22ej
	 nrhN1QMtFF555kgVbZx+AlDu6gqh10BlsvW+S9B80SqADxv/YwH19ytjGVMZFFiUv8
	 j8aw813ply+GgwZdq8zqAnE0vPhqw+hiwflkJQzXtU6fkAn4ymg3XNMSSHbMkq49Fl
	 jl/ttDmR9fqs6eka8Kznm7wJz2e0yI6F9OBXAEn1QDEg3LCdgaD/d7bLt/XYyktHEg
	 FtXtjnCmHMbQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6345C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074344276.8665.12729402006197993096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29191611dbb35f6ced558f6545dd7ba9ae4f421d3afa3629f5b0973f39a2bcfd
Date: Fri, 12 Jul 2024 00:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720743442
