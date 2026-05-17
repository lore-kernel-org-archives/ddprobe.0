Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1977310F2
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778977234; cv=none; b=QD0J/jEeGV3l706antXMxaoJiBdFCxwR2RKVI3CQTCgFrgXjJyHAehhnL1HdorvB0I1kicUwBD3MNfP7CYtAXd6bSoi6IiAj2tWLygeWuC6MZx6gmH3I2J+Gj7JFfwgD8uiGgcYGEABKpnCNGbDOjsqJxbrqAMjW2U5xbvA7fns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778977234; c=relaxed/simple;
	bh=5Bg89n0qOFYwDg7oGBzOSfTo5dc0SJj3hL7W6cZwebI=;
	h=To:Subject:From:Message-Id:Date; b=KvvTnaU9c6jSoVmoPsbEuPNnkS8DCMONVEqYCqQpYAJ3QgtwKW0CsIJwE38nrcMCFfKAHznKFyZD8M/8zRUYBWr2k/iqbpHxDzfrsawNj5sXQjXTddaSBi5WSKakhxoSYKJURDxb45qadrV8TheQYPkPMFuo/tVUpe9+zlinIlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hb35XFLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hb35XFLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FDEC19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778977233;
	bh=5Bg89n0qOFYwDg7oGBzOSfTo5dc0SJj3hL7W6cZwebI=;
	h=To:Subject:From:Date:From;
	b=hb35XFLi6uKViZGIWha7CzeWBeKCncSptw4Tr3xlvdziseVTAEmXuqnJyBnRskAVS
	 I9iKFadAqRKZ233N+3bQ/rJyuOMPJLw/7suOs4TByuM/Vn6eF+yaYXZmg2f1vwsgVf
	 nBjYVrvOUtj8OqUn1WppeywxBSvDW46+L414R98x6Xyt4nzYbJ4dH15Ax0JgY22ZXU
	 GdqxFWAw2bYL7RBFmifjxHRNKeYjj1DlJRoqyllT2eHWdwTVhW3Os4JVP5tlb5A4SB
	 b1esMkbB8bQWDExPRq7lAm+IXeAq2aUtIOzof7wFsx1jO1TY9fS9kCb1QSGgkG3HUB
	 hAYUAoGOyN01w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA750CD4851
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897723368.4424.11028976161584218267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de02197f0e371276bb923699013227654c25ead0cb359a9f3e64e9934dd6603
Date: Sun, 17 May 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778977233
