Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3728134B1B0
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783964314; cv=none; b=EOH2zkiSwjgf9jAOPGirRcJxOcDEmKukLXFKvjGYiY0eKJeucFHjpyGWd2XCfHHXgRYJdVvJ1DntDZiS4CydMcl2eWdoTSnfwjE1MevwCYaHcyG6+ywLm5Fc1aR20xucgekTq+9lksGgZl8KXAgtjetNvqqKc6Sqqjdh9lQAwnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783964314; c=relaxed/simple;
	bh=BbSzUCZaLRh9J5Jy4oKM66H+VVVLeuQN6pvtuPBtSb0=;
	h=To:Subject:From:Message-Id:Date; b=dhv1enowjGbauaLMxd+E9Dv58SRpf9LW/fzVCC+tfhActobVkjZaGBLUu4R/qD5UJ1tInDFASYZQ1WyT5GolSLQTHL9SdIcPWdbUilvbxBNGopz2NpEtkDjj8zWgd8KWSaNEHkvTYpQ71tE7nHzNaehfT435XhGSuKmljtrMx/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FR3tWdgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FR3tWdgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8782C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783964313;
	bh=BbSzUCZaLRh9J5Jy4oKM66H+VVVLeuQN6pvtuPBtSb0=;
	h=To:Subject:From:Date:From;
	b=FR3tWdgqycdTOIbjYjWIRxqbyp+qrv9EdNSN1xUtEnJDR4SRbDYiqzx3AhAVZbUjd
	 dVn70kYySoXqLCo07F7Ro0QAG15k+kQ27pFwV+pPEm4V9MB3gQGltMHOo2MMauAEbA
	 HrbW3DzqeEMfXxdeb875Iy7J7QVrbvbrMhn/X8LkuYAtlKoe4/29cwdSiR9ZYg7O6R
	 gPu38Z0XO/mA7X7PP2l6odhGIAfMLoo48EccvC8ueA9CXdt0wB6rTopZx/2Jgazlld
	 o6UXThJ26xtOB3qCseSZcGYDQ2NLRmG132xNfEOTROGsTxUHaaU6Dy2yESKNhd6Z/t
	 yt4TNFB1W3xFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65FCC44501
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396431371.25480.4622778639136717242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b7dcb6268a705e58866a8b6474f84939be75e580ad36514f4828700d0cacdb
Date: Mon, 13 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783964313
