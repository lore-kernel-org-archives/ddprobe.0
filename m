Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7871514F7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760902794; cv=none; b=GZ6LDARDjkyDjnIflHVh5CZBrk5gZJ4VjQ9is+8wQRDJArM0LwXax45hAVi3IaU6AkV4+iRqA/CSqqpZxyPtRMovsEOZqx/mYiF7zS/moL3vVlOFl4eYvo1LSAEJrvTSiRUk92FQBcmrPjIw7ts2SgkES55Ph4eH8IjURxpDXKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760902794; c=relaxed/simple;
	bh=fu4DEU0ZQDpNWByicd5pYTc0HAWyP24TpC/ZUxBDe9o=;
	h=To:Subject:From:Message-Id:Date; b=nh/BIMNGkzDlwfnvSEfLFbPZVjl68kxYByHX1hFGRkhg9QUQMP0CmeQIzPmP6c8fKzJXqNn6ej/KeO0aIsDp6LS00J4vAVPvicuNKL704OZm/7mWNVuERn6nu1XdpQgZKIaskSp3aew/WeP3eCCcOEmX/pkIRpBHS5K1DTafpCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHShCQGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHShCQGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A390BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760902793;
	bh=fu4DEU0ZQDpNWByicd5pYTc0HAWyP24TpC/ZUxBDe9o=;
	h=To:Subject:From:Date:From;
	b=cHShCQGlkqvC291o2zBkLTkuDLeTMvnkTMYM5uvMy2VWAghHz0X6Sj9T0FA+GHSlo
	 J7nvyVLqor/hjlZ7j1JWzBhNboSrOX2/rL8FNn9HsjCB/NMRZwHAEOrVNkFZ6QGeWn
	 Fn4GMdxCw/lNZ69TSHK9ZHC9LaZ5GoBzlTuDXrz3hr+Jwf4LfQbH5sCe3f3YPHpOvU
	 i3DDDHRKwAmctPG1cTDwJMSjE6QAzbE16iSe3dK1T85LWH6etVXHYeq++/qTJopmhT
	 chmzIFRMEl61SBU8hCcGfSNQDXiKss1X9eot5L3E/uoYfJBPI5BNoBd71TtJe5g/zx
	 N0tzuriBPf5+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F6CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090279358.23551.8317158795449313072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec7b3489c6c72e792d5f2eb1d9d6231c1ae7a42c0ff0937078b30b05419010d
Date: Sun, 19 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760902793
