Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DC2A92F
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711675697; cv=none; b=gf4AoWB9FOTbSitElm3Xv1oQBg6BWiycS60ho179h2cXkTv1zG9bM8/Wp7YSsk8uEWcQTWgnvt2VQ0CkovtHoyQfZItak9sqgBndQ+sm9F0efLZcmAAwMMh7qhWBKj8+sAAMScoEzdPxkWieAeySa4YXAJViooY4p/7UP6nJkQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711675697; c=relaxed/simple;
	bh=5UlzylSwbLbyHSnjX00ebaHYIUl/rnn3FCzhIZtEl4A=;
	h=To:Subject:From:Message-Id:Date; b=jg8EeKdprm12JExlI6wrUsvn3RjVnJdtaNAG+xExNLdOokBJEuHio1FIMxIoBUiqHD/zbVFlhxZRBcARbnC2mprEsBDDQTor9IivRXY5rtFzMg5vqH+O5bzTqFMnnbLFporuGJ1DS419IHNpHn/8zFKZcq2cXHmfSifAvOuQO+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BB2dr9B7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BB2dr9B7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CCF9C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711675696;
	bh=5UlzylSwbLbyHSnjX00ebaHYIUl/rnn3FCzhIZtEl4A=;
	h=To:Subject:From:Date:From;
	b=BB2dr9B7xO7pAwDoTCVON3v/i5vDHvligc67sCb/i8gdV31VEaOjBG7yhX7lcyJYR
	 f9zDmBfhxYGFOfSLpnsrhhJQ9fnXyg7Yba+25ICjmVHmP+AkySmm/my7OJepfxmEKC
	 UdRqQyZ3bhxGqTliEMLlLgLIXkXafi7Q4R/mSh9stQrxVSiSARy+lUp0sbtdpXmK+P
	 ylAOsiHzGfVpgFd/X1Igv6xkUgqnqk+INnl+VySjEGUoyfSFT002y6FpHcJLnqSTw8
	 WTqjFB1ug24NNRiHQ+AVQgvdh9FA25+VI01jAe2tnIQk8lsb65MMeKEFQoSBrw+fBu
	 OIQEOEn7juqBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 735DFCD1288
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171167569641.20005.7361637581908499242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71369bafbf340762c318a16ceabd65c81869fa7d742d9fa4dfc910667f9dcd6e
Date: Fri, 29 Mar 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711675696
