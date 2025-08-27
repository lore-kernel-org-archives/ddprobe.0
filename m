Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B16620B7EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756294794; cv=none; b=SLB5lh7y+TrwGsvInMAzgHPjXAn5xXh663heNpYpWDxPcchgfjRlSRGOOhE61OdURPg1Nb02TWpSUhq1g6dd+tyfLKwa7iD5Yhf5mMj7eIhr3oarBbqRIWbh0CtlssL1K+O4MqKYJJAp72PRTXhr1HuxOCxjdw26mcX+VlYO3f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756294794; c=relaxed/simple;
	bh=X7SOv+XeH84Jfqjev3DxvhmsvMylJnay/A9/81w+A2s=;
	h=To:Subject:From:Message-Id:Date; b=lCmrTs/CxkAlEel4J7nxnpqTGhjJOvbPkmYcjRMooMyVHAOO2qVKSGY77Dl+dkKgUkz7JzGOgZ0ZrGq/7fbZI3YrMaPSO2aHtwAWsPcc33+OhJFR0fjbJUa2N5YTXnTayjWvhNG4WMwJ89V4eyNp9+9HEDrynOFHApyEigNM8nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJvCz6js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJvCz6js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A240CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756294793;
	bh=X7SOv+XeH84Jfqjev3DxvhmsvMylJnay/A9/81w+A2s=;
	h=To:Subject:From:Date:From;
	b=FJvCz6jsk7mWwWw3MrrUtk7AugONAZVUxwVxd9VR4DQpI9EUUHF3gjw/GhBSE8P4N
	 r9259KvY/UMGmhdb/5oYcVTfHBkPJZ9RisJ0xORAjDLI7gCa7/wP+j+zU9Dn6SMn3P
	 mCNb+AxSreejZ3juvoYaUd7oDXiKwxSUsDwHXcr+m9/Bp++UQR5QXHwhXYnmGmSyzp
	 5x5VZw7mHoOIu6X8Z/2AqtXmIyu9QmV8utBG3Mo8cHTyviZfM71FGC1X17GnrS2B+G
	 0EWwfHERxK2YV7niAujvZRTvYSmpT58oAhKbSxC8TlLLfeuKvaO2vpjnJ7ZE91ak0i
	 eOfNsHuC+OrQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F086CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629479357.8337.2495724474261810809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f44566046ecbeec16e198acb683a4e6c2000ceb41e2699b316fbd7e26c144eb
Date: Wed, 27 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756294793
