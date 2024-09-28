Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFAFF9CB
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727529354; cv=none; b=MEtnSAug1bZkyTcv3Fe6HLp8NPSjSYClGREcq+CpIWh8UydZnltHyR8vosj4DYc6nZoDGkOwu5aYjqeA1IEyB6VK225ROlUygz5VFiduJqBggwedjPu6+R5UEfZ5pvlHuxTvodMkCvASiEp9lDECBbvzr/5UOQVdj9LDL6ovLd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727529354; c=relaxed/simple;
	bh=mIOhVwF+dMtv8vURleCLxqsCEGno3A435nyw7/OzB8w=;
	h=To:Subject:From:Message-Id:Date; b=jbRj/FyQG/cmPNuXCZLzqXyTXPQx44pGN3mQGrQ7k7I8QwsfokQTMvCfSGxI3hfsy823sRwcZlV4GmtckoDI/JdPlWoyMBDlOEPvzO5O2P2XIbteaDHdvWcAop5uZM/+sb1L4uQEzIU/Xk1xxH/CefpUIBnRtvZFg0ZWZTCToMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8KsZkDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8KsZkDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF675C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727529353;
	bh=mIOhVwF+dMtv8vURleCLxqsCEGno3A435nyw7/OzB8w=;
	h=To:Subject:From:Date:From;
	b=O8KsZkDPZY5JjNiVEjB5N23Zp8hvjYhZYe6ad3n6BJbrFDxDO2nsegE9wgrj+Ckf4
	 fDQQGxoh9M3s8MTTUoaV2+VBKxno+QW/bz/tobvzmV/oYUuybDWUBuLIiquU1goiAa
	 tAQwhCKqKagoF5sR1Ievxbfb9NCNaZXnRTrmWY45C4g6xlkGYraBeSfWXkZv7TZ6YJ
	 yX+dItn7CJXk0eVVneFUkeZgwGc05CwY6Amr+KYSWH32Ac/7YlhzhqqgYx6q8OCJW8
	 R0yi32EOhWJjtw/ff0my3nHHq93B/6fpr5HP8Ep2iCIY3WF07vrvGppfJNSOHHD2Jp
	 KzSz7ugxivF1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A7BCF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752935360.15516.14908830592524995131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfce7727bd706ebaf66fe126e0a9310f5b62dbce9d4aaa695e1d4f1a488b97ae
Date: Sat, 28 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727529353
