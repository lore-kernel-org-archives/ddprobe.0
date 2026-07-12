Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DEB248F73
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783830514; cv=none; b=TAjMoZltxtKVRraLnmPmLtJLdFDRUWJfvRL8Nr9VwstpTdm1JRGYteJkTDpm90J6m3dKge4BrK/5y9+gwtwBsTmBRA08tIiH9j6YeaCby5XhMZyUr1bUs9vQrAdGtH5OLjY1qPLV9Svg7D7bB01el8Qkkjv9s0bS8SGfmxlq/70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783830514; c=relaxed/simple;
	bh=JzlmyB5YIc9Si2EqKYMDjCSWuq+2LjnBowSvLJ+crng=;
	h=To:Subject:From:Message-Id:Date; b=jWFvicw/B66s+uIhK0vDk60csJFZ+T5BHtz5nlEhBSvCHC6o+ZgPx3ghdF1tyASyBhrwSzhmwqIh61sdKPnLz0cITmSac05OgTruEIoiG5Tv2qlC8QYq8sBvrwSx+vOMYY8YfS5V3IWbKx6hys734LnkgU6Rn7zKLjpYpdQVpMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhZE+Q2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhZE+Q2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11F2C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783830513;
	bh=JzlmyB5YIc9Si2EqKYMDjCSWuq+2LjnBowSvLJ+crng=;
	h=To:Subject:From:Date:From;
	b=RhZE+Q2JhzPLOn63wt6YuBtf1Y7WuxlycsRdSV0o8YXGBiBgSrw6CRJSoYSdjTL/J
	 oUSWw8jaCcPhOcO2TR9beWemU0cpJtgC4VS0tTNVjBPFd8dB22ZUS2qCC/Whuf7yPT
	 ZnuNjPd/kkOOXzeyJtBKIsmeJfG2IQPKraiMJg1zT4ht7U+trl1vcTPnOqmAEaznAI
	 OIhkihBz8xYQxbGJPzbafxh/RHjbxHsMDrgN19XDo6z6CRtrTE8t4cmsDRvFe+2CC4
	 PX/it6t9fwMk6X/iZafuURHOYUHyI10/JrB/ozlCKS9R/uhWL0OKyLdFpSxD1hZHfd
	 3XWZOYt0hoo2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D8BC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383051368.9017.5010665213669298518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c62e8d80661cf47fd98c0d3b92f18b12fb799fb28cc8732597e646d9503377c
Date: Sun, 12 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783830513
