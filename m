Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08597430B90
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772309694; cv=none; b=R3yRhnVzA8/9sc+JJcz3MKpEbwslqo+kbDT7B18ZBKhhEMAKwD5fhkHQZTXFy/Jmg1PIWUTqyEFCorbM7AyI+sFWyYhAmuVos7n1udAFnF7w+1PcziJac+lbnDJw4rCH1Nov/K59sMWpk8wFO+9ObREdmFLjgdS4DlRmEQxuK3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772309694; c=relaxed/simple;
	bh=6qD8GPQY7Sa4EOx7OGhBo6bdFDb6K1H1bKN5wFaN6wY=;
	h=To:Subject:From:Message-Id:Date; b=tjWZAkhdT+lJe7jgw94/6E2bG7PgtAyKmNlJ1hZsAUNCvDV7tBUyHRI2er8aDxXrXzByia4w9awwzdzOvzkEYyoElntDV4W4WVGjfJBTeaVMVeje8B73qD/1NRu0D1++7H3Es0tJuaLn0/VOZLvyrvtP+Ea21B79zuh1mbzxoWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnzGK8QP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnzGK8QP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B8AC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772309693;
	bh=6qD8GPQY7Sa4EOx7OGhBo6bdFDb6K1H1bKN5wFaN6wY=;
	h=To:Subject:From:Date:From;
	b=tnzGK8QPih9xY9IQEwNE04RsH3b6KypQKrdU2CqztEufrIPQ3uz97v5gNj6bhToII
	 jwEPn3pJfIsf0pCZbXeAAURNVz41+bBj797LThix52vDihjrKQtMjvVKyawBzHO/mE
	 tRFcHFB+nIGVFNYoKq8Zuf25DPvnYBapCUBCvr0YfpD2v2OqSX882qsnSBw55MacYA
	 vZAtWL4GuEb8DWYLGG9AQ50ak7NM/Fu00ywp/TvIRoAtIad5XjYy98Ex9fC8w0mMoE
	 RBNjn2Ww1gjAH43+EUi/pbnfrYuPxxy/Jk7wPxrAAQOjsh5CRGpKT1225Fi4dutJoP
	 K37ZYafOUcPPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932E1FEE4F7
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230969357.23701.2177705744301822252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8892e05200c53382e3cb1b958f733b3f432c8b8d209a125782ba5480ec683f1f
Date: Sat, 28 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772309693
