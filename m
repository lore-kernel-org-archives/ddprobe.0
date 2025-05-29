Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3253F1C683
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748522394; cv=none; b=Gt17kv49XKEtjG/gghmoqL0NG7rPgLKdX6mC4KGSfW6hCkBJ8/lmYaacc1wBTPFNGLckQcr3xDXYLa/h6OibP+A/YM4pkMaHrYljIyOx6EK2mizBRnLx3KcFa2DwBX+xtjwusX0CoCiaud+vS2E8W6t2exo9cp/y7ijNenl2CGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748522394; c=relaxed/simple;
	bh=oXOIG+kekqpd+VzAObx+wgj83/MNNRf4bTKq/2eE4w0=;
	h=To:Subject:From:Message-Id:Date; b=YiqUOdRN+85d6kG0oD8PfTuiuxDEiQ3j0t+i3n4TG1ZBcAc4Uk9+WZ5nVrqqkneUC767GBaOG11becoti5Y1o5LbvRTT8JSDOASLehyFtoWDeTjWzTt97r2ukcYrqxypMHPly7cT1VzCgNRJi05MPQEMaPgDICvNtRRKKBnAYcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c33r1fPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c33r1fPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10BDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748522393;
	bh=oXOIG+kekqpd+VzAObx+wgj83/MNNRf4bTKq/2eE4w0=;
	h=To:Subject:From:Date:From;
	b=c33r1fPD1JXwwfUWDGmRyZ9nb61r1sJ8efSLBsmzDuYBl9dI6MOvQOs9XH/pjY8cE
	 B1V+cnzhw/1tPOGEwqsQJff6+25FlRPYocIt8lkviDpXD3qggQsPwrHQ3y9jndeW3g
	 tSLLOqIdIu1s4D0WCYvxRLGU3ODjQyjFjsAdFpmod33GZIn5M3g0a4YWAudHSqedkJ
	 3600joqKWLQz7n3trtoRmx5Su0ogdVN+LqRm8k5M918AEJVm1QDnia5EaqqwKcappt
	 wB8aU8aaHPaXhlDZm0zz3HP0dnGru7kaF6CgPAsphEAmhMzk4M8aFzb9XpLoUXC+ir
	 qf3GTHwjM6kHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DA8CC5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852239357.23462.1359010857610178109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296acb7de32342fcc2af0e87276c60d18044f0044b73427669aace21a139ebb6
Date: Thu, 29 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748522393
