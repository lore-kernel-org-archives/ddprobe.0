Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDA82877C5
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754681394; cv=none; b=uFcT6dU3h3bYU4EtlUbQ5i0Sj/WLz0ZyTLhUxMEITjm/4+inFfE8vu882XEIlwY+oynbAGix/fu/pffD2taPCBHXCUdHCZrqywKHlvMFD2K7JZUsCYThGycIrt0QOXHmjzmS2tP0pnEVjiX433FEdnNMqdpxi9jlloAeQpsV7sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754681394; c=relaxed/simple;
	bh=NhTRimFVcq0zYBfw6W8fplrOT4ZS8OS+/0wxV/PUKh8=;
	h=To:Subject:From:Message-Id:Date; b=agTekhsLkmusjcAiPvwYNvKirr/RwKAuuiBheCJ0cBMOeJQxmUvblXmXPLU8YYGdIQDIZBkhSFDeJmYKEqzYHvj1ntdIsttLeRLUDHi5hXtRc5qeQRWcuY26JzzNQmgBtGb7L/CBdgzzDKRgDmrnpIh+ev9/tBnyLdsJFYVC6Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STJ/sHeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STJ/sHeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69CBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754681393;
	bh=NhTRimFVcq0zYBfw6W8fplrOT4ZS8OS+/0wxV/PUKh8=;
	h=To:Subject:From:Date:From;
	b=STJ/sHeIQ4V4B0mrK+E8+4Biu2mrdu9Qxom47XBzCCJm/uUoq3fLfANTfJ/RHb4ko
	 Mzch4FZBMj+CGrkCYXdqLdqYEcI1OfmLgboghr3EY2e2JHEcFiaZJJcWCXvrqRfM5S
	 YAGpRBCQrhDCR7dCtrS82BR26xBnO5Bt/nl9mzJpG+C8BQJWtn8nHk5H2OjAI+KpHT
	 HonRXFLSB8RRAa+VzN1cp6L/7/o/We+RGFSWrJHAXEyuvOahA9g8gSrq//OnACGso5
	 e2dnBCjq5cxSB6by8t5ETulD5K4cFlxBKq9CeH/3h26UWFMUK2aEL9oJTihf/pPa22
	 RXo6mo2srLPQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C05C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468139359.24250.15915443266562282703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1862d74f65bc68048ebb0ef1cb9a258b091f6399dbe611405cf1cc5e4889110
Date: Fri, 08 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754681393
