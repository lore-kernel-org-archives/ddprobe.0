Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC261A83E1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737221153; cv=none; b=gX5/tOhQphYSnU3klAg8QF57doX7dxUswwxGgbT83Nwzwtrgfmf5d1ibvtg2fgdzE07cAK8z/JptqrjM2IuIudigkQD8pZTTkKV/H27xwebrFosuWG5ooxQEG3nXKGMqXces1QM1Shj6bKnIQxuzhVfkjmeXB3JL7efk/ZPP/zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737221153; c=relaxed/simple;
	bh=OysBiRvKcwWoS3WtvPz/Kjp17gNKOzI4reNjPj9rMLs=;
	h=To:Subject:From:Message-Id:Date; b=eNvTSDS73+oYKanZArWG8ylWslUkJBdRs7p6V6W86rdFFNR0uJeSRKyfqh1hiGr7Wxqlxa/GnM2DKANpO70IMLqImoVOzNMCpwvEp2kGgU3/Jb0p/Ln8NCyWeJ9yvWbrBhyWKkPOzCZH8U/Rk930VC4I02v0kAgMeTzctH2UU4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8dVR4QB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8dVR4QB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC43C4CEE1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737221153;
	bh=OysBiRvKcwWoS3WtvPz/Kjp17gNKOzI4reNjPj9rMLs=;
	h=To:Subject:From:Date:From;
	b=N8dVR4QBZDlMAkREjq7ZNlnypCBpTe5DQd3YpHNubQVZQR6YyiAhACtxdqhNsrBsX
	 cxYXB8vksTgrRMhGSH0tbbRFWAsFsKEKHcKHkc9B2524B7VThnCFv+d5gR5DnSjM4u
	 3AOTA3spe9tHHe9PxhH6W217j8fM/GlKVX0QnthwA1XXOIrrAblz3VL5mSafaXF8aW
	 SWd2iDHWSZJfENOphYEMcoRHzNBRkkhJCIeoFstGtPhOar4wdeEx6ATQrOKwf+J7Wo
	 xN8PSHT6lQLTR5AwT7nu0NhzicheJFZOabrGIVCND45riVDLsx//rzEhkicHDM5oSv
	 vSxv8JCoWx/vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B25C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722115361.2501.1592619357960136111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64a72dc424bde703d06e378dd90f50ba6c9ab0a97985d48c20d677f3c6f878e
Date: Sat, 18 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737221153
