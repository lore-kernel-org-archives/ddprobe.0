Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D56619CCEC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746214194; cv=none; b=m2X70AKCzA908UD9ZJRMwCk/Yo8e16wc8INAqB1H8e4P5zruZVS4ifzwp7u7SEKFpPcRw1sRhtXZkogxJPbNV7Nyj6YLSP4QdXAkM9xRIPWTSvTYmcAQMPr6RFnrHQXhtD4vjs54xd/0IX2I0iP/wsrUXrc8bXhNonP0hGMYIZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746214194; c=relaxed/simple;
	bh=wEznTS5DDGM0u84lWlNNqQMYAuKTLdesmr9c2VemjhE=;
	h=To:Subject:From:Message-Id:Date; b=tf5bEagh5PNZ1lpsQJC763kJEzh6RWopExTmlw1WzB6haF6sut1NAxtHv8b7ld0zIa+x/ZWe1XHrzx0+H0Do3DwjX+E2NxcTmqOTokF49bVusmGZTW5qmSAIj1E/kHaT+QR9p53gSyvXvgfLdkWG2d2NaPt15DUSjQBCaiL9fbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsWcOJgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsWcOJgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A551AC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746214193;
	bh=wEznTS5DDGM0u84lWlNNqQMYAuKTLdesmr9c2VemjhE=;
	h=To:Subject:From:Date:From;
	b=TsWcOJgzs9YJP/6n78BWa+lCYKq7O67HWIIWSho1Xy1SqVz8OlxPKxDGB18B+lULb
	 H4SnKACVYq4CL25dv6fG7WrE3LfuwpT49RVGGCOPyepqNGPNoToJYkVxfXuLy0nNVL
	 VutVyXoUXtn4nIBmbQ5qRw/qmlIoas3PpYQHEiPE3eim10jz+mB6OicWPtVu0HOoLa
	 Jygzg52JZVsE7D83uMA9u9USgbpasCajAr3iPJVxp43FciCePdpj08ccRQH8ktZBpJ
	 jLZdlGh7gXA9x6ExrjnNB5ZZ6DyZTqJZ/L8hEEtv6osY6XyXUmOhnbt2+cgMJK0Upe
	 +GwWvYaP8ADWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B6CC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621419358.539.9822359312537509255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c376576e1bc00000d556d8ab42453a69aad0a9f1a332f0ab39dbb4cd904503
Date: Fri, 02 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746214193
