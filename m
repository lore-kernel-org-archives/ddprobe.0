Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694C22D0C62
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785183034; cv=none; b=b5RHFgzGgGZqEyhZU7eZ+ENIGprOLYD0V6yWvfylBmajbGVCWELNR0x5L0rwo5TN+H1KmeE+wjmo7Uxut9Jn1hU8KDqpk6wYlgZE9VtkPQXw6mIRrDcwUxHmT+Sfnik9FHg+rhCrWASpLkhQaKLYU1sU3a9Dg0ZO6Jvw7WHUo9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785183034; c=relaxed/simple;
	bh=i8qEoVbmVinSGE6MsI750D88bf/z+mqY4BTq2CiRp8I=;
	h=To:Subject:From:Message-Id:Date; b=u36ZpH0P8doy6t+h+LY5vF01vgQrhl0rozVo40Lgn7qd8knM+c8f59tPesjE2Is9s30em6EpaFqbjigQ4rGwCjYFe7q1+N6XSIasA85OPFBhy0mAhT9BuksRDcAckBaC3KKv34uvLHBRzOhPwNGKrLUZGd6L7d6Sa6MEz7pNpio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTBRhcPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTBRhcPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5AFC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785183033;
	bh=i8qEoVbmVinSGE6MsI750D88bf/z+mqY4BTq2CiRp8I=;
	h=To:Subject:From:Date:From;
	b=mTBRhcPPtG7BgSB+fRaf6r0+qPArlGlQ3fFZMimmfAKF8v51SEdgRVxT8y9MpmnKg
	 /c7aMV/cNAq6TOpl4Bt+pLm6aiH6XFIbo2YMirVKPmveDU0BObhba2exkfDAyOkemo
	 hIS/bSxTlaol7pUaUc0Iakr6uiRzL8zw9WKeP2xUSt0Dn9xIh1hByQw++hF/zbkFLh
	 PejItJpSDPX4AIRKfY6z1I3OIvY3qIFmL3Aq0uB2FbByX909VZPnsOdQsuT+fWq/QU
	 Mq18NjaUKo2JOVVZ3f2ObDaSoRjXDGqVG+fL0UTHBMs+l9eFSxMupsnWR665JhYlDC
	 uyxt9oATiWu0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1E6C53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518303368.19426.17098959815414645893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30279ff67445577dd8d591bf14aafd81aff74aa1eeb2a130e50bcccc9239bad
Date: Mon, 27 Jul 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785183033
