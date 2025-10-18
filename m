Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2142F2A1CA
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760750994; cv=none; b=Mks7xsb9ognGs2BZmP4UStRItEl30DaGoe4BJDQPrwRzMoClcnBzgA56PuvLvulEOPh96DuUkEv25kNkEWJqHfqqrgqPXo0Cii2dE8EOwO0qlgfU4lODmXfEoTbTKhId2NDvxhlgU1roqHSOR9YhejwDtC8xEPEyB9/33s7F32o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760750994; c=relaxed/simple;
	bh=CwRMSqdlviZxcdGQHzbWgvNB7av2e2bQtafHVcwl7UU=;
	h=To:Subject:From:Message-Id:Date; b=f8XKES/Gv+Q8h5f4pGZajr3WGZpfbIaVky04Cipaph+bbCV1I/mSYCBVRO+HBBELvdMXn7N44++vvI7U4G4Ydpp0yyI7YtV/pkK/ADGAtcudgnSUSkgYIu2QcohUWInQjgyczMvz/m+WGBLDa4ORYAdS/fYND4EUApYwxCIrA5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cT+AadqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cT+AadqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BE9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760750993;
	bh=CwRMSqdlviZxcdGQHzbWgvNB7av2e2bQtafHVcwl7UU=;
	h=To:Subject:From:Date:From;
	b=cT+AadqBbZYKowFcA6PsiM+B7Gtm4wOUI3xk+5TesYASaZigjL+Rwe6o8EtA56AJ5
	 x2EoAqO/piDCRpEocOMO4CWprgs7zpxGnDcRsf/5n+tJ/qp0783xC5RaGg6f2NDfml
	 SFqMniwTbe0YpyDp9dUiuLBuG+U/25NTOZ6r5svTFEerh/G2hO5k0tVyea5GhTakDF
	 sx7UwrfX7YvevwH6pFuqC5LMRMpaFZpKsxN+rISYKZEef5scOyn7q2DJuoioKQo9wg
	 6ShLTHdo7dbiRyMy7kHlCEAX5q4iXVeNGIvcAoJYw7hnC/AG1uM4q7Qg4oeZBlL4Xz
	 0qcd8nrEQOSCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47ACCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075099357.3508.1118419060792163962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036d3ee3838acc0bbe411bc10ac777ecb4f6b8125a0f09016f5ede66f3f84e6d
Date: Sat, 18 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760750993
