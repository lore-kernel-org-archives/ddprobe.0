Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E46C275B05
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758698994; cv=none; b=PZWjPjKkQECeVzMFTjB+Vv+VbXxQXLZplvZPS9DP46YS89ZbQ9DN10lkIX+nIAeSsZuZDbhkagbw54HwCWQJDT3LLQ4vy/0qiT9vhsGkT9y7aTvLJLHEAPGPaAb7th/oOmxZXVXfwJd/RMngGyfBLHtctVRK9HyjAYUlxWtj7ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758698994; c=relaxed/simple;
	bh=6fwBM1L1aGH/mYhJxhc9lexfeosiVFQM8ekIZplbqIk=;
	h=To:Subject:From:Message-Id:Date; b=ja0zmvP2kkpZdo7EtuK3N+RH9JhNX3QrqkeItk9geO4G92TY81uaGN9uOeunzPmsMgXtaS1JTBvlkaVLl9ihmRMozZGHj+SnD2djE1ttBnzHUjYXVZN6l9aY7Ytdg17+NvLe86kaq+kSZIpES6aprtVUZfGh2/xcO0hlfwewXuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzTELRk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzTELRk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DABC113CF
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758698993;
	bh=6fwBM1L1aGH/mYhJxhc9lexfeosiVFQM8ekIZplbqIk=;
	h=To:Subject:From:Date:From;
	b=mzTELRk8aPkFxQSTaJg7/ej5qwG75WCv+8KSsf2HpsCgIaGt9Z75nrhmARgF49D/L
	 TA4rm3TnlL/pHM4TIWFdxIEg7zNg7XQpYd7EkWqLV7LLic2Z9d5/IY6UgzuR2fxPJy
	 O9WG3WZvKgvNOvChbDPWDngbHOnBBFyK6qA4MzKP0g/uVx4q/NZOoojKQKISyXkvIC
	 L2NFxPGAwrq3mkZb0mdn4hzX0HmCvrBUlGrgxo8YlDD/T8wn3MCX8sRH1qGfOTOkc6
	 SYdcmZAG5J+ay13u7ToIS3VpsinAjSUWITitlr+gJ4sSFrLxBmOLnU+0J9VsyRX7Q2
	 9ODUdSzL+bGgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D23CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869899358.10949.14916592025509897604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a5e9126f604a61a6d908126e9a489cbb8ee19521fcda7ddeb3ae18aff8236f
Date: Wed, 24 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758698993
