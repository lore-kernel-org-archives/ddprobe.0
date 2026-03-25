Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF711F4168
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774399494; cv=none; b=sJ79qlikOqVNW6QGritgskHlKzt9Slvssr1nWm7dJYFVjOlPuvDwSPphVpF0dqp/l01BXjOegaL4idgSZ4DFMWr5N2KGRpOx5YNDnZCXZtAxAXqIUaHCqZHXnFX1zAu+Dy528hVbcW72FrBE8dlm8pBndEu9c5vwjNU9hfNpPio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774399494; c=relaxed/simple;
	bh=5S0oTBztDzFIC5Q+7n/cU7TaZVJf8rpiBz1gZoncXVY=;
	h=To:Subject:From:Message-Id:Date; b=aeGDsBYU5V4NH3o2C5hTRTepMlrdtbp4+Fxmv1tXSxfffbf0bR/oaEZc5wAYk8poR8+CRLbhPu/cn7xQSG9ugiWAUq6PWR511lJMUc7wiczjL21m8DROpwe9sh9t9hlY/dl1nC5UoUOJFmslRh4AZYK4yNcCFr0SS22az8apnxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qr/SdPhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qr/SdPhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94A2C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774399493;
	bh=5S0oTBztDzFIC5Q+7n/cU7TaZVJf8rpiBz1gZoncXVY=;
	h=To:Subject:From:Date:From;
	b=qr/SdPhR97cZWDaZNX32OALC7TG8Qb4MgGNJSq8B2t7zBPJG6ByP937paa0z6/Fy3
	 ZTZXwdeZniVe6K3As8sUZmlGHMr11/QvHgSgmV1iHkA9CSZESFEzhnMclWjf2/iWsV
	 1gyLZ/QA81NduwpRPhy/Jkzs+kcw0lxrax0a+y/jd/oMrOK9uNlTALZemz8z5PdDv3
	 GR9lfj2ZAsmAJ48hNZlGQn5WDNnbEx21Zm1MzMujTK+bocoiyifi42YekrrzAZ8unA
	 PQqkuQge77UUOElHT354vHq7XogMNIgv9GqQh6jPsWY4tvugKaczPe9ni4xj4iJQ5/
	 YrFji8OISSeIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940511075269
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439949358.7865.6732703400504474293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6cfb1c7294024f31bb182d851ebb22188d00c445212e447ce4514953aeb3e64
Date: Wed, 25 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774399493
