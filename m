Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BAD288505
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760735394; cv=none; b=ry984Ce7eQtS9QabPRGwAUz1rvwVSBGmxnlV8uXiG5MQ9Jdu6XKzpJ/MfyxdduojX8P82szJidgI5/VHDiIx42UIUbtj9VjtH3OIK4CVE/lYNgUiBRcDJpumoj+ZKjSjNbRF/m7UE54DXnJp7V1h6qAQUrFXRj83emSmKEIqy0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760735394; c=relaxed/simple;
	bh=1tOkZQTEwhtNT/IPm8DM6e/orbRKjJZeJ2v5rRzKtNw=;
	h=To:Subject:From:Message-Id:Date; b=M6aLtU4DIgSf7EP/j01zsEBZ1ILaXbNQ4+PYNa898IuFSV2Mxf4yl6uDgU8/oX/U/2awV6rZIAWDB3HVBjdXSJ6cvoZwphF37s4FHr6cwNBCwpc12WQJlB0TjqXY+MfB7FLZo97kQRzxEgYMCxWlvW86avyE3ZeMWylLEpti8Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsVobqQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsVobqQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7572C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760735393;
	bh=1tOkZQTEwhtNT/IPm8DM6e/orbRKjJZeJ2v5rRzKtNw=;
	h=To:Subject:From:Date:From;
	b=DsVobqQ5I2osaTE/sO0zQGgsVt+BZ2lsnMdNLTkEm/wRvpIYHWOJTB9zbLNhuA/mL
	 iDjQ0msC7amJSUryb1jZCmNchTwwJu4EhlfacURzPV77Fh4oN2eKdPIkxC96zqN4+h
	 ZOV8l6T/k5d3SToXeb9sUpEGKWqt13HrX5vepfAXqOWNXMBUPL/aEth6bcLqqL1JNY
	 z4KxntU2ToSxGxwPnb7poJ0cV1MWTzksySLcWRcVEN96avW4Pm706Z0agKu+hz/TIq
	 0d3zjafbhaQv69baQK+2yLE500FOyx1R+Z3UjeW3gCk8d7NMzMMFHvsOrDqoNeqFO7
	 OVK6tsU/k1yVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97708CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073539361.28612.10976247546551712760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3989364f7a3f13611447641ba45b24acc0ec5fe6eba7ffb367621281c186e7fa
Date: Fri, 17 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760735393
