Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6100F17BA7
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716845663; cv=none; b=akLC4tarN+rM976R7675XjVXWTTdrmNQQRRsp9+G47O3nxYKn/7bnzEd7C40CB7sMzNesm2RzMYkm/DnJa2GBdeRnyuBAXVb500cIcC+plKOfvRzKpGBlbGT0K24VYZl/HRDd7keEvG6TGWAM6vPa6+j6tvBKPhyF9EAaoBYRQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716845663; c=relaxed/simple;
	bh=kcy+XhqRktaXrh+hOVP/6OLiADKG637uQ3dlWlRzVVY=;
	h=To:Subject:From:Message-Id:Date; b=Ei94bzGzZ73B9BwJV+8kZDnouXJZ5k0HOndM5bJZIyEkyFwmFgsRaOD3MduF4VFpn+mlF+BZPpiy8or7Hvb2FebzGOZQVD6AL+7k0mew0k7pFLJ9aFdQzdW7UMV4eWKuTtWX/z+q3KBTO8xgR1G4W3eoh3qwVDX5ubB+RuNVQm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzK3P2bp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzK3P2bp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D15C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716845662;
	bh=kcy+XhqRktaXrh+hOVP/6OLiADKG637uQ3dlWlRzVVY=;
	h=To:Subject:From:Date:From;
	b=WzK3P2bpf5VsROjvJidzaYUWmXT4W5xL9a2Aq6gihBymjZl2fu1LaWAcjXrcmktwS
	 XzP5rm6304gt93GwINfS2cBAbVnCe0ntTXv9YJnrU7GAvfLcOSIMhOz2tRRPdq7A9b
	 syh/yWcAACa1rS+whKDNYnLRRO0Rv5Rdw1Bq4HPqEv+47HS3aF66h3xfDh+2y11zdq
	 8hNYMJh/3u07H7uEWckV5ZrXNLRyOvgH3nYXN4VvQlxtfZ4faXsoX36sUVQfA7zyVS
	 9sktVB5kHnHUMd3OiReJr4V7oJBw1ZSlejJvrZ9aFxL2cOUfdVyuuGN4pzJAbFYM01
	 usaGuyJFiZQUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0BCC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 21:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684566282.5705.6554872807517855312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1b1d9048dd38b5b05ca2723244f71d4dfab2992ebf8321110a8018945a67e7
Date: Mon, 27 May 2024 21:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716845662
