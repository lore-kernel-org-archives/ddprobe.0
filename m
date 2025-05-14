Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285F8801
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747266594; cv=none; b=m9r5sgc8VwIfQbknaxfF5whPMqJEfEmaq4+GQtU7Paniig/TzfO7MwqYxRjbpcLD1ZmkFrnldkUj29ou5ofUsovjO6k56ngMl9cWOwOBi6aLbGaGQg4xkfpfd3b13AhV/cXjgzf3vQVWlzxuijcC0qqqWJSQKFfscurj1EYNky0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747266594; c=relaxed/simple;
	bh=cXAq4MPQQZ2x5X575uzesiEg6w0hiaXU2vkCEvuaKoo=;
	h=To:Subject:From:Message-Id:Date; b=h2+KGg4bGMFQ7bT72IIpq8EFCfVZhEeJZIUuamOkDes532CcooaXYm+2d0KUn3Jf7zzdVrjG35YiNmN88j676mKUXRZESabTB39ckyQe8LM5sjP15UU76jgCOqSe3mfQQ7x9w1u7npDC9EjCJ18NNn7MRk+mTwgtiOeQcRM5nKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcM53Srf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcM53Srf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FCCC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747266593;
	bh=cXAq4MPQQZ2x5X575uzesiEg6w0hiaXU2vkCEvuaKoo=;
	h=To:Subject:From:Date:From;
	b=FcM53SrfDUMOPbH3D94RrdXYoub4cskj4IgMsZoC/vc5GfguGTYiPpdrJIpeGHsbn
	 rVXzw5wLO8QI7yMSc2Sg19jyO9mKwqu+vnOG+uUNqaDBnMAYMclzdR1nVt57XReSC4
	 yZa2DqdBwwlaQZmp1Gl08n0h4XWRGTvnh0ZkiYEb9xepGvWv1T7XNDjzWobjSXUm6F
	 dnV7UhMVBJaeefjHLbVv0KaOLaaw/bmMyuKiv4edC4FZLXROGouh0fBz8/Iwz/f/Fb
	 OuD4ADgUFbSrNTpSLiLPd2PSdNmE8spFx7wQ5C9nQpkqnm+jIX1pTigeOAbRMH0Sff
	 PLiavK64tpjNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B7C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174726659357.12474.9559724587726592835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b6df8f20e29f454360567670283ff170c60d33287bfcd2fb5bc1a2eac3a294
Date: Wed, 14 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747266593
