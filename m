Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1A33307B
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727766954; cv=none; b=u6IeLAEWJ0uhSDg4Up1mgo/rzQuBTYjD9Kp9lDEtIJ2oEhsGz4WmnmfTClDUXDo0zfISt7WjItAg4RzdiBiSIJp++if6ab//xalI+MOa209zrUH1aEOr0Hc3Bwcij5ALtNAeI7EjB0yR3SXUSkdriEpujVMXjOxDQFzaHCo+aUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727766954; c=relaxed/simple;
	bh=Nkj5997Jr7nvX+oLB1vHV0g9gjk1qPp3XpxtCHdN7MM=;
	h=To:Subject:From:Message-Id:Date; b=hjt1Z5ox1rY1O8otWi/0tXkaR9be84ziEiaa/9KMRklS3LIW+PaIQal88Y8B3gaVW9IG7OXAb8JqXXLO6csAdgaRuWaWHGjzvFQvCXbSdC4/cQZ9Dqv88wZHRYJrePEexUBly8MloLc5wVwGcSUbqxtmicfFk7Sayv+MnkJ2MhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6EEfj/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6EEfj/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF2BFC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727766953;
	bh=Nkj5997Jr7nvX+oLB1vHV0g9gjk1qPp3XpxtCHdN7MM=;
	h=To:Subject:From:Date:From;
	b=X6EEfj/nJfu0jFY8jsEpj6KobwhGuD/E58kovjG5tkHjXtUytl57T+Eh/TKIV6Kbc
	 y9bN/KBSM1lVJqXoSVqNGRjuP60F8NLAWmJiR2BXUK8FTvmn6r40kcRqxLS1yjZ0hm
	 UdsXeeW4sTGEFtykQswDhbWW4IK+niKIfDISTc1mgv7UHS0As1tqZelIAF+k5EvxoC
	 5X/W5gKRCNlLtb2+Wqo3MXsk8q9K42UIzQJBT8XHL+0QeHqh0SxIpEI9o4bYIX8rdN
	 fPKLX1+00KdzIoCRaC+ysppH0YaEyWX8XPkvn8KtAzSukda+9wbBSh/TqXS7TYce+t
	 s/CdRyfW9TMDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1174CE837A
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172776695364.9336.17659691914087000068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5dcf2ddaa56354f9cc5ee2f74c15edef13b24e0bafd68b43bfd691fd59ea64
Date: Tue, 01 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727766953
