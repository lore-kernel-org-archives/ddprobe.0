Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1E18635D
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786315834; cv=none; b=U7XarbE+Cnp8VDh7ut/BLzMhromL6so84X6WcVJAPm7piBuOj2YeqTheO9p+AFwXNB4jipZ0VAnD5xirlPJYlDYjmmn/qJdisO5dmszHIO9bG/9ZHQ4MP65KycA4Lap0ygGYwWPYfrDqgBNhmAhRL9xxuWop3To54HqCganbHoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786315834; c=relaxed/simple;
	bh=c4rJh3mAjbtAa5OQXdON9GkhQN8ZzpTFTtmXQcBg1m8=;
	h=To:Subject:From:Message-Id:Date; b=gsd5a8HVBXn3KxrLMu7WLoZAyKb9v0YIEMzS1f+rgz9CYLgynNtkp6APybnFCu6ZYqGRDiFCHxSU1g/jYb5eIfx3C8XC2Ja5GtGzAejjj1FvrwotYO6XCO/JvrAPabpR9pdkRR/SQuPSfq+W7sMvmp1AWjdf0jbRzOMgPVTrpQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhNju5dH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhNju5dH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5672C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786315833;
	bh=c4rJh3mAjbtAa5OQXdON9GkhQN8ZzpTFTtmXQcBg1m8=;
	h=To:Subject:From:Date:From;
	b=EhNju5dH0oogE6Kd/u0tk9LhA+Cnha6bLyXlX3jMGuxEyJw+GRQ94LeqNsIomF0bc
	 q81dRT1GJ+qEhlcDH88J09nSIw+lEUPEO/2NyovmdoPuYX4vCGrzCmoyBx24r73W2F
	 mwcgjdnOUKrsGB/sxgulkFW9AltCj9HN6Sl60Va3S7EJtQQaGl84/yvM5gUR/nlaO6
	 SugBnvxIA2vBIF8dr7R+ShsgWP/IfR4+AW3TORGl4FCv5XCBS5vCFzSndUGp5tiRH0
	 1XNk81lgS7BpmtRIwXLw2sLh7Y49EuIKkoT/YWbO7ccEygDhasOkop4FmWiIy3ZOq/
	 3UOet5w6LXYpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B208AC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631583369.28365.4392827759660940049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c369e1f973cd0034028bb31f1e7e3c0c7ad64a649e9f0b61322331ff8c3e85
Date: Sun, 09 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786315833
