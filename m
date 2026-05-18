Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF15D1C5F1B
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779099033; cv=none; b=X8Bxqzi//8JE4JygOEaxIGZhhq8qTqUeCHeUJZ6KqhlQw19S3Bw1bkHkEjudBNAw+c8ZqHJucor4OxJSHm1hiQYcu8TF32SiadYB5efxmZ4bsz4lJEy8+uzp6JeGdkJFXgbBYxkbbXl9V0Lp30oQIRjAQhfhU43paqqK5loPBZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779099033; c=relaxed/simple;
	bh=NWXkUkXJBd+o+CvukZF1Ro3hVmuO/MBlTFIVpI567vc=;
	h=To:Subject:From:Message-Id:Date; b=qHKeS32ue2GIizVVky36p4YVuREDoc1I3JpoRNXcL0eI8QLtwbNV4HYe35wFRlFLbrjZocP8M8QJXRe26RqSmI1rfdriKX89mu1N8s+bxysBnBND700isLZA0GXRJhuXxA8Km523913I5p5lNvm2bA8bb++Sh0npunOMhU9Z6nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIAjQ0lW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIAjQ0lW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31F6C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779099033;
	bh=NWXkUkXJBd+o+CvukZF1Ro3hVmuO/MBlTFIVpI567vc=;
	h=To:Subject:From:Date:From;
	b=GIAjQ0lWofA2ISjoj5xlm6Hyuqz07ctPUR+MKztMlyY8PT3ohlD1q8xK4xZZv2d87
	 4aaaKh6+opLu0QsTC8anmS0PBMi+oULr/EUYZvdl2Wrl5bcHAA87aB05x3G1q3KtRH
	 XtizWZkXFOMe8miBcZCNFyLY89vl4Wc2+FrLYgRGt8vcbNdRyhyFqAuAFKB9NWjQCH
	 Q1VNSfghoc9dgePd4aaOwcYrzohOevOv9Oeumr+91xkU9E9Js+oSKvDqVIMwHa4w34
	 CRlF5sBcQ37Jp/AsfbMT/d41dSY7wHkKtMVMHSv8CJFYWtixutwMX6Gwc+Pou9Fn/G
	 ueVKs8IBlceMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8B2CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909903369.28051.8197461757627759836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1387530742bbee5cdb4af8ca248476aae0ca3b5676c542dd81982afad936db74
Date: Mon, 18 May 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779099033
