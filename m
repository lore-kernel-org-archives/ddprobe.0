Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5243BB21
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715427743; cv=none; b=FPHaCJqLYNHKrlJD/djBAJmN4KvAVB1iKvXdCBP6pupbuJ7CZ5Ir2nRBfMZ5dPAy1DfoJI3k2UvcU6wZsTwo0PpByW0g1ogRRqtxCWEIzWdc5ZyKcg9BBpNAtIlVjcmsmE1YNVQO3UFmkaQlHsEzdmpwVooVmHNv5yfedwaWOWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715427743; c=relaxed/simple;
	bh=pRyD0+8K7ly/svTd742lVsWy6aZcukCgno283zzQ8Go=;
	h=To:Subject:From:Message-Id:Date; b=MBwfcKIOylCQVW6fFtQJNLoMBaIlfT8OFFoZ8/fLnEox/xBxPIAB4BZ2X3kzX2/tWyQJ9AplDgEMx4O3W8ot3z/Wo5cb5I5V3z/tawhCnDCUIMPDzHj3OlfvPGTgz9mQMk8YNClj8issK916Pugg87MFnAnqHu1CQrNXjw2BvEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivPqpt65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivPqpt65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE763C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715427742;
	bh=pRyD0+8K7ly/svTd742lVsWy6aZcukCgno283zzQ8Go=;
	h=To:Subject:From:Date:From;
	b=ivPqpt65fVHKSVpyJk8fu/q5yV6yqCSwJr9AYZ0BvtRmn/XlB3abl+IwdvslRGI0F
	 090DzSTWiKQCJmhPviPsrc8lxj4Od/1j4dnfF0/Y2h2sUHFqz79W86FM1H2wvQk4o0
	 nnO4dyX4epunbwKpUApQnsWQ2rdpgbDRWB6PALx5Ja0S4OfOmyMyas8SJS0L3mlk9h
	 3Nmx9BKWZrATryUF5/2v4DkmEwEpIymxj4NyKr/mD4lGYJ0QwdNy2P3IHyz/Dga5Mr
	 3lJA2fGtOVrrDTXiPeU/5HB1ZvIrM6dvlyjFPN9XkW+w17I2Vz2t8N9BjrSzaddWQj
	 CBOw8HKAn9IDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE39C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171542774280.29600.11726171021570170240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c89cdba9bec2d4ee0e1496ee65de9de788b1b549e3380d149aed275a8ca198
Date: Sat, 11 May 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715427742
