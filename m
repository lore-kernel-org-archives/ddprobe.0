Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2D72BEC34
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769197434; cv=none; b=eg0CPoLqsDgvnmWhB6rxMBH4JYOuuHwUctAs5Zw8ERw0tS6+srRCUxISLSFIxhETDvtJ7Zd0Uzun4dD3Ht9rAxrZRzurFIvnk8L8vijp4bfVDC9DskwZBZl67ADMcKv3mRze8Wv/e10r8sb2+o+FvFUY8f+cgq7jmRbbjgvnWXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769197434; c=relaxed/simple;
	bh=GOgWxaecMniOFmeBR3jJ+IAGq770C8WDxkHaGhjfqPo=;
	h=To:Subject:From:Message-Id:Date; b=qRAh3WQlvJZSiC0vfMn1SDGkGym8SJRreN7yKAu7atQbW+asnCd9c4nahjG9JPQTXrJJ/lFvcNcxWuO+m9RB2+IIDdePVV7ZbziLYk4t5+orHSPsDiZuo6cA3R6V+hKJsxo1HY5227x1LWiJ48MOECN8SJ1Z5na9RZg1qxJ2Kbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuMfqPfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuMfqPfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEBDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769197433;
	bh=GOgWxaecMniOFmeBR3jJ+IAGq770C8WDxkHaGhjfqPo=;
	h=To:Subject:From:Date:From;
	b=OuMfqPfdtVcJVXRvWiXkbnRIHgs6YE8XiqnPeqEVr8Mega2QB5skcuWeQyph3R71R
	 IxKDN9kDLxOgF2EYEFF550ogEhcB1g56wJM85ycynvB6jDL1hICR2nF8We8WLaNzNl
	 GBb+FHApUNSyY42ZcSYZArjFIsWwUIYDB22bst8DRAYAGlQ55ew7VnXBYJeL+KZhBs
	 vyYGojJStBgqHfs6Q7a3bwFJflbbtxTy6ME5k/iZYpuaR8OpCH3IJXUwo6ceHPmdcH
	 39J8uLL5VnYLq6fp1IFDvpYmXXfrKpHaQ/zZ2bL6sd9RaW4t6uFoGaCJvQpFAT0Ur/
	 Xj7hQ42T7A4Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B881D778AF
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919743359.32128.8528602684981650514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 650a698fb922bfd0abbe0bc8d5284155e0f8a1f0104ed3ad92fbabd99382af18
Date: Fri, 23 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769197433
