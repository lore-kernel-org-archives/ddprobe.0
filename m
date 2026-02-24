Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1186E37B3F7
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771933494; cv=none; b=LUd2TkTBphQvSJHhHseA0dlO6EP+aYe6nNXNZFseH4waX9GhYz3f3dZMARxm2XMCnigkFWlXC8U9aLqIKiUt9X0/z+w7MKo+gcTB4Ed0bdidcNXByTXyMF9eGDAud3HuTQYF2XrbzJkTU2OX78QIata0crk+xJtVfuY1re1bfkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771933494; c=relaxed/simple;
	bh=ZxbCbKPnfhq3eV9weUYVI2ZT9KNKNSoZdlo10WBUymQ=;
	h=To:Subject:From:Message-Id:Date; b=kIbSyl4/Fg2uzewsaklBtn4g/rzGbQpl542fmzPC7qOofURgfkZlwmFJUBqRC6twxo/EMYpn5NtE0/VEfMZ6nhFH+boWYDrUvzOtrdrcUJCKqfe5Y8EELtib0+GR9mB6eaoHqle7ODX0EH4xavWG0TxwA7hZF/F5qPuFwIDDqzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7c6KWgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7c6KWgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9436C19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771933493;
	bh=ZxbCbKPnfhq3eV9weUYVI2ZT9KNKNSoZdlo10WBUymQ=;
	h=To:Subject:From:Date:From;
	b=a7c6KWgz5hohIyyuJl18Of7MSG0AE7+tmfqWph1SlsgfPqDaJWEyx4SY3dUfJ0MWH
	 h1goxOMRlpRJlawUUiyEYEPF3aFgExMS0vGV92P3OWlnrBrtz7RE3kfQhvxQvY1hnZ
	 /aFxgC5aJsks1sVlg8yt0R8Ssl/OZrVsnI1zxVKwR9QQQ4j7SnyJ8conDoxKVOrY3d
	 aBfGm0yNW1VjQYSF8MdSdWCgRA1bEnTVpGxXGxEjyyTR/YGq6obHDHu2aIpRkZXw5r
	 k3I+/tHzBDSzWGF3C4G7Wvunl5WNx/0Sqc3LzK30KmGPcT+0SFuaho7xHqXm4ZyuiR
	 AxCDNUfwxXQjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA0CE9B250
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193349362.7274.2046002627521118935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17511299d4a411078938d9a2ff2824187b76b1a6e26062f3594a2f06f9270fa6
Date: Tue, 24 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771933493
