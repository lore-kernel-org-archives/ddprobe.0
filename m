Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7F7243374
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754838594; cv=none; b=W7uVcXR9pgheWywSQiGioaIGQQCICySxrg3eLg1Ovz/5wwAI2RO3WblUlkzC96+KF0yRMqzSuaexrV+skSY4fdxzaglL0qEV+2dUn+0TIRFDix7gj56v2OLAJyIyMHp2kmylpkuZgQQXrhtZh4KHXespYj2x51iAwBTZ7arj03o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754838594; c=relaxed/simple;
	bh=2iaRUuvBhJtTaavcAYzHG5qcZA+exPSzBWuWPO0Kf7c=;
	h=To:Subject:From:Message-Id:Date; b=bzTu2WKu3Pl/5927dW8xwPhAO7RnSQ7HNV9UgQ4G5zIgLrrHAbiCo6zOTBHsbgwstTtIpwkkIOIZt5oWYll+IGfhVSSQqLV8nagowWPlkd4ModySndFekVcU+NpDH1a9ONeMNPo7uHCckaU7hVyBdvbVkmXSQKZBdZdqEwsPlDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJid5ycb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJid5ycb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1009C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754838593;
	bh=2iaRUuvBhJtTaavcAYzHG5qcZA+exPSzBWuWPO0Kf7c=;
	h=To:Subject:From:Date:From;
	b=sJid5ycbulHN/zkC/oXBdOCx/7jPZfq4N2/xJR/bv9hxRjmXJy9Gg+m/jdXMVXUKo
	 wJCBBQOMBpo9Hv6LqP8hoScI8m0GrITNLkFlXsH+NXpM41Z0cgOnZvvgos2l4RjUwH
	 T0AeDE5SNAZzuMy/AzAJ2Jp2ezuiT6wOXdOXWLia7lFGguz/yHyopShGDvcU1YW7ye
	 GKVl+BkGvenzPYe0kc1WwUx6Zyl6jgkg6nz7u8OrSBvW+B/gkzyTgYzJBK0XISyKRz
	 X++b5s/LKCJp0Y1SzAjt7XDlSVQST8qpQSl4WiJUX8SOvfnVifhP3hxNCbrb/sOzRK
	 jfjRWAMDUl7eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B62C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483859357.29607.12987502191973861112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6db6a287b1581ef7fe62e524de17e81dadb126a3d875ed4ef12afafc102c7f
Date: Sun, 10 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754838593
