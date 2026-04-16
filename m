Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B49426560B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776346654; cv=none; b=h+vLt6AlbhGFLetuNGCXwvC6a+7ZQ88/Fh0XiBRnEHTMFZivaCFHgonHb60eTBOyTYPNZk294wXrCCwlyewoWZLekHYmP4KLduxRxSXNGv9rT45ojnztnCMNb7XDkQhUAXCdxhc3elF8YLkZ1rmabrOBcidTZKrPonBtAKCdwuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776346654; c=relaxed/simple;
	bh=EzBvR8zhajyES3ZFDQaWN+rRxJORppnuJkAbBtLvvTk=;
	h=To:Subject:From:Message-Id:Date; b=oFHjBQRy9mvQkyZSu/UuP0+KfUA2vq6UHHfGG+CpsdGSZ+bYLxJw4OtNJ1t7+ps+h3mEqWVOM841fW1aF7RNqCdAJEs4i+GO9OdG26ynwPQM+svDesEiJw0B00YlCGRRx5iopfK8tCRRzs2HtpQL5PIRS6ZD+WzfM1nhicH0I1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNrexWq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNrexWq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC48C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776346653;
	bh=EzBvR8zhajyES3ZFDQaWN+rRxJORppnuJkAbBtLvvTk=;
	h=To:Subject:From:Date:From;
	b=NNrexWq7j/L+PlxFRyfYJwVkeVoaM0GaJQQk5JtCGL9Me4nnIQUpJ9HjRtGjQJFqY
	 ug799k6KNDqOgEobZahrhM58dAo2Pf/KHTT+Y6FMNyclk8ycb/QHQWi5runGZx1Wrf
	 cKIIPXZb5MC8zW/bZxB25K6mGpU/UKgOcbkeRqoWjJdnI9aeoguADHwObvzrsCkHFX
	 hd+HrL3VfPBI3DUYDM8PrxmYzvYdJHHWRk8uT+GPjqUbEBH+V1Uaj+XKWtLmeE3/sk
	 tkGIJypL4EVgGz0hAmur/tBzhVf9JatW8zHO65r2jTiUxaWrpYjzwARWddHx7/RfJf
	 eHy/dG84kbkzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA79EF8A178
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634665368.5370.5740260498503692601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5e7f143f68fbdb389a028ec2a808915bd2668f7cc3e1707187f87448f909977
Date: Thu, 16 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776346653
