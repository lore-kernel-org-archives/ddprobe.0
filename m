Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380AC20ADF8
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783882714; cv=none; b=lCC1H1ueoBTGNn4GhfR7kh7/hq4dl/SVAOsWLWYGlcsYrg7vKN8n91RdH1xMJBgV9icU3xgmYRwYCx+qnUragLOJlhgdyDPZIyChe6FSfmDHJnlPYQ5Y3MGw4vPusTRsKo7mgZddO0Y5BflFkW9NZ/4n2HtxBWxio4b99/ly+60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783882714; c=relaxed/simple;
	bh=6+SYN4vh2BTKwmpYufK6iH/50lTRw6ou0C+QrCY4EuQ=;
	h=To:Subject:From:Message-Id:Date; b=umi/UCxEoZNiUAS3snYLK1aWUaAo97efmtaf25zU70s0rHsjouMXCu+BBHak1VGoQ8NCKoyFDVGU0zt1l0agTmbeWG6+49hH8QEIeJgv4vafb991W9rOSQyhDuXPZfIuk6u8/W0nMj4f13f0SdEyv3+t3WJKby7VTaRJeknlrNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=davfIZy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="davfIZy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CECC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783882713;
	bh=6+SYN4vh2BTKwmpYufK6iH/50lTRw6ou0C+QrCY4EuQ=;
	h=To:Subject:From:Date:From;
	b=davfIZy5TFJTwU9Pvi86n+7sV695PA4G2dSBpYDGbKrYinFngMcezfupZgGLscJyX
	 SV0Dv3O4tvsKKsDY52rpRjll36XvdkCRToHZ014dUYQfg5OZRo3DOKjCdhOWaL/l6e
	 a4MwDrE/io2l/501I6i2IcJ2LAdKb+igXDnStyXGFoeqjxrWc70VU1M9rGJkWA4hba
	 SeIXBVzpacsrcsM5QFL2z3RpbmibU9/ErtIDGW50GZRXzC+UyozwL6BDPsz70mYJ8h
	 2tQ6X4bxXaOUo3pe54d/RznfsFMrdCEndZO31Bq6Yayr4i0/cNotq9PjjUEY9SQnOl
	 /RpEbaXjLlHrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A804EC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388271368.30898.7860436727371173428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f30b2e7a6c5d658f354235d12c3e8ba8778f9dc0b129a5f172c27e6a9c9923
Date: Sun, 12 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783882713
