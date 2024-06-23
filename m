Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AA9146B5
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 03:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719112943; cv=none; b=f1haeRngrfxwrSxTqTuQpeFM0Cw2XKwnCU7FoCv9PxBYwiciaSgGKrhy9WoI01Dr9lh+4YChVfDynGXnlfqJHvECv+zfwQHLMrxF7FF1lzhrTwgs3WD/J/LQ2zIxRTM2BROlX4MiRWA75QHotySKf+hgU9U1J9zX2Yf1dcyZ46Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719112943; c=relaxed/simple;
	bh=rycvnkFnWu7hWXXL76A0VtwhomVDlCM+utaAjVRrkHs=;
	h=To:Subject:From:Message-Id:Date; b=gyiTOmyONVPHbZTFlcwkueiAvAMu48LiM2yOK1tzr2TTIZJd7IWFDHcxbgS3HuIUrqGnlg9uqUYCjcHIzu/bFa7RwBVJcDk8eSD2AuWiYpOQ6CWuXNGIRJQ9h+0ty+0zgeVoPK69EzXHi10xlUtBcDzRMwtdm8E7YQsgWI0yeyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/HfCqNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/HfCqNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF8FC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719112942;
	bh=rycvnkFnWu7hWXXL76A0VtwhomVDlCM+utaAjVRrkHs=;
	h=To:Subject:From:Date:From;
	b=N/HfCqNoVtxJEnoT4eKT8J6hNQts4REV5Tbu6h/IPZ4ayaevmjA52lUZlEYxjMEfi
	 EkwcFjBdN8rA/r6SwLRtUWN20eiTkeWlPNJTgZdOkm5QelsRdfIKBrHX3vRCWx7/bW
	 k3pE/ALjGyMfmUtWNooU6hjnZTvIEDFgnoxsP+iIPSkvPBMawr/4KphDCtt5WRvb2h
	 zmsyOWzkOxyvZQLJw+N+TzxJlU7ZI0/0Qs7qVnO60hAdCf8Qqj/tieKpZjsdBEpQ7A
	 Fr7X9X2KwjzAsBBYKD10uCPyXAgXc7ME0x2s+itdUKG4NALFwP+ctmTR+JVlxwOX7z
	 gzoCCnXtavzjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C539AC2BD09
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 03:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171911294278.515.5306189843102046345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41bfb5e17f3a77c5740eb805fe25497195596a2520b2dadb847662ebbd3838b5
Date: Sun, 23 Jun 2024 03:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719112942
