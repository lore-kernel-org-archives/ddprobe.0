Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894E845D92E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789409434; cv=none; b=iQckmO6sHjFyS1oExmJx4UYO8IBFUDiR2RGAaITgBhT4/87RhyD5GwvE/HCKlFs0d1xUO97JNY3AR+ry1g0m4c5RItVC7oq7ZK7P+Qaxp+nSKIdl1OeWmW8ZhFPJYsJaf4oSogvoe40fR3m+zLXNhrNM+LBBd+l+8hbJ7yMPFpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789409434; c=relaxed/simple;
	bh=KUIaTgzM1B6Mxq0Xg0Yos4NXnfvv7TLtex0WYo93NG0=;
	h=To:Subject:From:Message-Id:Date; b=ilQvg2tFB8Nh+QSawiv5rVz8SH0kyabGmgbsgll4RHIYZR3EJeRBf9x3/BcnVyYdwDPNdPxJ5lxSLIOhIWYTF+6fnxQB9hCisP5as1mtKpzI61OSGeMyCp1nOSl0DpCRn/rNqvTJKYUH3tDIyw1kp86d8omSsbBKMBS4BteyahU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVqVRplT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVqVRplT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3359C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789409433;
	bh=KUIaTgzM1B6Mxq0Xg0Yos4NXnfvv7TLtex0WYo93NG0=;
	h=To:Subject:From:Date:From;
	b=CVqVRplTZzr9LURhQRdCz5c1+qdpTneoNpwTMf2uxUJG7I7sS2OE/WdM/PmcOQciK
	 644PGdS9NHwO3sz3E24oqdDQ379e3FTYOERAFysXaz9ZnH1YfUwGEEKRJwosS4kmbq
	 4QXz7EH2NrNa5AUzKDrbjlz2PJ8C5GdEjQhww4PTu+hiRBNI7WzwSgutTPZIj9XSqF
	 8zs3MIt137TIAXWggNxWlOsyGGCCAbGPaFwBq9m5tOd7JXj0Ltp0QQNzSdz8NtWx66
	 pj8561gxPXVt+fCd0pyF622l4CNU/M1WMkLCsChY/dDgV/Ge/UiXPkf4LCSg0l5kem
	 2LwaGYIcwGjZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0184C88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940943371.27730.5874038553613967033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22fc38858932984bffdd6acd4659f840bcd570250e7cabde10161ec3687c4e0d
Date: Mon, 14 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789409433
