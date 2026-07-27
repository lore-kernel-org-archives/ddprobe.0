Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9D830F523
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785157234; cv=none; b=PdT00TyF4hjbA+2EcFucgPCJn2zYWJuwbB01Go43VLZJXrwcL31bYBNsDxFhjEXYy7HANH6shgBbIg0AEaQQglHVTyo792mEeZfljCD6Gy2FYIL7ljuVbaAgLWes3XsXrzhlkamP5yOnL1+HbOOKarJUWVP5rU6otPRg9OhYPMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785157234; c=relaxed/simple;
	bh=WDZjX7XW+1eAPxTXN1fgR4JHjkOlmn1VlK6P4YAT1Cw=;
	h=To:Subject:From:Message-Id:Date; b=URAvF1yneuWsYqEohkaYzQaFnKXsGB3pRUbHn5QsZ/S5EoWQ9ez17EvENEQIHyqZKQVQ0ysJCfDTs/8lPZyTXWY1cnl8MEv+WmsFDwYQTWnScX5JTP9UmevEl6zauj9+/FbqVci/+3Sf7nMLBzdZgLpYAh5JxhNweYZnZ+Ctutg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+N4X+gZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+N4X+gZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01B9C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785157233;
	bh=WDZjX7XW+1eAPxTXN1fgR4JHjkOlmn1VlK6P4YAT1Cw=;
	h=To:Subject:From:Date:From;
	b=G+N4X+gZcVWqoCCjKPjnHC5kXT2YA32bsgQmGPjATWVYXU57H0h/QdrJL1XNkNoGy
	 7xGQ7hje315+WpvqcIGb0MWKqfiKL81JuA3zhrtkZ/sXRTRsye27MThoX9E5dIMHaI
	 p44Z2L+SVtg4ikWiaeesYNidPI0mwENyc4Z9PmUUKtbLj2XNbsccAB+NcWKdwpl52N
	 LyJTy2vZtROfSXQK1CSVWNVgHSvJ8qGqygsKIE7QBnJKUGkZhnV3EGXSjh3+5U8Hc8
	 ch7mwhYgK1xGo4eSPb1mBCH3/f4X0h10LRACXw/71+BvLjlpPzqo6yVDmSIFw+EYDp
	 wHjke4qu+paXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D87C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515723373.13338.18237055007128450776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffc0e42153d6ff8aa0f7adfc2a9a5a201e012e45247b3dc2cc6f1972cd99595
Date: Mon, 27 Jul 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785157233
