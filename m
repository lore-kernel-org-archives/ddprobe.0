Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4141932C92D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780510474; cv=none; b=WEUJqiqm9RJX1NxgszZcPd319+QbY4FVG1YaQB2DLny0pPPbkTsT79JHK9KJPLwj8tj+sJw8TkWyG9zZAixnE/dpM32T/Q2w3KeCkOpMIJYxa4faVVn9T8aLgsbehUAcbE4kLpMAt45k2189GVjQ4n0r89z2ej7xIgtAw25XIEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780510474; c=relaxed/simple;
	bh=fQlXQOA4eHJTpAxbxlHUnkglXCwvTH+gKa1HZXPPn6A=;
	h=To:Subject:From:Message-Id:Date; b=a1GTnm15+Pnbbr+gUj1pZPRobR/DfNehj9OLgJIfYyBTtDD5GojMYaBivtRKKzlDE+CSpdTiTyrfFDYTEroE4RKnNY6th2V9Xmni1g0WW3JIRuEys3B/DGQ5y/7Logg4Wdmgto64C5Xj1oXC0fPN5uzqPNER4KTji3nAY+we8zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPpMKaeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPpMKaeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4715C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780510473;
	bh=fQlXQOA4eHJTpAxbxlHUnkglXCwvTH+gKa1HZXPPn6A=;
	h=To:Subject:From:Date:From;
	b=HPpMKaeAYuIDew5c/xwggQrw5dj7WRQtGIfrmvU0PPeMnfKhE3wC4OBf/bqkhbHaI
	 kwtvlPnJnXBuQtWzDZVxiFF29YKq9oBHToiDNysP05cLLJ6ZOc+oWYfuewuQxzgRi9
	 2XGHcs4v9iz0k1w2uLpMM+mNCSKxZzTUKUErUWHOtv5Gd2k+znLn172nXfws3KX1DI
	 ZYi+QWwkYBpjN9vCqarIZvK/wR0bqxOrHU0n8OPG4gZmBMqmklv0JuOZFjSTSl75Ua
	 Y3f9lCAjMocWDKo6jJlgbubtlj9JSvgF79KzW18omxnlMYO/22/m0uXXGwOk5EQu8z
	 VZ3GUhbE3Osbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92B9CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051047368.11094.18114935669146185099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f381575dc08e640ff69cca348532b8d069476e25088bd305f7a6bdbd32168e0
Date: Wed, 03 Jun 2026 18:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780510473
