Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCE7B36AF2
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712410096; cv=none; b=SGaV8cVvomvHf3mo2i4/OH9QPeGWuBqX3bdmY4eozfP6xpJF3RDm6JjImchL5gzwyzNTZCeqoT1SBXcguR/nGWFwviYWmPL67gkLTDyYns/7KUBALzNCnMK3mvBukqxkEcfsQb/b70DpUnXV3EY715+7x7Z9bcoQ6zwvl7HFA+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712410096; c=relaxed/simple;
	bh=hy8of9l5rD359IykGu1w38Y+O3mLGOnBlQiN2D5fcHI=;
	h=To:Subject:From:Message-Id:Date; b=fMWKUeWfsXt1dX7A6duZkO0bg9jbfULdm4v4bgJuknrVZIni9ZTRRVocA73lctSN2hl5cdYrHYWkrvha31+8/yXATbSDFlRPUsL96VkzIDUieUTlNDFu3Qcn720p1j4St2XLN3RSuOkisr+mTkSCrcvxKE2Ko1y+5FuUCyCntiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccZLMAYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccZLMAYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC16C433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712410096;
	bh=hy8of9l5rD359IykGu1w38Y+O3mLGOnBlQiN2D5fcHI=;
	h=To:Subject:From:Date:From;
	b=ccZLMAYh2PU9ha77ZIwZovaptuPfrdds9CutQAFzi/yiUjKVkI2qJCdYSizhkr1kt
	 TiV/AdOcEE1OpJ41bbtQPlcmob5wAakNM6MZuhRL8bs4aic5r7/ooDqZ7TKsVOUh9/
	 8wwAyyk/KrjtOUEeIwev/pU7B/nwGUV4h2IsGcL5Bh7pfx5tbLi4RXjPf/SQI97dOl
	 z2Y6ebn/HUQdCrB9mRPa6mhyK6dKDMPDH0mZnRdOhNeYZvHYGqNW7lROUw5CGWAbkV
	 juNteERVBpngMjPQteFkKF2RJfT/PZeygOslAjhtOp9E1gUipH4eNeMG+aoIphBIl/
	 a841E17MP7O2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A76CCD1284
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171241009642.17045.10283762689982704359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9610676444caedce5beb3561744c8068a070cdb258ed9a8d518a12318c0abb2
Date: Sat, 06 Apr 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712410096
