Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399042E7F0A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785045634; cv=none; b=eamEVWx7n/A12HQYqTP/5btBlildrLK43Q9GBr4q0K4m5tNTx+PmG/EFiP9E57b8br2UfEaReKwCIuGaPEeTEkK5lPxZj/9iepy2/BZ58UUyX2LArbxo45jOCdrQ1vUGAAyw2acdoLu7oEKhFFmSB18Jt7Non0Ehaxz9XZZorhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785045634; c=relaxed/simple;
	bh=xqpV8xtN10Ohz5FgGVTNSx8yLWb3TSezOa/W6KXVqcQ=;
	h=To:Subject:From:Message-Id:Date; b=HG7S+olLQJI5IJtVWjOxBfVoVENyIKpjA3luyoC2IN7Z8mArCnpoU/Rpwb0kv0P+wQnvGfIWSNJKB6SflTc+tP0kJ5j0vsOT3gq+aDsNRfcFJ/kn/TXh6NEZIGc59gDmA/+Dg3gBbjwR+UnRyNmY90WBLl128YyO5iiZysivP1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iK8Epr4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iK8Epr4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DB7C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785045633;
	bh=xqpV8xtN10Ohz5FgGVTNSx8yLWb3TSezOa/W6KXVqcQ=;
	h=To:Subject:From:Date:From;
	b=iK8Epr4x1qwXuJLcqpB6kpriVewFpnNC1FhYfqtFGcTOjtMT7opbAoLTJ8zBF+aH1
	 hwDVmS5A1y1cb1x2zDxGKF0FSs5fi7SNdttRGPCes6DHYAQLXwNaGVCIyUytaqrF/4
	 oXuirEQ28VHUmaVWogCeau1nNMgWFz/v9VitZzdsy/1yvQsDkxsHoxsvBlu51txxMV
	 iWc4VEgFt5qIMAhLgRb1Hsci9X8V1h6uQPkKQXX1FVKYPPX3COI2hbdXZ8epliBsXR
	 CAlaBOGIb+Woiy7sQuBOvMWyD5b1cGJeEE26Wpzo05Sme/6VELdtnf9wUZbKAn2+rq
	 sqLj9+ICAMpQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9A0C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504563368.25972.15502487805130143044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c479823665c7b9ed49dd3801471b458f1c57de853ce0ea50cb7182bc20083a5e
Date: Sun, 26 Jul 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785045633
