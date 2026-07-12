Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E6038A73C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783896514; cv=none; b=KXJvzphHHz/CsbX8GF2BvXIE+hV7YUDcUNvY9sx9okPUOi7k60xxhjXJD5lW7DRqCeX2pJCVWe9cH5mnXl9yM7g4mEF2AmufsoCX2BwbxlqUcF+WhikfPJZ0q/ZrEj+nSikGNKhE8CS86wRMGBl2nuOkDppESIAsG3N3vLDuZys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783896514; c=relaxed/simple;
	bh=TkCtFXe7b6z4LrJlmu98dq8tBkZNXmBPj6q+Fp3H6/c=;
	h=To:Subject:From:Message-Id:Date; b=blL/BUDBlu8NmRA06Ym3fxD25YRQp3jt2LMYOwB++6vli69eNXT0kvanTIn2fHEVu52aAuQFJLVpbWE9xFAY0utq5UY3NXRV84jrpOVj/6Uc8riXA21jDzz6Ecu3iPdXLt9ByXmYQCi0OS6lQVimLrKrwln6EApUF+I2OlBc5fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGDV0T0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGDV0T0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF69EC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783896513;
	bh=TkCtFXe7b6z4LrJlmu98dq8tBkZNXmBPj6q+Fp3H6/c=;
	h=To:Subject:From:Date:From;
	b=tGDV0T0yzSmq6dxjfDQ2jN5L015x/BOIWzLItsZnMPJCDhwpx0jTdty03zj3DkgUA
	 6qbxIWwdzT6RloDtvi/qteGJtM+GNx+AaNxwYkdH7SQG/6Qb0WiyTVnWbp2UfUJ91C
	 So76HocwtE67MDPmTqjommPmgwevcDyzTDvOR6KCEqAuM/aP6i2gS59GXjCOLBmo62
	 RjUbzwPQsWA3Uo14zFMIUsr5UJ16Q9YTEn/8I3BoUgejnfg4U+3oLzIrLVHqhAVeRR
	 1S++iN836gUptrMR5Hyiknl0HQfmU8Zrb+K3GUEfUJ8O1Ai6KPieK9LyUKcvX5eEHu
	 +GBBjlFCBaAig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB915C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389651368.4197.11623048469334434766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6714a805e3181706fbf5cd6b38f27228d824de0cf1b9c79fb3417e8f537198
Date: Sun, 12 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783896513
