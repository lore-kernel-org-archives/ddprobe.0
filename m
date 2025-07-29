Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FACC28CF6A
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753801195; cv=none; b=Jz2XMWNC1DMy0wCmdiHtfqy2rVdZtgBoc0iUEXBHIREOoWR30ADsZ1JTYL92igUObvC2jeJc6dpOeZSS32Xvndc8ev3DC0M72HQvOa+1JoP0xW79BiFNhB3giwXoWzP8Me2YVhC1euNguQ2sNTeqoRcbOv7qdFJnLCMFaCulEwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753801195; c=relaxed/simple;
	bh=XijD3MC9WB/gewIbUcKUz2KrsOslZ/jTUTUgb8lUh04=;
	h=To:Subject:From:Message-Id:Date; b=TlflRY/JdrBq4nUkexxr6niSlotyrcorwy0jiZvMXa6QSDhYyNsekAT7HNmlQOzJWrTDMLwoh8DaUh0D1D5/k7TgpsvWqYk9FexqoLUySSuYXOhRBbZl9q8osxfEM7odHtcLmrRnvywPgmSBcmYTRoyWn7ORiMQA4U+QFwoS/Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hipU59Hn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hipU59Hn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A5EC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753801193;
	bh=XijD3MC9WB/gewIbUcKUz2KrsOslZ/jTUTUgb8lUh04=;
	h=To:Subject:From:Date:From;
	b=hipU59HnD88PS9WxqVPULNXDZ4Oanb7oXGBu/N+GFN3uBpQ7Z6cp1Zt147lxfcCrX
	 aC+n03SqigTcvOyZF+5ZiYOlsJWX0d9P7sX8Y3p5TOcaCdiLncsHcVEQwDwYaKJ5p4
	 /ih5se19FSIngWZBb/a2CfaK0OzunMhtfbD7Y54Xgp7Kk0Soep6i2gni83IOtcOv+S
	 j0sJwVBsQGtGxhB9oxK+m0JO0OPzvZDeHzRnrdvJ2rvPw/Yx6w5avSQCO58c9ZJghb
	 rYEvBXkMDrxe9VdjIF01nTHR9gsyX+DGmjVMughPJ9yXRSs1Hd966siT4PbftdMj97
	 U/+F4Ru33ei5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AA5C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380119359.30362.4136348347354226488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904c498c243e3e75dc6a1a4ab3304dfaf3a0547207b7fc3f79b7a5c52ca3a258
Date: Tue, 29 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753801193
