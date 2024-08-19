Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FA122064
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724037954; cv=none; b=O3afmrqiokCX7p8gkucaVPRS0tIage1OaVYbNVppBjwmCT1KVTYwIzdAvoHyJ3F78jwe9HP+l3dBjIYxhg0P2SFqu+tK6sp+/fuOR2p8qQoC3lMNqeLluHFRl3Vjr5T2CsZkx3xxOR9rtI2H8YS+UomE6c6hwqaF4AuR0Px7Lac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724037954; c=relaxed/simple;
	bh=wXabx5C9OlANHInORGWjXPXn70BewsR6YG+ZUN95lbk=;
	h=To:Subject:From:Message-Id:Date; b=TX0l3P/dnryyadHCPk/RZxZX/2TL44L27GNTSFGNS0buMIhVxhspdPpFIKkktoFdOv9fr1eceItQZ59XwWcaoYPMUMgYGtY4FtcHcEspBdzzCzZ97FHWXjkka9Mx/gk1WtYc4iAkrgTaT7b30gMYmUJmp3Wi5/R/GRLBhzU//+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcKXSalY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcKXSalY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C006DC32786
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724037953;
	bh=wXabx5C9OlANHInORGWjXPXn70BewsR6YG+ZUN95lbk=;
	h=To:Subject:From:Date:From;
	b=HcKXSalYgdz/lwwxZfkO25fB3qWWNppL9RUmXwQw20Dn8YMGiLK1R4iEm9RRtmTRj
	 gbQalFTMYKuIB4YY/AAsPvvz3Wi5xeXdGl4FxjJd8LHppAddKp9Ly6gutzuzEF3+FR
	 SmkWv79uJWzT9IvMluKPz/bj8NssQKp3rHjnH6zIxUxfTGtPvriFNJxYXVNnalfX4S
	 A0EdytaYmfMxxNPwJ7JvceHqnaZQL2Gdm1q6fG9bnNd/LM1sbi7uciFM6Z1kTaQJ1k
	 z/DckaYsE5hQivA1xPfgII7B3jEjgrDMZUuWpVFe5jSKn2hX0a/KEiFhgACfnAJKUg
	 O//HTXrx8ytBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DADC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172403795365.15966.16073148984997535320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6acbcce3b2be99d0aef16503cf4ff6f15c7d7e6fc3f421d6f150ca4287c53d33
Date: Mon, 19 Aug 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724037953
