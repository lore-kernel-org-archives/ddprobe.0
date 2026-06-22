Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFC4357D0E
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782136594; cv=none; b=DjDwoRNE0TEnRQDMavMBD3sW51huSqYNVc/n9AI8D3TYd/HSKhrkuhMR1e2fiVZysJj/CA92HgaKweSSbvZt9Kn+/YFdhVBK9MNZrGTSZTBOautD0cXQaMpWP8ahWVv7XOgMydd6b5DLjvjENQJzfKnl/XUXqXr7HuB4Y7r8qfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782136594; c=relaxed/simple;
	bh=iKrW/MIR5p2XQynd3Odm2SDxHkSW59iQTANC37Csvp0=;
	h=To:Subject:From:Message-Id:Date; b=Rr/Wf4qPKm0/aNfKmzFLxR5xVpffltCbYsfEp/vsoUchk4W34k6UHiArzrHL18duQ58YsafFON42e2kdXKed9YTqJ2LPGWkNlLPIcRipuB+9VlgLE8QJwkw49vzYStDty2WxdV0JTCTm7UJa9IK+ZrxWJtAW5SPrgvdTD/9tvtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2Y8sNRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2Y8sNRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E32DCC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782136593;
	bh=iKrW/MIR5p2XQynd3Odm2SDxHkSW59iQTANC37Csvp0=;
	h=To:Subject:From:Date:From;
	b=h2Y8sNRiaZndE9jOLmRBAHCaUXXb+E+B3Iq720JnUdIT4wKooMGyYvGsZjiBtUiOD
	 Nyuitw+R6W8odq5KWxEss50BrjdF4XnelqkdYMOna2nh3dGgLiSjTpUSeBYNZjzuGH
	 hxvoE985E0O/TaKp9zNdVXrFnT7TE+rfxUFxAZ0KVoqsd0jqxsd+fFAe637EMju5aJ
	 J4cix79aG/3mKqAl72sIVQo9MlsTg1KC4EMN1R39ROrR93nzrwX4tDngwiGWW2oVxN
	 QOHzP4xRTCutPWKIctN6ZH0CWEvc636RAwqtjwJQ1rGejPaD02VippNesnoyJ+QeiO
	 hiW5x0/iC8OBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24F9CDB470
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 13:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178213659370.8389.16885702905387851188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c23a086bd325182cbdde52e45ec8c21e055ed223781303aace512aa7d592278
Date: Mon, 22 Jun 2026 13:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782136593
