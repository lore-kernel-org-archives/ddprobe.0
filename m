Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546762C0F81
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784252314; cv=none; b=Hx512erDscIA6lAwwPQrf2+2a8aIhILKgIbgrsX8fIciYPPJgrD+DaR5KJ3twBQYwaWb9/lPC5e4EMSjQLoBZv/U34ZwjCZdWcJmxrTDkTsd7VoR2UWFpUa5W0gTnDI9D8CtVJP7ev94xMXEFhabA7fXEMmBpMYyMjBTG+YhIVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784252314; c=relaxed/simple;
	bh=06v9ddl4GDKpPBIikajtcqizJFGJntVg0f+mcUrGxW4=;
	h=To:Subject:From:Message-Id:Date; b=DSXxHmHJbSd+DtCd71olZDLJ4c8QgX0wrsSsDhcPRK+NsXcNcbJ79I7Ojhv8AAm2tQJHyS3qv+rIN3dX2ERcauwhV9UB4RjtYuHeeiVtNIx/dSORmqO85Pl0yLYi8IKiCRlnzTcMTBkgbVL8MlVqXP0UXz43mjMbIvDU4/MgszE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFXYcR/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFXYcR/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36E0C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784252313;
	bh=06v9ddl4GDKpPBIikajtcqizJFGJntVg0f+mcUrGxW4=;
	h=To:Subject:From:Date:From;
	b=bFXYcR/GVHEnQhxlp4g7U4SjKI2r6eHnEi+SpzHVGqinLe7liARbuzJ4TTgpjw1Lx
	 WQRyuYnmw1oP7mal0w7EgdWWJKhILMKr3UAffk6xR/C357YUbsXZGoChrgnkXs1jBp
	 /w2tGCvVpv8rmYtnHbzr0d1ReDlNNEtK3MSfKIkFY9lhixoi4CxV2bZVN8uOQx0E3M
	 7oysd5W2wSxxxkGEAPxxS3vFlsZaoWBWeEWylYL8GKLAQx94LcfiIcLTdzUYgLRiaF
	 oskti9wovFsYxYA3x/+iOsCm2rSk8NkPjMvU8jOXiczZVmn4BRuVhk9un3M1MmlHeR
	 Qea1JAXIdfFyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBC8C4450A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425231370.1445.13071768292378634313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4477a1c3fafd954a942b2e929b0b808c65ca0d59c0c15490d6217849410293
Date: Fri, 17 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784252313
