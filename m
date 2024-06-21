Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482FD16B3B0
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718955143; cv=none; b=Bog+SpRz9dMa5lBu5Gq+GZQYNQqxv5yg0hyMSgda9ns8HmNVgHviUYLM2/dioGLCyCdy5uKQghjBLaXUTrTr3H9TmCQ+hU+5wcK2gdklt3ba0HMS+/EM4gN3k5XRHKMwmRhoAdn0s/TLnpp0F8rOlc3iimgN9pIrzebQ/aHs89E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718955143; c=relaxed/simple;
	bh=Psf1SoOKuYVCE1yS2NX67tTtSSr1nCBXYCfPMcOK1qk=;
	h=To:Subject:From:Message-Id:Date; b=eUxyFtPcZddnzYQm1Xg0NvIg06BZF8zqzlTNSrYozT9Gt13AFKKe/yTb+es0yljHJklK/UuPESjU/VOUsXBk7AWM31X2Jq9FqGqnb5JG9Dvy9A/gkdd4Z/cM0JHuW5QwEs5QH6HI1RAEi+QDZIe6CxNH2UCjdneauQ756Aqu+74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqW0qwlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqW0qwlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADA7C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718955142;
	bh=Psf1SoOKuYVCE1yS2NX67tTtSSr1nCBXYCfPMcOK1qk=;
	h=To:Subject:From:Date:From;
	b=PqW0qwlQS2riErQfcJIEErOPpyYlKGkAxJK/NctJ2wAnIv75prRERiFgtRQsKarwp
	 DI45XuvUGLDCh7LQIwVVydmCi4GGzZIXWjLVwOpqZtjBBFC6WPvUBwx8tN8rK0MEON
	 wPjDS3y1lfMzsyP3JWK5QZfpsQL5vPd8o2X3ybBwzVQTTVdpazf8fh7CuwvjEZMT+4
	 4eD5tsNWPLCzHNqgT6Pxugmt/wRx/eXOX7Cmp3TgdwXnVct6gwfkRXS6L5OUF9dn3N
	 IitZe4hCb0qLZrSuhJDhulOE9XnYMesJD0fEj4k5pofUHhGa8t+ByYsiYUTR6w/PPJ
	 osFU6molwIASw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45A4C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895514279.20387.6322726447010703234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ddc73f428cedc446c11e4321795aa7a55b78b29ad7d525be1c7428dc0fa6dab
Date: Fri, 21 Jun 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718955142
