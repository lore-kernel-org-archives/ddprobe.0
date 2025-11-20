Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5CD3644D7
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763665314; cv=none; b=eNOa3j2TcOSko1eJL7nGGKmah2lbLzaFizXxWrae2OoNocxbfw49TNzlsenw55OtXAGz3GbrSYDO0FnHoE0HlqKh7yurxQDTeq+1AmdUUK0iM9ydX+iKAkZL49ORcAUUyILS7BQJJNORLytLkHgMn4loQpdOk3zX3IIttjQ6Sxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763665314; c=relaxed/simple;
	bh=fCPYaFDkKGmiShyTUUHGTxLnOnvKWl7I80ko5emrtpg=;
	h=To:Subject:From:Message-Id:Date; b=uagX85cSpKboTh9lR1s1Y8u+Y+6tl8WOXvDPvA3OYKEgooNtQhfcAjSsRDoOzyEC3Iup3q41CjKDwAyKI3dGARzQ093b46yEm5wAUj4nlviWiTnDYhrNEAb/Zsoit7JYkyRU/8Lj1ju5JXo4z6wg3HHbEKG34SJVLowcYI7s7Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7UncqAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7UncqAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA3C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763665313;
	bh=fCPYaFDkKGmiShyTUUHGTxLnOnvKWl7I80ko5emrtpg=;
	h=To:Subject:From:Date:From;
	b=R7UncqAU/uQXb7kYD/bnBDlpslparVZXBdcYHOQqeTDV0vDdSrAboazbhZTy6I3jG
	 nKds2mlzUKErr9q88JtqMHhdgAEA4HVf2X1KRptp2J5619pOFB/GdakZAyng4EEGvw
	 EGEsgb7ZxRsQGaYRULalVxCDtwX5QW4ImTfOzxIuLwuDdJqIp3cKc1FuJcqPuhJCnf
	 5FZHvvFfOSK0voqwUv8PGk666mZgE6XdJyk27o+MdSeJv6LBvjSehTCpcNEnz7Xoik
	 DKWaUyFBDpxoceAxrpJBkOw/KsX1Fvwr1hurEw5uWz7I5OVPjSzw4cqwokQg5D5qgm
	 ASYWNEokTasRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9647DCF9C7A
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366531360.16428.13624204539555950793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a744216eb59aa47e1d7ea928d53516ad61233f2aabbd60de5b232f108a7f43b
Date: Thu, 20 Nov 2025 19:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763665313
