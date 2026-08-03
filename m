Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7FB2EEE77
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785771634; cv=none; b=uUOqpe27jnEw99CVGNlu3Ugpr1zTgJ7NCwqJQsWzZwDQygdNhkZw5dPt9w4mrThPOXOv2nvCMVCWe8UtLvaLxP1gfv+UC/q+dwVHFsTf8ePe1DLYJ8krPtlnoHT0v7eAI6PayE5DJP3o7+viSkjS20oZPxe3xM1GnQ3OoW3vVhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785771634; c=relaxed/simple;
	bh=X6H+U30tyNQYflYCKDJyLOZN5R/4JTj8xWo7/7Qx7cg=;
	h=To:Subject:From:Message-Id:Date; b=X5rNdfEqYhcTruDBCf1SO2HdNRKizgf3Ox/gm102ZuwnLG3EG/Que1KHfY+lPSO5iLOkZ/tj4g0h0l+8F4uuUp6XwA/k+yD+HiLMZYdUY0kWPaz3Ies/e0l13qKwk0XpGpDAI/tT3J3+mdzJWMXuqNgshBEjz0lHvtL8gHsS1SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U68bPtSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U68bPtSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA77DC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785771633;
	bh=X6H+U30tyNQYflYCKDJyLOZN5R/4JTj8xWo7/7Qx7cg=;
	h=To:Subject:From:Date:From;
	b=U68bPtSko8Dd4Wa4SSq6/Ke7AKq7v5xGian3++e+tfjpD4kMAYs2yGhBUOkQyy1Cg
	 qNi/EwoH/uIGFHCttl+9igIFzRLsi+9OoVQASrNCzwFP81FnP14LazfWVXKONXov/b
	 6YJCC+eBKHdbhCS580Wc5U+OAI9O04e23ZbBzM9nwCpqtIqKQ9nRnKn2ufPtm5GIlh
	 mQEmOCAZ7sYSLCeRNLhKXhGOmn9yEpZFHuPLGyZWOtQq/t3FiuokUv3C5ECBgRIsFM
	 xoWs4+/SDnBtZAtJeP2L0IckpGFWZFkub68ieGBDnID8oosz8JRBXmmUlL9Msu3Y1T
	 Gn+2cVHmQbDJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FAFC55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577163372.21975.9731172726277935072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27695fd4dbae18489f1dcd7d9f71a77350d9ad1caf521abc987f0fad2c54ddea
Date: Mon, 03 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785771633
