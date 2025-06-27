Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3482F3E
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751006394; cv=none; b=Ogs6Zcik2cvwNdMLl6MXmsjDMXkTQOpT55nWwFL6BCNsdUnUsfxHeg5tec+5Xi5OeES8lAode1oVVluMOCU111XEoTOU5ZIupE0myVs9WO6ABptjsrd35nZX73qVCRvEZa+cV1QiQPL4E2odcwXPaU6bOe/EqFlPHilOcRT/GK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751006394; c=relaxed/simple;
	bh=ihSfAPjmJ6iXUz87Joeu0gzgLG+aMo6aUFSzZcs9P50=;
	h=To:Subject:From:Message-Id:Date; b=jO0lo3m9g3I/z3chA8QoWL5N4X8SOHS23er2sNiyFWLzUxpMkce8Ftf10mJJyvhxWB8alhMmhHCACSaHo5UDMxJPbk3JrUXnQcWEIXljEg6lIeHNTGQwks2hfqTfX+8Kp9KyZaG4+kNGHIOw9gUMeplp5bqB+33/vawlZMPwJXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzWpZcTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzWpZcTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A687FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751006393;
	bh=ihSfAPjmJ6iXUz87Joeu0gzgLG+aMo6aUFSzZcs9P50=;
	h=To:Subject:From:Date:From;
	b=AzWpZcTjVZRENmUKZHGRsBtfRiidadMa7POROiEfkDe7X7eMDcnr//7SyysRWH++Z
	 6OdUrhDoVkFIN+EKkDMSmQiK+0nj2vo/owQq1UYhDUt1mu0lCwZcG/b1k+xpW09z6T
	 2pO+6re7WmAqT1E0BtU0Zq6cj4+rZnK2gDd1cpcVuTx4vhsqUfdgH3k2EMlH/85pWz
	 WLHDUTSc0B+p6tu5m/vMoR47xIOrVNMXBKHjqchTpaqqh/stpdpWNa1gM+W8rwehZC
	 xUuDzbuq3q4WGy45RbTRzFLDx17tmHMLJ0EP4fS8LL/55VzmE19HsguJ9RBmGpR1yo
	 lOqIIT7LGZ/4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C7C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100639358.32286.17808687873037627973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93cb6b5e35f1bed006bdd40b108de88f67bddce5b53fae7865ccd0694c6f3dd
Date: Fri, 27 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751006393
