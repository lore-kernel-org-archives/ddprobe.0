Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD89268690
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762540794; cv=none; b=p71b4/O0p1Mw1kfgLWD+NCvFi1ejoxA5N54oxX7moCfQtOsYXhHAQTRJOnSlEEvkywcJbfYzVOKK8bHqbEATIMp7GAyekVhorUB1V0dt+e8nPbwTNwyZzu2VU9Cwfos2d0nxHNF45w5MNr+RLAS6N+qLy9eR8k+MsVvJ7gjnKiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762540794; c=relaxed/simple;
	bh=v708eu+xV1ZJBizGgKqrDkZsOuoiPPIwT4qxJvbjqSI=;
	h=To:Subject:From:Message-Id:Date; b=F5pfmf428jqy6CajBkGp4KXRzGIQKssTABMS2YLxJdSyIkQlqETD87wJ5AKoyUTCVj3zNnLhJzCVk/1ZGz2ADU9VCWcAgLsctbZbuwHd0yS7KKhjmZvgcnXbo3H6eOVkTfwSPZo95FNpvq8UrysJKLjUYLCyoKIZD+IdW5Pb7NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1ZrAJDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1ZrAJDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C449C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762540793;
	bh=v708eu+xV1ZJBizGgKqrDkZsOuoiPPIwT4qxJvbjqSI=;
	h=To:Subject:From:Date:From;
	b=E1ZrAJDLG6d/5tBUyUbtYrPeDFzp14JR4l+T1aEOIEgUHUZaiK1OHl2rgT0jCDlii
	 TZucq5loZFTOVDseBo/ZofubHtnY9Ae2D1yJhbxbbP5GzdfC5eVjl1zrIq8J3CnHcE
	 DGwz2BRcVGCrFS7iUhcuUHoyYJiGXOoLLVyZzDaGE+U4uey5vi7Okz4EZMgi6f7QZF
	 dMXgleIb4lmkVT/U5nYewleEgSqT7VWNZkP0q5G9nQurIRLOOanqsOVtipldKZAQTX
	 PV6pEtsi7R4K0cM7r7u1fSuQ+YN5SGV58mXqHph3aYfdKTujqRd1Sx1pZoZODUNR1f
	 HXl3RxXD8Y0uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908AACCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254079358.1382.12685988541126258533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e836d04c0bd81e7e38272d67ce8d50c20db78f9854d2151c095cd662c9c68ae0
Date: Fri, 07 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762540793
