Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3140322129E
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752532194; cv=none; b=NPRAP0zk5ReyRdGcEv0v+AAakQ9F3M0EoFO1RZrIKdvTklsDt9HWQEwHDGWL3/ZO1ethq2pc9RZyEKWPJR7grH3eIt77UuB0wvnjYOAHzjMMJaROB8fsyBtUA9uN6nhsq/UwotZjukZPL8la8KA4hG+k5uaNBrqHb8tmb3944IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752532194; c=relaxed/simple;
	bh=XIXSixC49trek3g0nvAqP9FHZxvxbDu96s8dS5tr53s=;
	h=To:Subject:From:Message-Id:Date; b=XmT12bXXHhCO1BQyzGggMEB/67VP9cf+WxBVgvdAlm/Av2jhNI9DajKj/lILO56pPif8mW+AQfqrmFc3lno/wd40nTxGtjXon1zCQ7kYzAblH63z1TF6sZum5LJ+h9G6xLij+LQHxN/6KDvYvNRGQOaOaApxIb1rlc/SZf7TTnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEpPmEmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEpPmEmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE13C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752532193;
	bh=XIXSixC49trek3g0nvAqP9FHZxvxbDu96s8dS5tr53s=;
	h=To:Subject:From:Date:From;
	b=CEpPmEmA/n02TY0in8tV7mBR7KSeoYg5O2ENv7Q9FV/MzfE01ms/ZZKb5ofOMPjKr
	 /DGRHIWLAtrAN881ivjOg5Ke4lz/cH1QA4Zeo1lEAFb9/tG+cu2+PyYzjgpU4UWAq9
	 qlxibX5hCuBNSPkWZFgBFB00OFgq08O9U8Mlrm+b+Zq0ao592hKBh/WhbHCWnyyomY
	 8ipVJttP4oaNaZPavozzcvLN8ANbO73LvDZf1PYkleUs15hWzaJ2kHG2TFM9Sn1+HG
	 qxhLYf4Eyn7tZU4hxKzgv3vR05AYzV9gzXaaSibmynMBD1U54ZKqMSyqEc0hGV6Jbu
	 mOlbg6Tte6I3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904FAC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253219358.12118.17468699899005753978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100dc91c7fad179a546001be5673fdf029f1e9c6b6ad27b118a164bf2e681cfe
Date: Mon, 14 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752532193
