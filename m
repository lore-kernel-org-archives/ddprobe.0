Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F95AE54B
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769906034; cv=none; b=X5DaH92d6mflUH9vt+ZctuV3kjmF5cQ7dD4qlIR65eFtgZb0lSsuocuA1BALKY+xq93pxsWfLTQ5Zuzx2hGI32zRVpv/pFZvvmfiACiMB5XU6chrSMZt6nvyQ+AIavS2Zv8vw/XvLggysbZkfxyInvkPQqeHDBJ6ys1/8tis67o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769906034; c=relaxed/simple;
	bh=rOseILBCGyTYP7XjH79jzG48om6dJ9EPXtrMhJWjyNs=;
	h=To:Subject:From:Message-Id:Date; b=WBbfwh6Dhh5rZc9H7ydLlpWzwvrfDlwRbmUSKfPRYIsgELh4w6kuma3aNUx3OILQ9QhGslRdsUuDMl9EE6WFoOMRguHXGuPLsz14krelBuDTDQqGcy5RQEKNVYruI7v5dFb91/AzoI6KyI70m9mOKXhMwDxeFf0MDvqil69ieKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSaurvnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSaurvnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65DBC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769906033;
	bh=rOseILBCGyTYP7XjH79jzG48om6dJ9EPXtrMhJWjyNs=;
	h=To:Subject:From:Date:From;
	b=bSaurvnNXAu9VSOFsRqlAqjyLo48FNpJl7Sn3k66HzPIPaZdq4ZWVTM3RgHN9U0vo
	 lQrRgFjXRnojZPW2D/f005kOPxjKvHsO8TC4TtjZtFCzyAD4Ks6Fw+ZrXfrfsz9Fw0
	 I6EFsobI2tBPD1q7tSBdOd2O5GC96ufVzXdkc0PggpIE/nMarNeZ8mTCJPZaqmzJur
	 3Ij6NT4PhPChimyTmkUoJWS5NBZ+PXaK565dUE2M/X239YShJ8M7cRsTwXxN/FtWQ1
	 Pfwnr8dEW6kGGhRAffa3Ashc8PVS4HRiBVhDZL/g2sr4IB6Q5JLQskt1k5zSPfzXds
	 JDVZGBg6QsBsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C63E7C6F9
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990603357.20070.8110755702942937158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3720bd33dfa439c97b23a6dba9dbe0e197a9fd187033bcee04fcaa871b9b4b
Date: Sun, 01 Feb 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769906033
