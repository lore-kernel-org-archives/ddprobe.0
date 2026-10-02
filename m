Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4DEB3C4555
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790973634; cv=none; b=OPzOH/ijAjLIevlxVAdJNrEl3RlBcYpP5VopHejF5IGkIOqIKY/40oO0CJIlQPz6a4f3ai0NwD5OiLXYktGfzFb6Z2sII2O/YWyLaRndxpGtmN9WHaoeQomoVY91Bcf2wogy4RgjumuVNNMugcc8twILApyQZibBEEc3C1iWNpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790973634; c=relaxed/simple;
	bh=3CEYezPT5fRYCsat/q7RNL3HF5Xuar0TJM7IR78lrog=;
	h=To:Subject:From:Message-Id:Date; b=b8edSSyGqTWIX8cVHbiSQku9KF+7iXTmUU6krvjeGRJXBlocI2WEdcQ9x9ctCBzvTbnOGmxqULjVBoaIItnkL8jBUiLep9ETZXJn+jsbEf26N7ccAICW1zyKTx4ZWL2LaEdUCpsxOkdZINwpViJpgLCgTdQ4Xbfv9nxgQxua3JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dj3og6oV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dj3og6oV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA665C2BCF6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790973633;
	bh=3CEYezPT5fRYCsat/q7RNL3HF5Xuar0TJM7IR78lrog=;
	h=To:Subject:From:Date:From;
	b=Dj3og6oVthWIc+0WEboX8NzSsKeO8hRkQDeJgfdYGv9VIfGkxOFUp0lxdggsmLROr
	 r5Rgh7lCrFSaThR+OGNLA4HYbxPPUwhUyhEVj8iyyWjehQm1LK0/2qpR0tpdn1f6uB
	 Os2VjwJXkxFgKRkQxiTJD6UcR5zeNTB1+qO58sXDn9kaJ/5dUhJwLEUITvqOlcZ4K0
	 A/dw7V5pyYVLTkRqIEi8EryjnVug13qU5tKYCPFvMQjkFYntwJZgyM8fQ1AQj4ur5B
	 SJ89YczZbvp970mdDOyzyDsa5zRbvQQdK6Y2kEqAEJGTJfbCLXLcpsChQtQvb67OgB
	 GG9Z5yMX1IF4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BB9CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097363373.17927.11257803334764786072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f76764a2ac6622224b32efaee7a60a5b6a7f157f6d7221b198bd63a4e8b2ea66
Date: Fri, 02 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790973633
