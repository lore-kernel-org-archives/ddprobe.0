Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3121342A97
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744858794; cv=none; b=FQUQO+9a9cs8LdT4XeJkQfPzUiWESuPkm2o7KOPK5bWd+fjz0VeUnjrZyQ06N1WxhwnzCW61EL50B0f5m597Z8dM04P6s3EBjZ7+p7fSsRVkJWZxbWPQKZrDBmjQQJlvgr7aMibLC8HlNCtX3OshjZ0JsRTRPj+292V1gBMwdrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744858794; c=relaxed/simple;
	bh=Gm9SRjojU0a8H6+FxMoqu3otQLkn+kXS205r2DWDeAc=;
	h=To:Subject:From:Message-Id:Date; b=j+bA4HALiTKO8DB76ZnwhkZtvcpYRdCfHC2HC4/3LrUQ6/jJTc2r8CSdUTiuVjX/jDaQC9rA/EZbrlJD2akfkjFN9+P5EQA3lJwUlYKKZ+A6f0mjOHieK45ewAsr2yMhdbhizSDoGd2kKtYgg/IAhJuRo/VMXZTjllGB6l/rk4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0mTnPhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0mTnPhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B2FC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744858793;
	bh=Gm9SRjojU0a8H6+FxMoqu3otQLkn+kXS205r2DWDeAc=;
	h=To:Subject:From:Date:From;
	b=n0mTnPhnJgOBC9Qf/gbayZvkWh5WY5YZyIKDE6zlHO6xrK98aJ8aVWZ/md1rb1QqL
	 fht2Xt97a68YmmGZvIu9KP1uowsuGIkKgGT33Fn5ulvYaOLAMTiK8yU3rzxPbTaBEI
	 4GuzBPGLUXHkSlekc63iDKRTFlzUkWxBMRw1nJcZop5VBiMAaDISqifFt2SotTRr/6
	 iXZv1RVAz7+gCyom6PE1Na7NUEvJQ6saaQL0QwhT1jHIvWQqXdrhB1F3LaujPoBxRt
	 S1jjdjO5Tl3oewwizmYd4UIdtJI9Md29fBOpaLF7HylvTOlXuhHw6J0jH1DstWLbU+
	 x+iLM01yohtWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFAC369BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174485879357.29885.15035988018210416516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d050c7bd7bf8d625d0ef4cbf90f323ded822e06f59109a80554ff6f9fcb63cc
Date: Thu, 17 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744858793
