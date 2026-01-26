Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3473E1CF8B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769396634; cv=none; b=ipVvgkd5bw756xXojrmwgHyvbelnk55+Ti2+qgzEkC4tXLU4QBAKBXCdaX/ISb+SACvej4TABrsb4lCJLQzQyXJZid0w/7KP/XmrSTazKQyFkr8zcoSwJtedjPTos+6US4hCxkvn88iALVsIT2f7n+vUE3was1yVqIvIX2lDb+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769396634; c=relaxed/simple;
	bh=OjI3J9lJYwU6wIlliEwmI1r3fm9B5BkjXQ0q+2CzDVI=;
	h=To:Subject:From:Message-Id:Date; b=l9Kz481lZkRsWHuN5wZH2r94LRjhGAwNMb5xFVE71hLdYn+ESKxI7s0Nx9Cc5gNFtw281DXK9HgH+DbD4+bnHoFROV5oc45KfeL2zh0uzsQuGkF01wxy29gXIbTWo79BArEytYhAAT3nluzyiiOFpfD8PDYgyBQdTCWlEp0+lO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVKmXyu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVKmXyu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B063DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769396633;
	bh=OjI3J9lJYwU6wIlliEwmI1r3fm9B5BkjXQ0q+2CzDVI=;
	h=To:Subject:From:Date:From;
	b=bVKmXyu2psAMLrhUjSTHAu/VBzlXoN875MGqCC4LR/tY4uI09gU0S8vQ+pw9tagHn
	 bR5EJjXhZCmQrBZhN4drqqStBRPvKL2rGV7JicbY2Balf3/DzhuS8CvQ9/535UVMF4
	 B9DhRhRQ7ZB3h6FzbDcLdtLH5ZeMCzsdtdxIEHBsPkQtJqdN2a1zgxbcGOgxEyXDIY
	 M7WmsMP+V926G8IrRty0tBP2vedwMQn17VxI8054zlEYg3YGIUBXgUOIWfDv8C6lBH
	 5A7P8nLCiPajc4dI5QA3663+f+CCr7bJQ8RSbFXbriSUMQ/JhfgOCxqAi4x9JrNMrR
	 jEDe+y2v/SBxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B236C88E41
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939663361.29147.10543198038937592829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 759027d09847db601e64c2b1e554f36412fc441d3c952e8204bcea1d3b0a6d53
Date: Mon, 26 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769396633
