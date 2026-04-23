Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2078C33D6FA
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776967654; cv=none; b=B9zecn9KvOAaw0tSWlmuJYEnoaRzf4IfXY+V6cVkwq3wgizJ5uByReVfTddKkxcCzcPdgqxVmYg5+OoLrvhtoDRGIInNHmysSIN73XK6EZl1EDae0HmHdJUl8xCXtwYo7zVWn2lDyAOzz0n7nNbNOhBexLiUkWTX/6uBtaZgAAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776967654; c=relaxed/simple;
	bh=6nO2aOR2cOxmyjcdN/+p8SsEPEjDHAbGQGIB+ueOMwY=;
	h=To:Subject:From:Message-Id:Date; b=lgHdZskA903KbORuto5obsHQs3FZdsKm/1mbuKNgJq2FNaTbg1ipKbvM6yvH8mXQZrH5xcXC8TBTEOcOkEja/TgQFr+npXL1ANjYV4ofSRxPARzD4syuQmzJSph9XrzodoCSGU6me3Nan30czvXgfYzaegy2EvbVPT30CO/q0LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+D939w2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+D939w2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00B1C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776967653;
	bh=6nO2aOR2cOxmyjcdN/+p8SsEPEjDHAbGQGIB+ueOMwY=;
	h=To:Subject:From:Date:From;
	b=i+D939w2s2Ti2g6Rs3PY+enRWQFeEAax3/aYH5ywkzq2CGbGN7/cudFP8Npygwm7+
	 b/QnlPqrerg25coWKnWpkWXmNAlhcIr7onOMsP/b+K9Ou/na/oEdxpNQvb0m8TqHJ4
	 6d3SmW8Dl8VSidrM9rxApfZkemAH2itNXPT7NCJvufxkSbc5V6R50Ei3hSqp2W+5V1
	 jdRdtz8lrsUkJT8fWMhSNdaRzIbWdX18p/MnTcgSALw6eb0VxnM9HK7bsZBiSxKnIs
	 bMJxB9ICuYpEykkkP4CMK2Hx04UphqXt03F5WiQXvPd7lP/1Bjsjt/CAslbBxYhdlV
	 Yop3Lspmzbvww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC44BFDEE3F
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696765369.1560.7674819661725896138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc21fb1c3a582135e1412e1f37585fd30d343ecc6b007f29daba40201ba6fa1
Date: Thu, 23 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776967653
