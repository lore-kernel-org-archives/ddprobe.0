Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1543C3101C0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770460434; cv=none; b=tx38L1f/aU7l3hYjsahabLagfsG+SQPS1tOcJCkXNywPd5TL6DbCrm7iDiKmt8RhsrHUJVbDaJ9rOG+le9JqzfyILXQny8IQc+knvBK90TqhmmSs2RjV7gXNl1u076p+67mBWSwjQ+4y4WdRqH+n8htAOR5OBRjLxwhb9bxRMZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770460434; c=relaxed/simple;
	bh=xZauc1Fg57lKynvUeEJ2D5fHF5XBLyggHj4MEDV9uNY=;
	h=To:Subject:From:Message-Id:Date; b=qFy36iKDfa3X7En2B/PR3QJSdpjlfWJ6qW2Sn9VJwFfjR9g3Sw1Xv60ktlgHJHUHiauAeFxaTsurz9LfK7s+5YhObSk51HG5FsxXkG7tn2ouqs8vI47y21QshJhNKrgHjcXPd4WsTFlWCONg/YTMEUOzW53WgUv1keIQ7P+RhGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgDtQ3K4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgDtQ3K4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6133C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770460433;
	bh=xZauc1Fg57lKynvUeEJ2D5fHF5XBLyggHj4MEDV9uNY=;
	h=To:Subject:From:Date:From;
	b=VgDtQ3K4bb7QDYIIBds/p0sbXMnzRDBywKbEh6UiqBpsr00CrQEIIP6W2QyRvxU6x
	 xvZrEIs/zNrmTxo9AMWna8V/q5WipcLyVph4lV1DoDlOmcGv5fLeZwIOHI9jcKCvo0
	 QlJyhkfeonQOi0nFKNLX63F/B6r250Rks7CM1h9MjGEJ/oPzzC1ogwtRudd1HOZRzP
	 WZyAU9NN0woUW14g/wDt6W7oi08+sm0eaaLKkBVxZPd4Wv9XEzOinE3fxPuxnPR4V+
	 Muw2BteDHql73T57GmvCR92FAgGsKqe8YOffitqERlg1ITRvt1/YW3hnfu7OkEfuQ3
	 oZdOXHjxWS0SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3F5EE0AC6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046043360.14998.4642793321056725782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98527bc214775d432123a7c48ba6cb51b1d40a0758890bfbe60369ff6f99598f
Date: Sat, 07 Feb 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770460433
