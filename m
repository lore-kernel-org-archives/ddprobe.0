Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237052D97B7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761523195; cv=none; b=X7PUep51T4gXWBE9pHzqMjYSaF6RlCou4aWNhCkdFb5aInA7hDx72vNVnsec+LLPTf4LoruUZ1yZl9DdEBeSPs221K9UNmUIgBkC7hSTrogbTQI5798Ud6XmBDO5IvWEWjfvlS27DfuQI7raDJT+llrze+bD4dpQuqZhMOZa47c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761523195; c=relaxed/simple;
	bh=yn/8//NV/oIAAN4/itnTQPRe/eNjnvvz4oyiFIHUREg=;
	h=To:Subject:From:Message-Id:Date; b=S+HN8ei6rWJmhnaWVjd8Ve++CCB4J1FcI/gV6qhcKRhNVBpaO5gTCO4mWvRxaOu3Ro/SnYUgyJSDwvwXZPZiGl3PykL6fUXfXbhRl9/CfT5Uhn188zYUuHn4aZiCgXclcB9QW7fZ7hB+feH66fQUlhbMDQnmqpBuHwPK26A8e5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ni3eha1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ni3eha1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F67C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761523194;
	bh=yn/8//NV/oIAAN4/itnTQPRe/eNjnvvz4oyiFIHUREg=;
	h=To:Subject:From:Date:From;
	b=Ni3eha1sHfHxYyucjOa2Hgk6O/kpnzYQEzZwLVR+2MKJYGhmgHOhR0JJqsYUZFnGo
	 dTcSxi761HZsSB5x1oyyzVGXRcG7V5w06QbRmMIkYD8/JM4uumu+6DAuEGcD/x9qjY
	 E84C9mD7fO0SDPW+L6Vh5NFRnQK9ph6VCwLPOzdY7skH+TnAP3IBxKLZUdKsUNka5S
	 ee5aSn7sZAcw3nLcpExcAbnt0hbzay/UlhFdlbkpfoV4wSlIGAjBYF4sKglCgaP+LC
	 CVUjGgi4Afq5XOp1TWzfe06L3YBy294Qr88r5m5ieZ1/QilbsYGZ1n/1/b6JLD3Cwc
	 rRfHgBeizsAzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6EACCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152319357.11302.13648094946314930388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2163fa417bda747b5daaf41d2b9f294814dc00c54637b90de4ea92bd8712217f
Date: Sun, 26 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761523193
