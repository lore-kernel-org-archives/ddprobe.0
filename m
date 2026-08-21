Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F79F38236F
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787292034; cv=none; b=kQLXnSe6DKJ5As7gxYLKvzjV7utV+UZQdrx4K/YLIBLHreog8OXZYRfGoKIEgy+JI9cY+iJOA0s6k42QDGKLtvwlxnAz9OamGWpULybL08yk2j+N/lSVOVOVFion/vsrug8PnTjEfeQRqatEI8NEUl8s0l49sXXisqhnfpeaP3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787292034; c=relaxed/simple;
	bh=ybkUV2dYUaUYErNhfRx3LtITQhpZelasiQC3FkMvN1c=;
	h=To:Subject:From:Message-Id:Date; b=FzbrqNN4ynUTjcwYrNJkRCngdJw+fDb2ycaYrXrrfgWs6gzo6ZrmP8SMiclwjtNRcIY+GcUbMPMddljBTgCq7AWe2OfcNEUSS6Y00LvGkXDXEFLYR0IXWEuh7marnEm+jc/H5Co15CkH5FEL25kyuMeoCt6/8qJ2HfVDFIii1Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sb3fTyc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sb3fTyc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D898FC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787292033;
	bh=ybkUV2dYUaUYErNhfRx3LtITQhpZelasiQC3FkMvN1c=;
	h=To:Subject:From:Date:From;
	b=sb3fTyc/4NFaynIpXiYtdU10D2Va5+P/MS9Ib2LbEXruvmpMJWEAmG4Aas8ZTFr6L
	 iPkfSGHDVU+/PG5w5qFa/n5rfr9Vmu0l4tV0BKdnddjn7RcZL7C1jvox2+JQ3v0hbF
	 4o9XIfxid6jcW6G9zQsANgufGal6xxyjJ7tAw2+L6NIo4yzfZ5FYGvsoftrBgXPelh
	 m5HRqZ8bWHF8vPeImIJLCtoWpEp+XpTvqF43EPhHH0BYAQIP1SnKLx3rujEvYFwfpH
	 fxcYSwycRIpvPepa+UlNnD6VlRoeR9CzjRXM2aUnaoZ6ewhWQ/ksGyF8sNCq64x3ZU
	 lXmt0/QcFtC2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E8FC5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178729203371.23479.7474001509289952195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb73f277e8050c7f2376ab4b71cd86ced11c98fc440ea7ee92a9b0593b2d816
Date: Fri, 21 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787292033
