Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B616143889
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721999754; cv=none; b=VHmKYI1zYRiByn3wPv5Iwstf6id2GDlg3ZtLxSYAhOLvAR9v3MF3Min4RmaI0G6C7m2ocLwO7m0yYn6wbnMB/k2fEhch0ulW/dL1YAIscqx+7ZUvoXGkVF46KjjPnJRfC7g5AC9K18Yz6V6dWXkVVrqaXTdOBqR/RS0jfThNpr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721999754; c=relaxed/simple;
	bh=AYg705NbASJfCD93arSoQY8dnqplctHrk1fJPtSct+M=;
	h=To:Subject:From:Message-Id:Date; b=h9cQXCNK4ONHegm7pue1EEaYzJ4LTomOs74mHi963ja72NrW5XeIccO2evuGdyvNQ3n20y/0zIYc6WOnTrKUNWWdgCU0XhUNIdMyrhBsw3x1d+Xu46tIbiUPPE3AQnHmGtJ5p90KzbwY5Eda46cPazaQ4nwctX3nfMqkqlnNoPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RG1buM+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RG1buM+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BBDC4AF07
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721999753;
	bh=AYg705NbASJfCD93arSoQY8dnqplctHrk1fJPtSct+M=;
	h=To:Subject:From:Date:From;
	b=RG1buM+rguyePYvLwd9izWvS6plKKsDHWAhqkvopXa0pwhwz7+T4x3ucq5uK4JIfL
	 kj8Uul0CjmPrrodPsTQBDbT3WSK+ShtsXsG3WTd942E4pkVL27DSt/52gK0YYH2GOM
	 c9kn8hgA6U+WZZ6NrnHm9DvP20XvyRlAYlB0CWpV08asH405YW7H4gNVhHAuUvQahV
	 O/ok7OS2GiGx/6q1bMplqGug4+XSjBQevILjnIPXaAsCUMYJhqKCgUdgPogF/U7ynT
	 gwumkEpyI2hPCF+i3UdWHJKdSPzOcMKt7wefoght51eDmxnFPfNLiXDucmw4hMTfr3
	 wWXhBCbUYT9cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C5BC3DA70
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172199975360.27312.4903926739048591430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeec3160dcde89ca16dbc91435709f3d7bf184a705552c2b338cb4b2e678427d
Date: Fri, 26 Jul 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721999753
