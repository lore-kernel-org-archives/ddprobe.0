Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F87D2367D1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764114174; cv=none; b=UcSCSwrZ8cvaSenkfqYS5vMyGFe+fWM6dsgrImpyui2mZMCMmD8g455jfarxLwHsXc2reJqPp9nJi0zVFGeC+Dy1GXH1MlMqaoa70yx15hD5yyDXpZdqP36AJiZtWrVUXWKt26pw0jVBnsBgZ5ONyNF7NODtTho5fqp/07xM/nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764114174; c=relaxed/simple;
	bh=Fcae/XwkV94C6YWRoRFzwoeByWTRR017SPx5YDVdqkw=;
	h=To:Subject:From:Message-Id:Date; b=Q8ng1c7yIr+MdM4hrjpYxO3CyCG+XWmidIRxwt0PDyGYuolT+0janjfeeFl1S9jQ7Jq8Fl2cIiUOK0nxjb9uGj/XJ6fuu5KvO7tTCrzdlarT5qgNgr/Hg7YGWfNPL0yT/uKTwXa4xp5DqgAzfiemnAx/VXpnLX3wXckOtnatcbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvE8Wb5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvE8Wb5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E42C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764114173;
	bh=Fcae/XwkV94C6YWRoRFzwoeByWTRR017SPx5YDVdqkw=;
	h=To:Subject:From:Date:From;
	b=BvE8Wb5JfirvRJ5xhz9pYpLDAwkwr9VD4jog1LxHopU+Qu3EMG1YXtuMrjo8D1udS
	 C1tQlciScRcL0o6dcyp3BPbuOOGmprBHLSH75AOLT5YrelZU2zAIJ93Chn2SFryGOx
	 tcL91MDEF+vPkXIdclXI+wY7xV1WkCKhFxOAiRhaHuvpIn0WEi7GYWibhuB64bjrMN
	 FLxPbDX5Jh2jgor1iLcRvtidfNmNzLjD1+DYyKhaetqspxf9k0TGvj7IndgDuiqilU
	 7axiRUi+yfiDWT3/DxHD+UHGDr9Sn0fz1PPgB5efvlZoHAfQX287elLMBiX1Bl2Yh2
	 OnO62VLsGdJVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92355D1036C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411417358.23296.6091834667601112888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb047d0e9653ab979c96dea41cef66023fd2787eaebced0f0d3cb9a547799fd
Date: Tue, 25 Nov 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764114173
