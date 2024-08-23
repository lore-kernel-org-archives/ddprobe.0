Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B2118787D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724412954; cv=none; b=uODnyu0vzh4pFscNzWu2IGMsEsYPRQj0BwUfU7oey4XFfQxQC5wftlutBaCyRLjixdYFTYRcXuLzi1oWO0IboU6MRrCJMWX5uKy8mo7AH/INSFHeqwfRaptOLrOm1KW1PjEkuymGEAEDzoTwNnD+DD5ZpsOZ7tM/RpARJk+O+10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724412954; c=relaxed/simple;
	bh=sh2O/hkqHhA3D0xhoP37DD+JNonilqdqnxZgqrRbR+U=;
	h=To:Subject:From:Message-Id:Date; b=t0p7FwOZDbOdbUtKX9lg+dm5eoj6OcOAvgI25vue2c0gX4TT9YSYgbYKFXy3DK15OAVY2vkayH/0j8Yt/yU+WG024d6y+F7YRAI2hlqM6zUnzS4QSGA4gEYzA/AFo/SXBUInInAl8+pXcDjvtVz4df+pmn97QBDh6ULWaHCjmLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3QyQm2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3QyQm2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC822C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724412953;
	bh=sh2O/hkqHhA3D0xhoP37DD+JNonilqdqnxZgqrRbR+U=;
	h=To:Subject:From:Date:From;
	b=h3QyQm2BQSeAMGHX1bxAAPPH2h+PAICBXQNlgv2194hJ7jNKijyI1KU31iJ00ZQrA
	 r/dGmqfUuCYCFg8WAuMfS6XbHDP+IAqbK4yQn7qAXGqbJ/abZF1MrAqTmTymLdr5mO
	 4M0OaCuN+waIL7S0dDbeifCTqeF/AQezLNDpyiH5EuwOJXNjOp7RekIFgqLTgQN568
	 Wvhsw9jmkg9CMwveVf5k0QJlGveW2UvD7IEGlBjQATe0HuRO8ke9aFxJAhektwgr8O
	 Oe2D/bh9ckKX7f+gFjUKoxlfmyXCGuimFESJgfAQxlWQ0hw3tqyKPfzdnLTDfdfwWl
	 l9qsFkeRCuudA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAFCC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172441295362.29117.11922823359138026177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135cc3c7447e9059ea3f877e5f1a41e999da933ee884a1c35bf8b049949b5318
Date: Fri, 23 Aug 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724412953
