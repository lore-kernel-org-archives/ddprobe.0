Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B2E33F591
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781979394; cv=none; b=f2VZYNnqM9dgD6w+GWJRqUvss9vM5CCii68IN3ArivviDluKr32HsvowaRnhLG9EWkV6JmP3/3xHe0Z4y2oY2IfMe/gED+AhFcT7OS3G3i8P/UBpOKaLPaJEhmffACQKx4kTY2N6bDDI9ZZMjbunJyZ5gDtuHw4XLbRryGn6Cos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781979394; c=relaxed/simple;
	bh=sHoQVCN0RHrsCLsNNhyXvauvWsnFhKfl1aP11K2h/IA=;
	h=To:Subject:From:Message-Id:Date; b=KfLdoRoL6F6N/INgXPXQr8kow5HtfIH8RT4Jr9rj1qw+dHK4sBn7YH1OEDH0Mr2g4hNAfBDTfPLEB6BZ/E3URbH0mLZs9spQXQm4xU+XlifzlTeKjtzz8OgI2MA/zninMwYx8/cgasOvRFoOtALXivyHavZtTEn9IgUyZcij5u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7wESWZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7wESWZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48F3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781979393;
	bh=sHoQVCN0RHrsCLsNNhyXvauvWsnFhKfl1aP11K2h/IA=;
	h=To:Subject:From:Date:From;
	b=H7wESWZnlU0yeaqdLP0SlX8Q2xmzWCHgiRzw/RPQ0foJoLUJYCOXlFKAyeiXa3NAT
	 wW0omPR+AM4CAvIsG1UGLjVcrU9aC7VTlev866jFGMorxHIBg8HHaf3vf3iRJQhp+o
	 QW9z8fXKRnwxpNT0dSDkSpdr+Q9B0lVe1Bn2LNRmU/bRM/wb/Ui6Et4Gb9bype80QI
	 0pjmto8T/dzPT8idvL2xa1UWKJ1hChpZ0ZBS4pSbTQf07u0wme431WcD5Cv3oktM//
	 dDm/mZYeddSYI9J72k1w62n35osroUA0632Q40QKwTtGklq+yhqcFBl+XGWSLzsGwk
	 vXYX7pz0mZoEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51C1CD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197939370.24808.12095089083044382878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac01f94e52a71fd66e52b71efd649d77bb7652962721721688a34ea13bef2bd
Date: Sat, 20 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781979393
