Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DE61DE4C4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755930594; cv=none; b=D/Z5Fp41fjFqJt/b8IkyU2Yv/pRnuithGVlED+iMSi2uBDcBsrK7NHogkDp/PVTzAU9DkiQq6xbBOqEfBFO+Q5uLvNgP4YNBbX2nyzdDvAGKPBWs+LQ0K05y3RiVwUoVlhba/CD6YMm2kx+B7tbxIn3tyAEkKEog5W5fShZi1Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755930594; c=relaxed/simple;
	bh=YX4mfC1tYI2Bxmx1JWP2XKQOxw1siqfmLI4Xn7OSvHs=;
	h=To:Subject:From:Message-Id:Date; b=P60fPO9fqJXpmqcG2Wa3jee+bVxQBCvs1ENFsTOKpMTeQcWBGePAEo2qtn1ZAedrr9scP6D/vRhZv03DZA5DyZAySxivHJNoXArfgAbHWVpREXfrKpB8iE2nQqDhDLJZxf7semWqwf6Obl8o+sAlVAu3xbxGlhsqXbzh5qqhlIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwoVc7/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwoVc7/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2687C116B1
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755930593;
	bh=YX4mfC1tYI2Bxmx1JWP2XKQOxw1siqfmLI4Xn7OSvHs=;
	h=To:Subject:From:Date:From;
	b=uwoVc7/kHUF/+TeDYWl8KU/nwvApLjMWYdw3maDgzPyDFbhMN+LyBs5zykPf1R08D
	 5h8Zscpvrz2IYe+BD+CnMBzQrZgoINNxnuQeTVaZey/X0ilzF/k6FXvPgDUSFJr1A5
	 UH+P1iuJYZhVuKfwOKiJkpfL7claoRLTTbrFGrMlTQOSsTCmaXsaqzrn+OpVKoEZU+
	 fX3A2xlY1lp2QTzBL43nKdPYMOK95uLrL4G9O6ZU87GPvhvV15u92DHUoYKngtjQno
	 HQI72/FZVlGXqgUxXGqFfG+nlno72sOCKytectjnTvJGBrPgIT5aBfKcr/xalOYID0
	 UCn8Ae0yA4OCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC7CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593059358.19045.5632399670402855817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1eb991834549aaf412d268535dc23eb5c4150dd7ee3d0ac09e099ee34ba3d8
Date: Sat, 23 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755930593
