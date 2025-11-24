Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3F5226CFE
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763986314; cv=none; b=iPokx3tqfUklzLskG7CzzCTcQCNqF1OpjYbKxa0QvwpY9v91r8BdKHY5F9Prl73HA6J1awB+IJ3CdUXvTnTLPk9PRfDvaCSnO6yKcOIBzYtiGurZfoc8UX7jGLYreDp8mOExpy5wDdz+TiP+expa5zHcBsudc2cumjkn+JPebts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763986314; c=relaxed/simple;
	bh=kNDp7jTt6d8LY0cE13G6PZFlkXnadCOkPZxJSdGJclw=;
	h=To:Subject:From:Message-Id:Date; b=RVADfM+tTJnbEvKke05LHJDt7cNzjXEUc7KKWVeuy9US3ekVU3BZ+epNyPyWCCso/6DuVRjoEm0x/tWPPsXWBAPtD4GcU7GEpYnuH1CAtCymSv8jkljcolbIfvbKZPHZPpDyC97/lSvFtGsjVwGf4J8DSo+p6aflxJmrk45Cngo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S532aa/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S532aa/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08E1C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763986313;
	bh=kNDp7jTt6d8LY0cE13G6PZFlkXnadCOkPZxJSdGJclw=;
	h=To:Subject:From:Date:From;
	b=S532aa/2dtqHfqT/YwgBscYKAAZCS4ge2IBFJI0kMETJ29VUjr3ChrbzrE/+ZrIQF
	 8ewndG6HNLGfGdYSDkujXMU02Hu9ymPXMRQkoLkeDwIGOwXkKBV0RMtqoT6UlxZO2m
	 ua345ihcuOCVt2qmuV1w3YImJof6xOlg8cEcBvIuUoLo/qM5zVx/RacFIbPMDILoOd
	 6q9JX6daCriydsFdTgVTKrZd54B7NyaMnhaSC4gKNj49swDYyNTLIDreklNemqZZtA
	 nvRZINME0dsfzSCjWo8Xxrqh4mVKMWWalG27IHu2iTOJTsKyDYguqDIVcax1K2foEe
	 ZOx2JTunD8IgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C41CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398631358.3747.6015180245254602249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22c881d81da91e4f5d3db72e4bc93cc5adf2b15248f688d461c9cb33b902403
Date: Mon, 24 Nov 2025 12:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763986313
