Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1505C265284
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753705794; cv=none; b=SnqE2P1rEYgfzvR9uwVlpoJfCnBGvqnH16GI7hzf7iDnuzB10GW8lCX0OZM2uIA6ia11nRoLGwl4fqO3WA9ppsvhWpz88tyFown0KuZSbwok6+FPzd7hnJuoOmGw7GDMBpiY8pvpvSTf3fiMHh5JGWpRhZk5klwomsvygu2OX00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753705794; c=relaxed/simple;
	bh=ox2cZ2uO9GJz38rMGLPiNaaERxxK0Hjm7H5zcr3eHpk=;
	h=To:Subject:From:Message-Id:Date; b=JFP5bjtAsyeQSf430jnZKuRM1aLTWwBavt6QyQgtEy7bHVpzuLrz7O+KIZWXBOIxpBwDbJdKvgOhzteQcIqjk5d6eiKyAtMlcdPhk88XmKfQgUSALsryCAMqzUCzTm4GCMOZSORZYXGjlBw52qqoIfgVoWnjR6sIVhpRC6YKp0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPkJDnn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPkJDnn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AE8DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753705793;
	bh=ox2cZ2uO9GJz38rMGLPiNaaERxxK0Hjm7H5zcr3eHpk=;
	h=To:Subject:From:Date:From;
	b=lPkJDnn6guyVLWHz0qgNS/izeGCNy9dgGzVkM43bw0RcYSHS9xKwUOEt8xLobPY9u
	 RcSHT4w/ODjnmv9LOP5HXgeSYnbhbOIztlNAtYJx+yZF0MzYRGQqDY/jhcxL48qJcJ
	 8Dam1C9UUd0NIkzhuPaGzxYvwgwuJljd1XkTC2F7Lnxh/j30h+/MoK7rqRWUW/3+Pr
	 iP6z/PKNv+FxRYLuuMwOaVU2Zo5i6u6swuwOh7v/kB38TDXC40FZZLFa5lCdoY3VqS
	 Q855jQryR0V6e62blDqD4L7G3/SiNZybyZPz0gG4cEEEmbPH+dvmDmtwc50HL1EHVm
	 TsMNhs/TJIsbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E427C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370579357.29494.2508497156025553867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e6b2018f7838e9d7feacaa1404898386e3a65daa370b14a0eec97d5057d24c
Date: Mon, 28 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753705793
