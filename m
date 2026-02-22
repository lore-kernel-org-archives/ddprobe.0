Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1925D326D73
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771766694; cv=none; b=VcJpWwwtiw8bU2MgXYiDXPeTbII3VVvju/ULRlxBiw2CrTM+b8/RfQvQOKwtZadDgbepXNS3WKrpf9erDfZWfgOBjwMOvuAiuEWy79CA5iFgTtM0WQvwLwtFNgni22YIxbfuvNgRnEDoMOJBxyOoi5QpEoMD0PcMI3OSYs8Cy60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771766694; c=relaxed/simple;
	bh=S/GoQ5RcCqZle1lWdKKuF480ovXFKo6H1UH8CqWMWd0=;
	h=To:Subject:From:Message-Id:Date; b=BSp/Vcc/FXukk91QWF3YYcBL6WsuAz0vFUCMwKEAVPNO4nPgi/Hu6V2DuDgie8+pgVA9mfNQ2NRoGCyMGxk4blIrDdk2eJ57p1ueIiFEsxo8qG/nJAwISs0Y+IMxquPtMu4O/ml+WeILOI2YZ9MGqFgEN48nn+7Yfp0xrW1WqnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuZM066d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuZM066d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88BCC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771766693;
	bh=S/GoQ5RcCqZle1lWdKKuF480ovXFKo6H1UH8CqWMWd0=;
	h=To:Subject:From:Date:From;
	b=CuZM066dyanPRJSr2/mPsgNuYvxTphJ84Ec6wnFKgQaJ13JWGc/Sm9rBYO3JzcwVo
	 X0fIpU48BTDNK7r65MqlT2cLtNRUeLU/zi/Mt5EtiWqKX9ZMa6eRvqf4hhTFGf4esB
	 54DSdvjsyvxwmoqyRkQV41LmK2WZpmYOQ/Zaa8ygn9b/tnPZFa1KEPe3ZO9mWp7/38
	 QqUYVpG9PS9tVO00FrUm7CW5hX61mUU+IbdFF7l7RkXqZuKCm+QYzalAcetLG4ODub
	 rNtQmlH/J7l2j6o5R0029VGogCZucsvd3DzcLV0f0N2UmWW/VgNBKTRE4Sp0PRNvqe
	 JAeKLIT6N2WJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98135C6369F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176669361.26902.9164096329030846455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cabe316b189c139a04338f4c7ece735e331cf9db6ce4e02cce288fa90499c605
Date: Sun, 22 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771766693
