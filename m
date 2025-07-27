Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102CE1B4F2C
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753604394; cv=none; b=PkU3pu1gGT1rrOgPWnrZ+kojxtZh2R5lmsKoVhuNS7l0yl4T/yFpC1OQ2tHldMCsjU6qQGF8aJoyzoMGWdhMZ/wnOFx/jchkmTW6kE5w47fR61h1/8K36iiK9XtJQg+EQ2am2M4pVcqlOLau/Ms84a0hg7kCEM528GEl+UwbkIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753604394; c=relaxed/simple;
	bh=tko35ighLVk9Cvxt2TGuUCLNPmO3emRHZ1ZkzIKs5Wg=;
	h=To:Subject:From:Message-Id:Date; b=aiRKUYGNcx7yUhjcR1Q73qJZKKPP3yow6/zFY+RrVgl8sz/Cp5QcIkYyYrEomK6GQaxTkxmowVwVkt823Fmys5FcYPJ2M3PV59Ak7u/da7pPC60fG6FL9+qLHXrToREVWX6jqCVrWE30bP9Ya9jyxrIjWXtEd2MwmUIuJOvutNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2XKPbdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2XKPbdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A083CC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753604393;
	bh=tko35ighLVk9Cvxt2TGuUCLNPmO3emRHZ1ZkzIKs5Wg=;
	h=To:Subject:From:Date:From;
	b=s2XKPbdO74h9W8ayHVq5RoDk1Qog9GnN7FF9WVoB41hkNJQRHb9CLKAr0zu3/b8WO
	 fgYq7Vs70qM12Ud+Td/j+a9/MststA3VOowM6ZpQzD/csjQCJeBOP3jwgbmOUyT3wi
	 okOF0tHfIzbJWAKVfD/hkKOsfENJI7SCYZhADb3vhqArIu76zwP92v8M4W466uCtrO
	 rjBtejhx0FPE2GWZn/zk8Qp0h+bhmnvyD83VhiDL1d5gmvUni/XQqQVtI9jLQaSUSK
	 /7KVKYe2aEKECN2Bg5MClW5tGEDftaq4b/wMf97FSbii5D6o444dS4ouBfQeunqJp0
	 6Eeep6fAj9VZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F609C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360439357.9367.9111903341946414259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de7cc3af9eb405938d8359072a4ff5128186df5d74b5685bace1df6f0deaa5b
Date: Sun, 27 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753604393
