Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE7211CBA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774148694; cv=none; b=LzhlNIntoOcoHgwOw+z3kKvWWe/aGpaK/J3KdEFXwRIXBTNIbVjQceHAflc/p++TTN0YZzjnDV6Q6rAPnQ1rNA/zzd8s0Oigw6ZBsjVEWzLaz3GSUY+nA+ox1FcKoP7dOhhfAZMIy24fRC7AhaC4KIwIJcj6Ku8INFQ5Nnjp6Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774148694; c=relaxed/simple;
	bh=i8m8iPlVi0WlDm7URAZKLWFzY+nEfK+ZWoSa9Tn11RQ=;
	h=To:Subject:From:Message-Id:Date; b=dtliQqjdmMCJdRnYwqE20UHlDMMPKZL8TMpKphJH4Np64xZPguJM2TzpoBOr9cz36XPEiy8e0eKOFqNtCG6WH0lOl/cQrXjiac1EhgXLAD38q/dIyolbqQF16zhmqnZWzcHyGGU3ioO38u46brYu7luzuErdjMqIevk+Fy20nuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYyNL96m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYyNL96m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0770C2BC87
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774148693;
	bh=i8m8iPlVi0WlDm7URAZKLWFzY+nEfK+ZWoSa9Tn11RQ=;
	h=To:Subject:From:Date:From;
	b=OYyNL96mLcEmdAkY2yjmsd5GdkjQhM0tsLojfya0LnvSbqZ5W6omPbwLNZhbR9sKT
	 oL5dR1ySR9d865i4w1FqLyshgUdp2pjypJ6zGf37wZJ+UTS1lyQy2dlwkt0XUKqQ+q
	 N7ieUdeG7CYSjUh03reYy3F4zbr5CJ4yCVlBA7dwKjHB3ifRuyIp9pxUs7xM0ei3fn
	 r/QGHQDtRbPF790PajHKyDB0MciI8trPLIzR3QdFnk+VrpZCOF0uHFyPR1PXpBeVUj
	 FVHxEtIrBPmg9g1C/hGGHQrXd4D9nuivaFo4W+2New/Ba9PeE6j5HjHjA6sU75LhKm
	 3V0KTWyA//qEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA561094481
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414869357.15628.17121490113453803080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8425ecbda31bf4df50ba6863d709843d808018c5698f9bdad12db14563852f90
Date: Sun, 22 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774148693
