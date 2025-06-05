Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9F71ACEDC
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749109794; cv=none; b=rZ8cLTw8yWvBEtSiyPAsBzOrGprpFolmkCGxUUOYYRg0/j5huXFNZPUCVsqk8MwnRNezHfLm0bZCX0h0gwCZ/3WMy7iTAjMhdnvoG7X2nWmvnehMMZ3jcS49hg4c6RPZQkpmCfuDZ7mgDyEGn8TvVU6BaBUO5JxphCMPZ//yE98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749109794; c=relaxed/simple;
	bh=+OUaOD8x6qRGxCGi57+dSWms4V/ELS5dnVvRdvwj0K8=;
	h=To:Subject:From:Message-Id:Date; b=M99zpb2xWsc4ui/c4+gMPvKI5Rc1qseLdsAkklDWnKMndLAT23E5Dg+z2eajOGctIdna9wH0loVf/iFS3WaqaIaLHlkOxBxuSarmagh4x8kDeHVrv6GGTn20gWkNlijWzHpxi9ItGm6uEEMlCCLIytvcGH6Yf1o1wiAR9vsMynk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNIGCExi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNIGCExi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73B9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749109793;
	bh=+OUaOD8x6qRGxCGi57+dSWms4V/ELS5dnVvRdvwj0K8=;
	h=To:Subject:From:Date:From;
	b=rNIGCExilQraQ6c27o+oyS7Mw1u0lnsayQpzKsaNpDUIEF9A3af1ICgy1eCXouyjp
	 PrzS3fuN1FBNwNaZnhJHRF4CYrO3Xdu5pRfo+FMYCe0YrjG6pCYwZOXdgdLl2r2oBg
	 3IKs4Xsy/e02cGtIkFE7vFa7Lr6iTnq7JgfKuvsZcmxiF9WO8ZujR2lmB+QsztxvOx
	 CW6jehH3BqXAlCmwwZoQo4KUekFH5Ea5C+TeqYq9ZcGp2mpUIoXE8cDsPX/vpm9rS2
	 aH3FSsDfDB227lsxg/g6T2zfJT4mICxeGAo/L9OMI2dOnoaV3T5X5MN4grmGnSO6SD
	 HiJCb8Mnj2RhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91052C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910979358.8588.9154333976059954268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebfb11f83a7f9da98a54b7710ccee81bf4396522d18097372c0fad32dfe7a85
Date: Thu, 05 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749109793
