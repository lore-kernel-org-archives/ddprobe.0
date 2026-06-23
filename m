Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4414F35028D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782256594; cv=none; b=spMxm7C/Y29kGjpAd1s4eHj9g6L/HU9vcf6rFnnPoUNuo8jU8T1OIhuIznqGGNnbR+GWueF82IFAZseIyVNHde3J2to3Ja/BLPHriuNdvB12z4c/yFLbs5DGvfsPmxszW8VVs/f3i6lDdxEN91CjvvuUPOULXP9qtrPCdC/H3q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782256594; c=relaxed/simple;
	bh=fXXd9BiwCMYyJxhcKCiE+LQu1y7aRnvLgpMDthVSyWA=;
	h=To:Subject:From:Message-Id:Date; b=PLEys7h9m0+RXSgNwjNkhb3iyTbMLo+WKtpg6AMZcIWxJBWxTd5VfKkp7R81jraHE4NUVAuUVqpAuXfSliYPXFy9V81KqEHZOKUcwrx1fsnBF8pFwmj4pb8f/RrDz302+vS+VgF9n+8jtOazUoPZ0gSEjhfOqwuZ2kRf/H6PDZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxC9rEB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxC9rEB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9355C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782256593;
	bh=fXXd9BiwCMYyJxhcKCiE+LQu1y7aRnvLgpMDthVSyWA=;
	h=To:Subject:From:Date:From;
	b=lxC9rEB6Kjs2zdaiFR4Q1JQIdClHDGyfO3A8IsjtFF0xzXd7uSgvB8TQN81p6xjtY
	 AozNY1M+6JIZ5oMGaC+EyhHBF5uIKOZPVm3DDmdoTIN1CKXH1YeiBP8G61RQ5Oh52f
	 w8P20Sr2gzXupijORRk6YzBqBvN+IJnfCQ3us1Y8hD+JOr4HlUC71uAZbegr5PvY3L
	 mmIdmyA5zeKBvASPsCAgH68HYnPYMU3/Vr6ToWR3qA9m+PjXo3rwryJ+v5Ypawrq6g
	 s+93ejEDQ67tX3tEVorEsjluAXeHIxeBvUuLIq+ZA0hRR0ImtoE7SretBSzg+WoB+J
	 AKlbl78bGgpyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF82DCDB479
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225659368.17799.5769905813224086419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e719d7375d1c37e4641bdaa5caa93d8b41bf696c8af746ece34aac59dccbd33
Date: Tue, 23 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782256593
