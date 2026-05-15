Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160BE3BB68B
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778861434; cv=none; b=WaaBQ0Xf79FmocU1C9It/3vmxuctQGU2lKdd9e5J8gclRzKBo1izKDk0CG56qHDgfcClAfvPQ7lmSewRAb7ieSVjd46YVD3Oa0oEBRrXqXR1wK6eFYJGqrnD39qEh/Y1H/iZ3t5pkilDpjmhJFgPRXV8Xoc9EREFMBtD+zZzdYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778861434; c=relaxed/simple;
	bh=15A0JNmXhMzJqg4JzQL3jFhZ7cL9bL+Gmj/tnvLjLnc=;
	h=To:Subject:From:Message-Id:Date; b=gRYTC12+NbNszITDtNDKkZXwFs7e4fwbhZScqZzI4t17SC3odMbhpp6kO4QDfZPWoqHaMZUcf6oDqKZPYO8We3xblxOdaInEB2r/Kbb0MQ6mCFa1hNib5zNyHh4OsvVroT2AjacWlq6+aR7FueM8UeTost+xX66Ktcvdcdr9PDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nw2hj1NR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nw2hj1NR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1306C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778861433;
	bh=15A0JNmXhMzJqg4JzQL3jFhZ7cL9bL+Gmj/tnvLjLnc=;
	h=To:Subject:From:Date:From;
	b=nw2hj1NRx5R9TQWePCoKP7QiyzR58hY1pCqb7nAPP8j+Fi9Pxt1IJDx9GPLJ2GlWx
	 hgD93F5IGfXQazb5lc/mtyPlraXsz/CB1waOegPtzcSVdSGLOjhIBBw1Pwcp/f0WmF
	 WSGtFqu1L4gbKXfJkpqUGWU5U61Xir8M8Yxzp5N0h2ZFFqY1PX8Aohtawy7ey8kVtq
	 WazmckXyKi8xsB04woI/5eV2EsPhBDwwFFusQ1EMVSU7t9BeWI0Su9lmMelt4NMoIw
	 4MOKRO98MZHllWo8McqKmiMZPZwZVlUBXVyYDlq/cbZmZGqexaD7WxIDi8tONhXQZD
	 fCIIoTEzrV4iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13EDCD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886143369.5982.15061157830893556020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a88f5eb432e835e41b5d1b09b592af78e5a448fe24d41bce60de55fa796d4d5
Date: Fri, 15 May 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778861433
