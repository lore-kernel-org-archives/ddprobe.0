Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2928218FDBE
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751293794; cv=none; b=rpRBURxnbupc1TAb2Fbo8KJSpztgAgpDmQmSbxNKT/lgb+x7fUpiEgQw4JdZ1+FUC737LP4S1iuihUdC2WtFIUDRq8fV93oIVJunxpK4QMs++zrO4IJmQyfQhZfRGMIK4ghaj8WPf2LbEjFJ53RnPELen6c5eul+GswPOo2/crk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751293794; c=relaxed/simple;
	bh=IW6Z3OB2yquoUvssTyyYFvvyGLv49Y0tCt/0WfUccS0=;
	h=To:Subject:From:Message-Id:Date; b=n+N4aonhhKJkqs3iYP4HDrLrsRWW0bbTkS9IgD0XLpKiIDetw7dlskw1GhJk5TsK9A1/1AQi/P/JaRYM2LwvKxikoi6BmQvzoM/x9G730W71HDDrxBhL3oom01npAdVVdOpkzfRVaqmdsJ4PNQn/oWRNBaS3lVIgzS0IMEDw+Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HB2aJ1XB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HB2aJ1XB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC1AC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751293793;
	bh=IW6Z3OB2yquoUvssTyyYFvvyGLv49Y0tCt/0WfUccS0=;
	h=To:Subject:From:Date:From;
	b=HB2aJ1XBFVwozX9+l3B75nNdxlt13hOHRT3XEUToYBBCjRDENQUDIZGig7xtvMHyO
	 qRwgZBnjX8h0YNT5XQ3TT7hgp/nlvBbe8Bo/Osgq2MIni0q/I3O8kwiEJrQYjKx3nI
	 +4EtjQ+wMgMMIrmevfIPfiIztraW1EZQDJeg0yC4BWhbHfXcIef6ce67rGjSFwEn1p
	 8WPrhSX43V204CFPdjewrqXU60DMUgXRDDAfny2pRBb6CMlV9hZKupUzgJCHbWRTCo
	 NcchI983+iGL35XnaHBUp/GjeAfRAvkdVOhBJ0iwQOyV2UVTh0r1ZjJT6x8aJmC6ov
	 kuKBOO6UTVlYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A711C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129379362.29613.16695523185409958991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f894c08d6cc235893bf4f6a23f4e9455088a24d634a6bad09df425e0e978d9
Date: Mon, 30 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751293793
