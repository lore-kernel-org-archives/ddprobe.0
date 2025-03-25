Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583AC16F282
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742881194; cv=none; b=g5VaG8NU7/+YtoQoBWKp641CK7ZF6SWRAb7dVmuNo+PVqeiG6SeLe+/xUip/eZ4yppz3WZb9GcX32k9T8a/3gpYhm7qC/aEuLX/XyiFCHJyNNiygS6RySwSpUYQ9t4t+mrUvdeNk6wR6xB1YHjC+Y07ErZNWp6gng76+kBlaIqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742881194; c=relaxed/simple;
	bh=dq37HAIQyBp2hsyq2LX23pWMuC3bUSJVKhBuUhEOi0s=;
	h=To:Subject:From:Message-Id:Date; b=mfYaSgeR/8y5ZJ5OqXMEpGD2yd81dy6UHtu9E8K0VrFYP3SyjkoMfeGR6F/K54eJZAQJn43j3lrQm2i8j4v5XVuwTmXwntsr2rOX2BBpcsYy3itU97kuDHs+JtR8YTAEnBDJrDzwIbIQRO38F8q8MDp0e6n7h9lPLCr43lmLB9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAOxOj9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAOxOj9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5CDC4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742881193;
	bh=dq37HAIQyBp2hsyq2LX23pWMuC3bUSJVKhBuUhEOi0s=;
	h=To:Subject:From:Date:From;
	b=BAOxOj9vyv8VzNmqCmt+otzlrIOkrlqF8BIRDr51VrE3V8zl5V/+0CCTX/5cTfsdU
	 d6gIP5SzU+TwuiVpAmD11qcYGVSf+VhkJLP9YLFG882+6HNb4t0vQGU9sNaxChZhSO
	 +CcODazL+PtcwVXj77EvkouXDNaUjgNsxMoZN4e1YHPIyEQa1pG0qCtHfYD9X0ZP0b
	 SFn3nbNrYDf5filIVTKDHMoN4ak7wccJs5Yg/jigutjJa0naA6aeh8xzk/XWw1tR8V
	 SS9IcB9CfFYHiz7T8GJ3HSNTmCotU/ZfdkBsQAbE9MS4eIzdj0iMF+Zt2TzC9ZzKye
	 UmfcLV55IlfmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0683C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174288119364.20193.8746740969688487661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac9dfdf0ae482b2a61dd431fa9868b501c201a89b455d41ed676751c18f275df
Date: Tue, 25 Mar 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742881193
