Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080263090EE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770470034; cv=none; b=KOQaG6Dk+sQqBgyBsC+giMjJ70fTVUkyMg3m9wsKaf8CT+KB4kEB5etZm3eNQ8bJSk53OYmK6oz6XaGkbrMoIAJvtraFgfwDrEfaoqQnZoO7w/N+SLQS3cXeYJp5zTcEXTHiqT4sKaOiem1C99w4kr42UILs8U28zo+IyAZn77U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770470034; c=relaxed/simple;
	bh=/NRTUsiCjHzyH2nWpl5idY1vLC/UXnjLt3mgBBXrGZU=;
	h=To:Subject:From:Message-Id:Date; b=BhJ3lrWMGMyIWW5NVcxCRnrRYAvAYh57t5kWj0AtSaPPSlif2ndD2S0dZJIqBt9o+c77A8l90kN8JTaagJK0o+W1sIDdcrCsbP+wEu47hxHKaA/fdeg5L053MJGFVIoOVAKTz53a6eFe97jRrUwhyoGddrJmO7k2TVN3FXopNvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOkUHJpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOkUHJpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC585C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770470033;
	bh=/NRTUsiCjHzyH2nWpl5idY1vLC/UXnjLt3mgBBXrGZU=;
	h=To:Subject:From:Date:From;
	b=uOkUHJpPaNwYmf7R8DAzYHA1EXBGp6IezAezmxYODlUFHThAQdgnO4WlW+Dd2YLCT
	 yS0vQIFb2VAF4X4TS3eqlJvBeavI3P8LpjkaMxxoFWXsrYJ3M0vqQNu1n54gbra3WP
	 ZIDXKeEaxvo7Ch2p/ly45U3kmfgs5KlnonqVk53n9F1yXPyPcX21xy5Fa1Fkwg/JYW
	 5ZSzrsKkRsbXFLJ0aEaDKCyu9daI+/LfC5F+Nz+BfdNpBOl8+asXTzeWFMIiKynP7L
	 2l7GGg1+nFX8vj9SJOXjtFzDQijfUsoI8ckQvR6PGjH0RT4uApEuWScJIJtbEN1q/j
	 j1AxFRoND0RHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99606EE0AE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047003360.9489.15203300026013978153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0dbb6950bc07920af8d058487dc9090ba86e377387f173d1b8caf43380e8d3
Date: Sat, 07 Feb 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770470033
