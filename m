Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559B03FB01
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720581983; cv=none; b=kLXMZHyYmwD9TT4Ri8dcCO0g2g6Ncvgg+q/i6n0xy8QQXTpeMMySlhxNSOOLCbuLtjkYMuJg595UMOv4tqwDtUzld3klC97H+NcCHma06CKTOd/pL1xIqaWtNUx96a1L7zOIihDOGxeOOnX3oFvfvG0FBf+A5Lyt1oo9UKYiP9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720581983; c=relaxed/simple;
	bh=UH5jCLFo5ERqEYoQivOk/eGUqgblwyNEI42eXinc8iU=;
	h=To:Subject:From:Message-Id:Date; b=mqTOz+N1PWiR2kZ05Eg7qOGv6CJZxAdLCjUpA2ddtJfyCPafCDOeEWZyJWN/vVZimCgiO0tEKS4yh0JwA97OKXDHO40MwkX7DXgF6MV+dNZUV/BbeQOGoS/wn2u088FK1i8l5vQk2nL++EqAZhyj9iRaeAeoqGZh1foBubA0/Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsFti90w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsFti90w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB20C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720581982;
	bh=UH5jCLFo5ERqEYoQivOk/eGUqgblwyNEI42eXinc8iU=;
	h=To:Subject:From:Date:From;
	b=NsFti90w8p7cDebT3e8mWMSEQU9Lgk/FBMO2+KzZ4KQ940WA/X/U4OPdN5JVJ24SE
	 XkFPKMg9B46y4h7kzdYkl2FON1lRT9AyYqT2vYQ6CKqhMPzflwZlUAPxnG+2Cyy5Xb
	 Y3kxJFR25SpvXG+1rjvzmWmLQW1o24ri9BGD2An2Mw83o42g7Htz0TWKbc+Bl3N19f
	 oIhYCoTzTSV8V9Ffgvn8PZHPXurmpk3nZPn4lOPomjtjpHN04E9VKSBAan2AdVZQjn
	 P72pCh5Ap/ajWO/WH0G+BGfzIFgNRa2D7YZ7MrIti+HCl1T5j0ClI66Q9Ac5M3EOKV
	 Iiby6Shb4mQrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C9EC2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058198279.25436.16510026019984070212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18685e4004a1ee139eaa3d49cb884e8825558aa48f3df0fd846c8c46bb485e2
Date: Wed, 10 Jul 2024 03:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720581982
