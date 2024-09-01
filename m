Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C882748A
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725197754; cv=none; b=jIcvKJ03HSXs6oKOQd2hNJ3axf/O7wYcDbPvdeUocJ2kt/i3AokEK8fmZDBmWeBaZsrAiJHIDVRe7IWuyO0Y03ddQcETdNaszt5mffdvD5rPYwcrvdh932GwxSn7MKofqBnKT6FajHb2AVBvG/UaF+yrfE0UuU35Ix/Z5BLMF84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725197754; c=relaxed/simple;
	bh=a8mmc2MMzatc0q4MehMzxm5S4Jtrjmmg42RWsLBGn+Q=;
	h=To:Subject:From:Message-Id:Date; b=iy2mYpyJKIjCL8G+RStivu9w1AkIB7IKkFVjFVrDMIyaLyOAf93kUhjizmWNKsy+qhz2dy7t9DIuap/Cvf6+JQunZYxMIhTFd9dhbkU6zCezahDA5ZewQoKGDugzAUB3yJ4TCJbNEVGBBOPazD/dSwp5NfB9/cyoIULs9fUnVq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAcXLsWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAcXLsWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D19C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725197753;
	bh=a8mmc2MMzatc0q4MehMzxm5S4Jtrjmmg42RWsLBGn+Q=;
	h=To:Subject:From:Date:From;
	b=sAcXLsWCZ/ORw2sKRZX9BXIvGCJzoUcfY4tVq3/HJhYkyClClzJsQUf84aTeqfq9h
	 vo+t3/IiMLWVVy5nhKdiP13+rJj6H+ozbLubuupVuc1ey/tOq600PYLObk4MIT0wxm
	 BLpkmr38I3IKG80iIYOJkXTBL0hzTkMCc5FUwuWEeAQ1XkLnsuUilBFDLAOjDmiiwD
	 Xu39xod+FBzuMFqDY4rcVig86EErLJKcYh8HzR9mewy/gO1M4eaYlkW22JOdOrk0Ah
	 1AKOg7+6oWQbcDzpeFtEFMQxHuTmX0yBZs4kp7PHJ8/oXZ58S6ne7Rqp6q/xNTiQcc
	 47Unk/1Jnpukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E8DCA101E
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172519775360.5338.16341442395738122143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470070a9ae0bbf241b5451b264fce625f010ace98ca6236e07857d53d24fb912
Date: Sun, 01 Sep 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725197753
