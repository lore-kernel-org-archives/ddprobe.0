Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F30E500962
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768608834; cv=none; b=NBIv9hWEPNt3WUmI9G7Zrk8VOarVLWxetVEGya4m24ZGEe1uUmrVWBBu+GtB3PiAC0OUelom8WyHuiEd33qXUgKIVt6MG9fLi4BW5a/kYQVLQb3z18KdFrw/QFXN9Ea20TNeUIM6UXmD8KTmBnX3GWlv8RJ7jCx77Isc6oEkWNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768608834; c=relaxed/simple;
	bh=Mfhc07vC8Gu2OMtMY+kincyCevengLyWLGV9TZCzITQ=;
	h=To:Subject:From:Message-Id:Date; b=KlBZGf1r+D+o63JnlTZV+cLhn5uv/exuPqukColnRItbVgEFiVBfdiwE6B0xk/E60H4BHP1ER0uqVfmdheHXxDUkgUwtJIfGP1v72ZBpGwQ0sBc+b6w6XnMKLqJ+X3qeqcWRzI/Ajdv0itEHpYB+Ul8zzzKZz04RIferxGJc3zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsyyLwt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsyyLwt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5A7C116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768608833;
	bh=Mfhc07vC8Gu2OMtMY+kincyCevengLyWLGV9TZCzITQ=;
	h=To:Subject:From:Date:From;
	b=BsyyLwt8GcuZH3tSs6KDkPeERpVK1/vXPPC906acQ1yxb1UZQkUryFiZUaXwel+X+
	 00bWYE5a8qDA0Vfp2KZEOfw4usbWI2kf5r/a39WLcOuOGCj4ONmH+XwaARU7D/1dRo
	 WE85AQ2KyGoGE7B5FYc9LEZXB0TutfoqvMdcQyGYyNqyqP6utgs12xaJd+mKdmllra
	 ksgFMreGDvwam1PBoSd2yS+/cErhF144Du37W557Q2qdKLYn4ZDP9TM5Lum4pEWiuh
	 7jjZFAjTSdhiags6vBV3kv4ZXEBR7jS/k2VcOtXj1MJ6YdoDh/m36bVinelzugBBfm
	 Z6NX4Orz3co4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0E5C9830B
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860883360.1078.9222347093349105049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9dbb632efbcb00228153dd0fb1c7a7031e43aa2415bcbce16b5231331b4849
Date: Sat, 17 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768608833
