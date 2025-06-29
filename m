Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270292F1FE6
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751190594; cv=none; b=DnTczVYsnNE98e+1VsehFbY8+IBKqIMX1sVJl+sEaZDhFghWlIXKhX7qsRJFK/OYbanoLUPY9woeqFun2RMg8Stza3KsLYDFHCMJnlrwTwjHedh9cqM9vDmzlLq96V+YKzbEGGHd2gBqkdnHOSE0+W6Jd1T+4xntQGpNpXdcS2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751190594; c=relaxed/simple;
	bh=80KpyJnS9B9bct4/MzyqEJHmJAOAjL7UWAuv1aTx08Y=;
	h=To:Subject:From:Message-Id:Date; b=hVBTiLzdwBDoiJXrZ3820AIlbAqAmxTozq6Q2JWttyW/z31vXbeNAZqiPATFsbB7L87aB0ceE8pVsPWa0LxP4gp4mydL2kGznngeDOIEHwV1teNVNiw1A3goTmCevkUGSK8nw4ZdhoPfKiqCESbVRpjMkkoqpsfk5+FhnTttgzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfXj+SSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfXj+SSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63BFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751190593;
	bh=80KpyJnS9B9bct4/MzyqEJHmJAOAjL7UWAuv1aTx08Y=;
	h=To:Subject:From:Date:From;
	b=BfXj+SSiDRjn1To22OEVW5Q0RrV8lcCrAjukDsEg8Dk6o2aYOi0ZF6dchpuS5ENcg
	 KNA09j+WLaGOvZJjdWbTUXE0Kfv41hBNnzxEaVSmQ+ocQglq3kR4PYUVPO/kdvJTle
	 w8lJWP1HysIbHbBBA7GAGr0gydbPbpFQBZkL35MmxJTmLymIblG0amVMEv5VOH/PBd
	 9ez9+Ro9MKTPHCkcU5lX762Yla2lSPxBqoDF/3wcCLio6XQw442AHgoRuf7WG0sJEM
	 LuIgDrtxqmeVoJRS2reIaHS197OuMZaFnQyXq5pXsZ4HpHD+xtS/kbZ12xjkh1t0LN
	 NR+6GHvVohp8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F9C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119059357.27770.15746504805328318015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0efbe28b272faee71d0ceb7cc120abe81f7a78f89bd0aafe3ab16ba70ccffeaf
Date: Sun, 29 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751190593
