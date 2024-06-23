Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB8314830D
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719168143; cv=none; b=o6Ute5zH8B9WCOR4N5ZgoH3CdLeP7P+BDkoFAejtX+1Ca3HgS3UCcYr7kiIpJWJENsJDijj2aCl7lZ28hBqMMbo3BtcdzGcvmivl6GgZ4Dnh6zoLRieF9qGqIJnAbVLgOrdIwzDgTS4xhITTkKiPP2HK5wn1b5f2Brm47di0lMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719168143; c=relaxed/simple;
	bh=Mh3EVlosIzKyWgcd6OBFKCxVly81EE4O4XGuExHBJ/c=;
	h=To:Subject:From:Message-Id:Date; b=MUZKgQcjCgTcQuBPK8Selgefjru++L5E/vKjhiZUUCeNv13WVRbX7Qc18lqYe5xTzGv6vYuaTUROREzma0b6BSRHFc/TXupO/tIWi467ICJaESL1DZaOg2i+2T34/gnz+qE8ctlPn125xGFxCYKlvFR5UDN6IUYHpLmX+zuIUlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc+ovU0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc+ovU0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6831C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719168142;
	bh=Mh3EVlosIzKyWgcd6OBFKCxVly81EE4O4XGuExHBJ/c=;
	h=To:Subject:From:Date:From;
	b=Sc+ovU0XFNmUiPfQaecSt95l65FlvkewbwsC+R8GSPqiA2+BLNU7+/OXPIp9gr9c2
	 bbqbPbLVeseJUmi5W1o3H7Q4Yo1BIHVWi5iobGQdAR+uOYEYdNU6QRdWqvVyXPOG+W
	 DrBSDrabkL/lp5+dXmwB2LMYbbhrWeIbYOLm0oBZH8RyPaDICkQozEUhzEZolGtvOF
	 4ZXbyza4MDS+Mh8UJ/Ro2203l6ARyjJvbpCmSTyoOpqyA+mTwLh2wlYYXkaAzxJNVw
	 WL63MOqZ/cw3eoNsSFCzeSBnZemDshjG5hSlvMpQoZgZ1M/yYWuDClUopq0Otrs0zl
	 zSk537H9M2iRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4543C2BD05
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 18:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171916814277.9007.14780345583269870223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f12dca595d112d5cb483754ee99d90f1b78663ffc87aeb86df8cc15447cd45
Date: Sun, 23 Jun 2024 18:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719168142
