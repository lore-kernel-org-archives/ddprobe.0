Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE913054EB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755641994; cv=none; b=mX58gnLP4IcbbY0ucXwhNeGMXOnQcwbXOKpsicRRGaewpDyRZUPjhHhHLyqVb6ybknLD/JYVtThEYB4Nuj2wsv3LA8MFNGdGu+uduxJF5tlJqV1e1837sHReqSpzwD7PhKJLnUOf0l5H+xITuMvP1+RiiULZn+uJAnsGKZDdwwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755641994; c=relaxed/simple;
	bh=7qVA4kYTdMOvcS708LrKFmyxnKzREV06zHofqBVSXg4=;
	h=To:Subject:From:Message-Id:Date; b=cwCz8KyntNbaAjyNMjYTu+7sn3nEwZOmTwZ1AQq5tGwkiCBSJVdTz1gKR4qdHrMrEEuzsXq3IvDrrWB2nVReL18LzqqraSO3iJO9C8m2a6T2OvP0R8DlYyFztgd74DhHMxGacSFianyw2AqDxw7ao5kEhEJlV6KQQ8KIJfaWrh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUGAjIrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUGAjIrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09C9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755641993;
	bh=7qVA4kYTdMOvcS708LrKFmyxnKzREV06zHofqBVSXg4=;
	h=To:Subject:From:Date:From;
	b=TUGAjIrvovHgQZ7DE7PIAEhD486AbCuFJUCOjj8pfIxAl75zwVx2O6nWlZ2xAy8NT
	 ccpMDQ9kx1yXpegbeiVv3imxDlSeD6P8blLJ/uYYzckbhV09GzrsBF7fTaxSUUrIXM
	 OV9AncM/q8X71ZbRK090WcthmEGIMYi5afdrF8P7AgUn3BRpnJqhFGA35yNVsyfFPL
	 q4zR0Zh0pcULChllQ5n4sY40xH9wHpAiZ2sc9yex0qXss3pfoXZhjfNJWgtInhAS1q
	 GdIf8mLKplQpuvXdPZr0Y9kXxdhdySKenE6ASGhtuCOAtkjGQkvdJeHHpSGf2dt6FT
	 Qj7VyLEBO8gxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1AFCA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564199357.5841.11212413286404706850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f653cb558bc52c5640ea19d5cbd403f543e672037bd0e1e0dd7528055878ac
Date: Tue, 19 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755641993
