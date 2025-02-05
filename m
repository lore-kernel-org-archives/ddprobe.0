Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42579142E83
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738725354; cv=none; b=tv1RYGVziPnV2ncLmyBsf15GdAHG9kMldZ39Hvswsj39IJMRUbii/hHSLXYaOgROtfaDddyZz/3/INy3hsCcb5bYCBjPGMMzJCE5NYvomI12c6yOWfn06r29Jalg7ljRafB8ZD+In1X/3P+DKfrAsesxl0i01A4lNdZMcFTiFhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738725354; c=relaxed/simple;
	bh=GCJnY/wpclwfoAs0wHzru/WmyEwM4aVL27aAh584sWY=;
	h=To:Subject:From:Message-Id:Date; b=c+I7ImbOyDNOgWRR3SA5nlye58LyAlRbiBhAgvNbKE/7t1enEPYRh86aJcP9o0nuXWFUwQMImM72hAZeBchkNqZnRZKLB91sbwV3nyIwclmqTpFfEZPcu+eRSUkaN3VwrgL/9xc3R0TsNfdN3IMxAHKEzpuJBJAyPKTYQOz1L9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u741VhbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u741VhbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC965C4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738725353;
	bh=GCJnY/wpclwfoAs0wHzru/WmyEwM4aVL27aAh584sWY=;
	h=To:Subject:From:Date:From;
	b=u741VhbMp58Kw7dFSiQNRfgPVUe3ndUWDYJ/iJ0p5WYsqi/+QL/ilEcOawwmHkfEX
	 qaUJTKBkhECts9FdJ9ImHsIxzcDfWfeJd0xxrXJ+4jd64+FQkRzykJxmeBmmyoIejT
	 6TKB/N8ckmDiQVQ8KRRq0bugc/PQyed0zI6oLCuFKFxXnD66+dSzQdw1quUtxRW3DR
	 ZBJvsJGeSourNbLkyU25nkaY5xRws5plupuMPVcGZybo83DB3wSpF+OeQGWlrvNBW2
	 ZizprEXr35JNcVHN4es5qPIatmPmXKqrlyHoB3D+sHcNOBvxIAGHpG2tlfF1iuRDb1
	 kmeHk2ZKlQvtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A405C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173872535361.26026.7636184766807739372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26530eaabb8c3264dd2d29f681063e0a28bbbaddcfd030cf997d358753c9244b
Date: Wed, 05 Feb 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738725353
