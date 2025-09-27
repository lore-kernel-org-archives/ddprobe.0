Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC4A1A8F97
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759007394; cv=none; b=l5NF+wlvbdIbGLv9Pvzte5dKRJOtiWmJSRYlH+iCutpnw954nRTKpSeL/D27E00Gp8/S4QP+BXzLkqt0SQNhOX7nZs981ZAXEYb3Ee67+FusQ9AOA6B045lQYpesxJ+xKsaCTyvgTliasliCpTqW3zQOVothaYglwubMImZPBCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759007394; c=relaxed/simple;
	bh=6Nx6aRif6D5AXTKo1+4/ciLtb/shTOFH89TFlz5Mq40=;
	h=To:Subject:From:Message-Id:Date; b=eOvagqzRKCJC6/yhKKpMkbh29HjomoWZb4G8myf/khOlcXgmnuM0lvRo1Dh2SHq0f5ape0znIZoCl9H9a+b9Ctp+BBa8NAK6IPwJlkfACSIxGiUGoRa0RbLzgA8ZFpAwGwv9R53+L1GnyHTcm7ZJP0L+CQILi52tzWWWFfGiPQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDys6t9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDys6t9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C5DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759007393;
	bh=6Nx6aRif6D5AXTKo1+4/ciLtb/shTOFH89TFlz5Mq40=;
	h=To:Subject:From:Date:From;
	b=FDys6t9CUvaA9JQCDuA23A0F7QdQK+WyTqsAh8hPx8zbu0TThFBhxAAGY9vRQqq/1
	 zSvdT7L2Kz0eWPwsvdScrjzDj2v+8uawWXUsKNGekKZC7Zc0K8XdKiNFFpmVkCOcJS
	 h699qmn4EL1vsO0O3/wb4j/Kh95lOzr7Gx3I4vqiUIV7U7W6tPpN261KoQ6quObPST
	 ClF3KejvrWivtAbp0r2dAbSKB8BAsRQKr7kpxvHcU2vBTY2TfL33Gw642QogcCdgBW
	 rnvZwxg5C+bIroAp65wWriXV1XikVHiHJtaZM3Cme0ApJpMMyIX76nGmgi38Xo0y2Z
	 mNpeThp3O8MJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0ACAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900739358.12277.4882114780720504162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524300d29543dd10f12822d57297cdeac2fc342b1983717cc6d9bfb977cc39bb
Date: Sat, 27 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759007393
