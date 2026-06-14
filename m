Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813E12DCF52
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781408194; cv=none; b=Tb40QmKktnkwLr+CINmiDnwJFMg7F9hhqwagyeTs8Wh3QrzoyjnE4DIuwSMJSr92f9YtVbtw/Bz+bi4S9WVjzIaloZj/gblU5BSFuPALq7WLT/pyhGqk0JwHhN/yfi8hl+8/3/wI8CnQzY3p7lETbj6AvWXHMPhnxgQO33jcDFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781408194; c=relaxed/simple;
	bh=tkNE51q2wB9Tz/fztONvyzNsLBfElJM7YmFY2IYr6eM=;
	h=To:Subject:From:Message-Id:Date; b=h0e3/8yLw6D8DAuyHV3ZEUj5ZBY/au2RifFPfKKuLm4GvrRDRuK84GB5BBSus6wTvwo/WvuvsXQetSXiPeQGMnm3Xf8IXuGUTJkk4/pM7ZgYmc7dnCZLXWJaLq0cCsEk2WTYNd9vSSumhBOTHgYSqAnncZGw12tZEXkdZ3t+7YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKlSdjNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKlSdjNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CE0C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781408193;
	bh=tkNE51q2wB9Tz/fztONvyzNsLBfElJM7YmFY2IYr6eM=;
	h=To:Subject:From:Date:From;
	b=dKlSdjNV5mWSg6ieqqeRqaCkit+YuF+VwB3eLj7BJqym6nv8A70zCyEGlYgrK0oGI
	 0Se/Djs34M+VLKfjTJ/6ufrSw10gXIGzk9nDjKo6y3XOBFiBDRV873hZG9yTKVzxU9
	 PwU737XjzE4yZtNMlAKPvZUvgpJK51GOvAnQTWuOdKMJ9xut2OKDpoFgWSw56dDYn6
	 SgCwXDv4uRbAHKVZJdmsK+q6bgMkjVK/8+tILwkq7ltjaHsvA6PVifR6YfG2SxN94d
	 9GYF38BcRrfe2rvmfxSi+2DVu6J2Z4u/PikSbHgKRDYn4NR7vKwBAE7Aq6w/vmpi1V
	 aJEzT5NmfuS9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A914BCD98CF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140819367.6621.4181682075165303474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df2c781f4da4f315d22f8d7d589e65bde69ef4ee7edb4ed78b14872b998cefc
Date: Sun, 14 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781408193
