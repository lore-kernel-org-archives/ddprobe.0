Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E95B20328
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717784243; cv=none; b=IdnUqEhbnAndMUYGWm+kLrp3hXXKvWL08oX2Y9hOonKyYhZsRbX0T+IP8XHeERjUsnJUlAotZntDXI8f9+CquimDEwqqE6m/1iU+PuJudrYsOSAmMoQalQgNxqXpw+woaQrFB5FWhRmW2JwAV2Z7lGY1o1NmP5ycw0ViNoyHrVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717784243; c=relaxed/simple;
	bh=8mP2qv+SPHc+LTN+Xh6MjjtSREVRL3LmZKsNh2OyYzo=;
	h=To:Subject:From:Message-Id:Date; b=CuntV+fVhwbHvkAGQVoocVGiQTBr00rc+W3Q33cKiIQPAw+XAEm/2JLY1mbLVCpnGpirHs9i026BYmZNNpYO4J/7UdlpET7ypo77pHCzKLdOcdR8FWP6sQIHjYyaem7O9oLyQMmgrIMoemZGPwWxc8NcAVYelKAvqsgeRECYUs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+bGlXKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+bGlXKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36EBC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717784242;
	bh=8mP2qv+SPHc+LTN+Xh6MjjtSREVRL3LmZKsNh2OyYzo=;
	h=To:Subject:From:Date:From;
	b=r+bGlXKCXWkd1LjM6UTHySLMCcEuEuxr+3XrOoLnr8++JnTvykugsRdIB4zu6e0Uj
	 uxHvSDJQ3lbMIajrzIO8UnY+sU4SS5mxvKVfR6KWLTfe+u2n+2zIcz4fxwbDLloewp
	 ViSGRZlPm+CxXkwkJR3O3f+3NORSO6HYm3/8nVPak9XaewJMfF1Z0kmFPhukxKOldG
	 Ey8priVmhO3vVHxp+mA+5OkBnDlgjTNKVRsyocXkN4TKuljhZh7iV9jdOiSwl18Yz2
	 Nl68R2eZ4Se63A+ODmvVQA0iwWZmAvfpzBAcVeeoWdWPv998N7qiH+56VPd6ybiIpP
	 oPVM3yTYW9q3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D96C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778424279.2910.1412246992252300495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2cf3181c8b89f28ae64d2f6cd4dc7a466239e888638cacd2226c9370a2c7008
Date: Fri, 07 Jun 2024 18:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717784242
