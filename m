Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8E731BC8D
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763370114; cv=none; b=Ou6BgmF/hky/XabycBxNDRH39k3FgpLQ08RS3trvEtIziE8DfeevuIOvjo7Yb47f2ndj05gm7ZTZDR5jAotp+QEqd2h2vVmQuvnnFNECuRP1RceYxMZX/XBFFuwp44Ldx1493RYS2FoqHwJ6GtXwF7S+UFKOSdJJ1wuwMtiWMQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763370114; c=relaxed/simple;
	bh=QOJKUjDOzwiF3FCx/BnpTX9yNybs3A+hxHbQ93ps94Y=;
	h=To:Subject:From:Message-Id:Date; b=YRi5KJHfRvoTKMNZHUtcETkhL5ByFk9iHd7IqsigucRm8+wBKppcpB1baFuzkmJ6/mmFhSZs8r5lekSAPwFUYYzHVXa6Pa4XP7nHku5d2UF9S7fOYu58/A3Hl5mrhhkll8ZyrQg6ByY0iJn3FQ+X9IE6BuvkvkmoroY91crGFUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjAhI6VD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjAhI6VD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35CFC19424
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763370113;
	bh=QOJKUjDOzwiF3FCx/BnpTX9yNybs3A+hxHbQ93ps94Y=;
	h=To:Subject:From:Date:From;
	b=qjAhI6VDMUG/b7Q35EspvLI0KVzDUi//bILkn2t+ZxVFYW4ST1DwuucBXevHe4Ubw
	 ggiN3I9FdvpKVh0QqUlR+9Bv9Yd+rN2JcqfvMvF6R/VDrQ4YOe/zDDA33tJkdG1Mg5
	 m9y9qkPYtcmLz2wlVaazY/LfZifq8FKpdh8PRQKQYO3URTWAMs/1UM46UIT2mQQad/
	 /EFrur2wwoNMe8czwrbvjIosdxByt409ewM627GKMgXf22IL/sqtjZ8Ac5YMNZxCp9
	 2ecqMXcm/4f3uMm8oFo/bWS7/djfo6Z4GT3WBq/OygbSiVVsswxffRmZMnWk324+To
	 kY7CjfNjR3Ulw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206FCE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337011358.12213.11494102545180206541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e826485292b8716a653b1ebb81f63d6b1098415724f1e79d65b673781695bde
Date: Mon, 17 Nov 2025 09:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763370113
