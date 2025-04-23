Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377D02701B1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745401194; cv=none; b=l+gORD4zHuIub9Iw+YI5DXCo41X3zUtZj8bOsqIh22BHcsn2niqOnDuoibVsIKXTpkg4EDFGW6WwhTbJHLhZfKE3C/fvvoP2BTIzPkQSggKAds9zChYy7Vi5gv5kPGahYs5mj35ZJUidPrgWR0+O4FG1D4J6iZ4MO51bwJKw+OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745401194; c=relaxed/simple;
	bh=GtVa0hBQrwrBU06bV4fYF55D7iI/Tjj0f5F6l5gbIO4=;
	h=To:Subject:From:Message-Id:Date; b=Oold+IUVXveqt7rjpKy6srkpgPatdXCPMzjni/undBrpgHDZlPZyVx+9lAQI0e83VRhd3dOBOmTsqpKwEz6+fOz2lYNgqqpMzd+N8rAoGfnTx/KnnbjaYkKRyNjNZHU1Vh+4WfWhgnFMkD01bCZJf3lBbY6lXNQc81sf9qQvL0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fS3wP7Cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fS3wP7Cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC9BC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745401193;
	bh=GtVa0hBQrwrBU06bV4fYF55D7iI/Tjj0f5F6l5gbIO4=;
	h=To:Subject:From:Date:From;
	b=fS3wP7CsUDd69gz20NbzlkZzn92V8d6jPUa8WFEEZc93HMj9BTPLJ4Jrolh6yKQRA
	 /Js4uyfojY5aTyqujQ1EH6zdVFVsuK24fsfldqpqB0yRLsu5ensgy/za6/briFhy9k
	 p4YXHUyLsW6Toyn9GVnZAKSlj8J+6iRFtd8O9Wp88M7AV/2IDALYY9dX9wYJeoGLC4
	 XPd0aGz18nME8qkUx2VCxWjY/DUAMhRyAsCPxrZVkAQKlgnsGUMI9jIdN8z11PtRuH
	 Yqjf1H55a/hqCC+JsObXLCAquJVNh9TxQvB1GrJIfw/G+xApVvjFaQ1OPOiTco9ehy
	 kFbDPlTptYd+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E580C369D3
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540119357.7480.10486856668270967816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fc48b528bb50b46a6e781ff40a1fedaca47ce420635c2b8fe3ba4c92e35190
Date: Wed, 23 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745401193
