Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F227396D1B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769145234; cv=none; b=AIFP8MIKM+C0o/TuZfV/govJoi4GL0yGLWlCoVxbZxPniA6CqeNIXoGcchHUoadqIWEJeYp8XKNgsOAtyvMCrJkGkJwWvts3A4NdW3vTio0E5R1VlUmNB6bWjMwBcUWraQQoD/znk12trDppyxeBA/EYJmv6pRc7diUjXPFsQmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769145234; c=relaxed/simple;
	bh=+FnInZILXWxDVtql3p3Gi1S4u22XONMfnF6OrfR2rJg=;
	h=To:Subject:From:Message-Id:Date; b=KG0yeY1MtOZZR11XGDd6KoZ3YpLRFedjrcueGfZsw3KAELewRK0qnZeWQqA67RRgpTnWmT7tUpPBgAD/twqzVufi5FYKPTxgr+v9Iv5HMW7qpiUjNV5WSi97LKtrDJJLiqreoEMiohfO0gtlOdLdt5/uNdRCix74pP24REMwj88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUu5qkD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUu5qkD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ACDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769145233;
	bh=+FnInZILXWxDVtql3p3Gi1S4u22XONMfnF6OrfR2rJg=;
	h=To:Subject:From:Date:From;
	b=BUu5qkD1v52vGL9Kl2RzOyn+kdSPGJY8PHKNWW4j2QklcoNf3xB8s/KODfAot0sQI
	 yDmBUpOEkwCNP3EgXgKJG+frboRdb1DnKQxVZBASf8NsfGl7NSeHTt6iP1wOlGG1HV
	 atiMi25dE6iefmcUo0vYZE24UY8S2AwD/lcUjvPdkZfwR9QcDZLW/tOh8w5M+wJlR/
	 RVRycoDuGZngx7C5ti1xIF7JHlNhjQwAF6T/G1JeOLOfAtUYkmbSX8oZ8w0mJQrfpi
	 VXTHlEk7qmlUCx94/RqWzdivAy8t59udwWBzOKtyzuG71Yl0qvYSsD6h+m6YXHNnpG
	 VY46fLW66aDMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DCED6CFC6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914523358.432.13301011826390737293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087c823d616a1d131b7e525868162ec1aebf46b3fa4ae95cca1dd3bbf4eb1e1e
Date: Fri, 23 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769145233
