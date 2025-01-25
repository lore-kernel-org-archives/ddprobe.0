Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB822582
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737782154; cv=none; b=QzOKqbMNT4lYtkOwwrz3Px8tEKJGkYijEWyEqcyqlDbravBwqU80mP/YXvSubTyZ0MfP2kivfasZAiouL86FpXbeIYhDNaRSN4xT/0X5bBJqDjRY/jCn+tUM+2zM2cDupC0NUhosYtMNYvTw6Y8/OfY9Caz/BPhfYaLaMbl9DVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737782154; c=relaxed/simple;
	bh=gHmK6s2Z910q8pBIRgq/MIV6lZdRTRKlOQhYy5d13+Y=;
	h=To:Subject:From:Message-Id:Date; b=TwOCvqd6YEjIcbK2+grVzZFQxaFwShJfOMI9QLGjWm7ddUucsLynyJ19wyiPnen/0cMaJ/0JX8UAY8Ykgv6CaIyq59S5JRFWHn1JUXG0Be3P2M3+a8JIASmO/9UzKbG9jwfz8UVHHdoY91KGSWwol4P/cOVrcO9w8V9voilv3KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Raqq36Hk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Raqq36Hk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6AC2C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737782153;
	bh=gHmK6s2Z910q8pBIRgq/MIV6lZdRTRKlOQhYy5d13+Y=;
	h=To:Subject:From:Date:From;
	b=Raqq36Hkg7bZp1bfMEN2fULtjDm8bUrTBHo4XsT8Ag++sBKAHIzVVzRKwaOxaHsBp
	 VDfesYvwn3zzSknjdZKnv9MMUZ+YEzf3y0qiF08vLPyBh2Iw76+VQEDpeZyDdj39II
	 lFDwNWhofi+lN44/9Owe0vUJMaCxRvXSmOrlEW9VqyHiFwBB04Tp4YJFpGTJqcatSt
	 DTiQmFa0fu4b/PLvRqnmVRMpErPQQkDf2+AAzzZTNjWLYWCTEcqHP3RnaMAiD46lsI
	 F99f0NbYgCwDg7LmYrZXnUytzcCmlkRWfTQ3FAI7McP9VYgKGNhUC5rSag5daYd2NK
	 f5Ul/X0rNoSHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D514C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173778215361.19197.18041064525234580197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a94dbb650f4b60b6c952949b1bea8c413cac429d1112fe357dd6f35d9227add
Date: Sat, 25 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737782153
