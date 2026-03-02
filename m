Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC5533AD85
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772430294; cv=none; b=rJSBrMANPK1mkmlR8rVPvRaZQHPMwTg2SLkdlryFqRPJCeK7ov0C50K3QUF6JfFmNTSgIricLiPMmYdd2+vHj4jyUXASUle12qNVGUf6EkhCXR0f3adTu1JxiErk2QkRds/xn5io5aYT5y5Uv13cPAcJELgAZAbmZARt+fyAKM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772430294; c=relaxed/simple;
	bh=xOiRG5rfEiDw6hgCpCFMB24HLjhZrF3Su/zqAPhDYaw=;
	h=To:Subject:From:Message-Id:Date; b=sbFfSC8HxjIHlbEbS2yH9mg9mUmuf9T3RNTLjxyt/PDxQSrMEP8/n6Uc++EcuqEFgy2qXZvnQXHQ5e2hkuGmqGAhSZ/Gqi9T0Uod+RkjatQ77uzL52w712WTRmMMIF36r5U1+g7hkSNvQI01Xe5c1u/18208YeiXvfb8rTbp6pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HH2xh4xt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HH2xh4xt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0939C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772430293;
	bh=xOiRG5rfEiDw6hgCpCFMB24HLjhZrF3Su/zqAPhDYaw=;
	h=To:Subject:From:Date:From;
	b=HH2xh4xtROYx0oCF+5LUTcMBnKzXrKJIGN7o8TKYiOzwaUMqa/PcG4Xb1+lOneNzx
	 vQN9IaENNxm6ry3yhJZ5Ss70IxxsvIuSHRVHA540hqXp41Ewl6ePGIqwekfTlw3jIw
	 acjZ5kQ8kENmtYWo/VlpynzGHidAjm5PYdWVXfg4uHFTjc7FqTPEe5M2L6ehvCnopS
	 +nHFCaAbiLgHmjMYEetYkl9f5IM9VnlqYT7xnRdRFfslDdVsfN0LBgAz/W2yGOUC0b
	 yiANb5lsFPDJiK+kjBpZflWqCEQjKl4j4YCI3Bqrnofmfwib9jRLcnzdv0aAZhgxkk
	 ruG+0x7khBcRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA4ED58E5D
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243029362.11703.1720719513416049920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5834199296e41c189e9bc6f282a0e36d2f9528f6faac4d1155e202ccf1b7d213
Date: Mon, 02 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772430293
