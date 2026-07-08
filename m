Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5D5274B3B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783505314; cv=none; b=WtEP4N3+h1I13uLtV7uJX+ljuvTCdPLFBJHe6UTTV4ALBLHp+8mCbkyoIVy9MHKeywiRewQtGxZxJAGyHv6xmP/PRvOd/pq22jEvLNXIcyWPmS1DEklt61AbMINm6ZuWhN7jaQ+iNmbYgzHkoKLeWfQu3iXm64iclWWQt9BhWYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783505314; c=relaxed/simple;
	bh=QCoqdSS6/B06wfBFsv+kqaV9DuPwWyGYu56mJzUcAhE=;
	h=To:Subject:From:Message-Id:Date; b=A/42cSiPYQqrCT4hRAccrOD+xEhrxm8j4p3sBtr/vCTD8z3jXaTAvCauHwyU6n5y3TcUWk8X4daLU8iQTz+T85dskHprRMW0+aLElQMX/+v61xnSYfmzdXqnS0InAlPH4c8g6oXKEVcieqtjCTlpNU75+lb2ETNNdXjVTnTgEPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jn7Jb2vM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jn7Jb2vM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1F4C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783505313;
	bh=QCoqdSS6/B06wfBFsv+kqaV9DuPwWyGYu56mJzUcAhE=;
	h=To:Subject:From:Date:From;
	b=Jn7Jb2vM/c9y1act+3JmlCd1w2WhhVVmefqEz4ir3Uzb0kMNdxf5fj8iojtqlOvtg
	 knGGQNN8PT2HyJPhFLTJXoK/nOn+v5c/QJRTyKlQvc0i2PKRiw6yQEaIrMAaQvumGk
	 rN2xg4awCI6P0deVbajpH0sWhat2bZ4gEIraMUXpjhH1RN8jDCfLrQUaMrE3GAXNgl
	 LHm+I0eDydYXaQEaHYUS1shCPmn8Rid4vSHh5nbd5+zheWs2KbuTABc7tf4mpHpBAQ
	 LHTwb9ZcSfW4DoDGVsMMO8mAiVEd4KKZKOWViKb39J3ekWelQi6A4Gp3Ee3/mqD0sI
	 mgH1Oq2fM77kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8946C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350531368.6817.14486383084267102583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c3119f66887555e7b3a7d4ae141ec130d22dee05e8c3954fd64210a08022c4
Date: Wed, 08 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783505313
