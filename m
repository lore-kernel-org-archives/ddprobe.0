Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7451AAC4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745573994; cv=none; b=mkD4OhSrvZBdcMc+/GZCtVt9pjJs5XFg9OxRR7f5xvWSYFOe0OxfkhTIcsiuoQIkxiAJjXs4kYxXweDIGKIFARQ4eU1hoGNDMgiTWmPAjZ0CFVa2Og5bhAp+gdeKG6S6yKHcLYktLymmSYSOw2R33epW7xt2Pbxcfw/lYFehhOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745573994; c=relaxed/simple;
	bh=pfIAWqe36iAktth0c8xzmNMfx9cr+uCjMiJxzpSVK9U=;
	h=To:Subject:From:Message-Id:Date; b=OAhBmb2vdbcLu02ZmVXdtCfxLZwkT73OTKcVbT+pcNUbytOLyAcguEyCMZCtkqj3nM0R1PIVLHL0pYBkSHz7SyTk5M28LmJobQM7+U+QwcCF685HN7lHhTGAfRd9dpCm0qUl/27zBK9v8F3euiFq1gmo93VQUaJVMSvfgzI9Njw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huDYT3Bu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huDYT3Bu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0861C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745573993;
	bh=pfIAWqe36iAktth0c8xzmNMfx9cr+uCjMiJxzpSVK9U=;
	h=To:Subject:From:Date:From;
	b=huDYT3BubRWzasfNN3dcaIKhI1fxUnvnCJXJh8j1U5NvA0Mcsv9VoyEajqLEpuRET
	 +75j3EK96QVeDmL9Bwcy+8ebop0ggHXe4J9tNfc/1O8PXhkMRkYfLSe4mJOQC7elwF
	 8GELQeHyfl4A6+D8FJMzhDE5aLI7rFFDg3MAGnfDIYYZOW52KXmLA2i3/yO3L1jsyk
	 jvXvyujkntz3XfEIsbDQH5ATb2ZTwQlRnf/8+RjUTkF/InlHrq0KE6q+EfqjR1Tibf
	 zWNjMqTbz7o23EfN5Dild5awn3FXP3yrjNut3x7hx14MYmHWP6mae5z7fRrv4jnHNk
	 7p+Ie1FIw/pzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECDCC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557399357.19691.3916241892988740598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac3be82ce09cd08c67fc4354c28a0c12891b6347943bee3107a8d87ff84e4f1
Date: Fri, 25 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745573993
