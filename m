Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140094A23
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756380594; cv=none; b=b4HKfjBsU/Xcr+DAHKKLmFBIgX3vT+WuwdodlVDjF+QlRGj96PVCC9rJAzV2N8ozyUm5W7rHDG5Ptk1Apjdze+PTGoo3MyV8fQktIDdXRqi+1wcWqt3b96vQCUPno8sZbX1P72HwqVPy0qMEZ1EnmIBIFIWv/N8f0gpHGITA1T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756380594; c=relaxed/simple;
	bh=cs0AyaNF45BE742Q1hqyJN+2yV+HYyIdNdae8duLVZA=;
	h=To:Subject:From:Message-Id:Date; b=B9JJ4FpdYhoreqMc2bMlAI13CHhCDtUHs5i+v/3CULc/Tc+D5vz2YDzhZFILvkE9RKLib7EJ8gAE09zaP2044F3+JdVnapl64x4Q0CD3DmbYSaNl6U3Gpf6yQa5F6UZfV1mkNypOj8eD2EhkNUbpHWzwNbwWUq5UY2JsYlOksXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfbR30o7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfbR30o7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A156FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756380593;
	bh=cs0AyaNF45BE742Q1hqyJN+2yV+HYyIdNdae8duLVZA=;
	h=To:Subject:From:Date:From;
	b=MfbR30o7l3I1pZHZveNbpLntNznaPN7O6Dni4U7fUTO69jn8Oyu6lr2l4AQx/OexG
	 1CSAjeJGKOU6kJeuJ+ZgqDxyAGdrEiZXy6q+tLVsY2jxTuEO1bIHVG0M/H2Jd1Gbdd
	 kPBElDhninfVU09/znnMmy7gGoIuDnmRyJBTUX+XNhDnG0xG6s7kJ1MtPh1poTW6xT
	 gkfidhA8mBARmpobhNFFTtUMQynKJxiYd7gF/SSUAoHEJrMWUFCLsVVuekH7SNLKdr
	 dkrB8S8MrFfmQ15d/RTrQJCUNZ0VIwkU38xZbCoGtin0k6tiu5A4hgP1SRyH3J7zPr
	 k148kP3XZalvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF3CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638059358.26205.18002097649639997634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41e06819b1a0a3780e77a96b15c123fcc18fa3becd3835b552f10c0ebc2a851
Date: Thu, 28 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756380593
