Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE3321CFF4
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754593794; cv=none; b=rpHUoUCYd/23/oMBcfhR3/vBT7tw/nr/f9TkxD7QDzWPLyeXkPvOJqwlv7iRbaeJcoVE17gp4Uf2Kl6m5tqwaV9fw1RShSWtHbIxqkgNHcKCtydllcZaoGBFJggbOe7i8e6MkeDuAPHPdg3NrCtphAwmqvQSh2RgVABT6Obi6h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754593794; c=relaxed/simple;
	bh=2Od/Fi6X/lpE5jptrZuFEtjI8Qk0qCgcHhnqEcMj6Kc=;
	h=To:Subject:From:Message-Id:Date; b=rDI7zDX8j+QwrJc/dNfx+hXxcUyehEfCcsa/oBnHevd22zE0dN/ha4TXeiD5QDHGxsfVgMtqKT3pUu4XBW3Gkwyqbul1KqCCuVEhut2w4BPKkvIagKV2EHIm3ARSD8ItuI1loz//pEQoSQ8GFNPV+DAeFTxBUtrJ7LgviorpuiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVjXZp16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVjXZp16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FC4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754593793;
	bh=2Od/Fi6X/lpE5jptrZuFEtjI8Qk0qCgcHhnqEcMj6Kc=;
	h=To:Subject:From:Date:From;
	b=NVjXZp16Uz15j4vCBiW9R7TZ7sUC9cM6wL4U3aDk2DvNFxzBFB4Efu+5XV0eDfLB2
	 Ll9exgPUWUrOteKa7IjFQjYjI3pO1SABR9HI+hAlMg00cl3y84WmeU6UeZZmqzPsCK
	 iVVZAeafxQL0SrwaAvSEbmdz5FKszayQ13a6Mu8If68wD9uyMLBf9THeTo7YYQWcsW
	 TO9Tkm0Nxrhb7Eb4czW++iXrGZ0YqKZEwOzfHPlqnisBEbR4O4GgEvs/Wthh7oFJ22
	 CieCKsIxFoinORXjtQoZVrFlm8iS7wDIq2jTMjgmKC44jrOD5CRAjK6Q4Nlsplgl8x
	 k6odHrK5ij/Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB4C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459379358.21387.2393170989786257626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e81891fde9464ead5ec55324125bc88486a4d17f93cfb01a22a8e773426c3b
Date: Thu, 07 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754593793
