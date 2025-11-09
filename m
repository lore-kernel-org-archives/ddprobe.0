Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B00B22FDEC
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762723794; cv=none; b=SxXoaZ8Vzs/kutmh3RWaBe0VwIzSFAwvGM8B6GAuXjVjhAejJGKDlcClbNzfbJ9ldSEbW1UUIa71DY9DrIGlYeM2HhCTM14p0Y8tRHIG3C/pcc0omz1/loLxG7jyshxpcZ8jInKfUXptvDvfGguezms3MIP9cQ8if+PTyoxJyfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762723794; c=relaxed/simple;
	bh=qP/V8Uh8QSags1GYSpBF11WU+NdPsvdqfQPhYsjDBUs=;
	h=To:Subject:From:Message-Id:Date; b=N14uV8LMm2eeaPw/FgQgZmb1kZF6KPK2sRS80YH5lvSgpBQMraQAbumKYe+v77s8lN0ww8QGMdpGjhTRp9cQaTkD6+6lPNMUExN+8prv6yLrvvR5460+D19T+5+31yV0Sh0BCHCSn5IAMSFcUbneLEiX1aTL4CyWz+7LmpeF67E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POdekkGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POdekkGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F10C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762723793;
	bh=qP/V8Uh8QSags1GYSpBF11WU+NdPsvdqfQPhYsjDBUs=;
	h=To:Subject:From:Date:From;
	b=POdekkGohqutRP44oUN5hHyCCxQKVS99NZuiLi5nYFARXhpQixfn4RQMx05AfotX1
	 2Kr4PuVeAt3kZzPwqj/LFz6x5mXUu92oMkDmyyfOruTf41bYjAt0MWkw3wcmak7Id5
	 hpJjqSzXXZ4tk+uxlgZVaFYedn1e2PLYuPbeABfTjFRqvH+/dSIxjrQabYx3/Vpscn
	 DSoJiWsxNO6gMYoQ+og7236mkm/Rah31hwNJHCz3sLHiffQW8Uc/ei0vd8F9a+6KlN
	 RGzMHo3KEUTbf3m4r54uLwx/kOlotnn7lZhjzLiXWcE34Q1B5+VadzxIwG2srb/sC7
	 3qMctFpOPITtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CD4CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272379358.20514.9920301251974920672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2a1cc81d4f4d86045eaf765c3dfa400faf74cc944314c217e7227869a9eb14
Date: Sun, 09 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762723793
