Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E584C8FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 05:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718515103; cv=none; b=b4MBAUpl0T4zskj3AhtyGVNsoo3kBUvDXeB1pQWqaWB7ENdQ1fSbc/fYbn3FleSnSDZ0FXNwKC18dhZ5CYQ5xRTnb0IH6i4MDun+oHUVY0XDZ7kwedC68MaLD5hM9qfjzfRXiPve13iUAk132wNWsPrLwSveyvFRfGKCudLilfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718515103; c=relaxed/simple;
	bh=AxxhRQswOdIeKSymGM6gkrB6/QIHPGTB6bVPDiO4U40=;
	h=To:Subject:From:Message-Id:Date; b=md5g1xW9c+LyV9JexQpj/RGSD1CJU49/vHDycanEJr6qPn+XQ7xPrm0Eg+C8XdD6VVbwTtKH1XtiFPcAbCxZkpae2is2NFAM9+xEwFJPW+C30HRdV9+7MtQNftqac3Jf0brWzHS4KxOiQmDM4ohiQGQVQp5QuF2hW5keNzybbLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYYgEvKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYYgEvKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE402C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 05:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718515103;
	bh=AxxhRQswOdIeKSymGM6gkrB6/QIHPGTB6bVPDiO4U40=;
	h=To:Subject:From:Date:From;
	b=CYYgEvKL8q1puP2IZHjK5j5oL9qJKOkiIOLT5i2xYPw6kVOqJPXso4ADVXXV+/cue
	 tAffZWjI//lrtuXUbKr3m4i3XsK2kgIFqNX/o1hzyxHwockZXCXA6kw+64PYT0R/YQ
	 Eu9TQwFSO/5YeuYMZZ+g2FN6hvr2Yy8HpSdHknIaQlivShMb02poGBTn6VS/cgcfuG
	 TwFY3NkmnfnQgaPGSdaoP7Wm68YWoV3Yoiv91Ip2HryAd+mPUQj5JmQVRIXJuFR0df
	 h3JwrlL6rSM2rJvxG9y8C6Hluh8mY/hGzv+iESvg+skiO8AXVMmwSmZxIaoNpZrbKF
	 Zu8Q80tzCMjGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D377DC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 05:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171851510284.29790.18135117049887311258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6503f58c22ef30304851b483486a67d78db1fa12ea727433bf5b36ad9cd9be69
Date: Sun, 16 Jun 2024 05:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718515102
