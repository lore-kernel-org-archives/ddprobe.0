Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4531C1F130B
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758343194; cv=none; b=iOXoOAcmLO5PJ7UiqTOxQgaFrk74XHdNMgC/wkNcWLApQEQ4psDemDhsPjS7zMOeOlfPYdMjOSJe3xDeEIOpHq4n/L/Gq7ZdN9GzAAhiYVFxayClCvofAbsKbwb0fWujHRgBJvNxEzkRHCvK8yvY4niPJu/vyhzl9RYF0MlXcI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758343194; c=relaxed/simple;
	bh=pj1DvbLRPRjOXcM0czbU6Ijnh9NAhqdP2RhYA3K6DFI=;
	h=To:Subject:From:Message-Id:Date; b=CqJr9Ycx/4iPQPw5lwrMye4TCjqTgSbR3zlnQIb9OY8mJFMhHlAtQ+/OMZ/QGTuitGo792nxcwkDSOdSYT7E6zbkb9AidicWIabxJCEyHnTi66lASzoUYTdlUd5g8XWD9CQnJDEqyRJmovdoDNw6PXKlp3Qtlp7TgTC5jc89QR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHuIscr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHuIscr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4727C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758343193;
	bh=pj1DvbLRPRjOXcM0czbU6Ijnh9NAhqdP2RhYA3K6DFI=;
	h=To:Subject:From:Date:From;
	b=fHuIscr4ZEIqFpHWcZa4y3QM9xbTt7AV/Ii2NtpxzViEaMH9Q9KZ2R+vrOzkDw4xZ
	 bXO50n4LzoClqwtVzxold4dZWyFbTHxnZp82wlEOkPhivujqxogCy7q/EdC0VPFk6o
	 saRMvOtoollGY2c6CO1rIm1RxCBg6XHURawuRrAQwJZnkSj2QHsBnXUcOYkwzWed0H
	 s2GdqIPXRM75MCCQHXoMCghCB0sJpCPEWx1Ie0s2rIOJqlmRcxgoBHNmwwgpEMbruK
	 9xobUcN/2/zQOUqu2beZ0KgfgccgstbqUrl26yL965A5vsUgCMaWNyrbcSJVFC7WHg
	 PplMx5OCk03+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CFFCAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834319358.4186.8307501204001779523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70188e741c17029582b643f9a0bcda824389faebca4ae2630dd9b9c57f2696a5
Date: Sat, 20 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758343193
