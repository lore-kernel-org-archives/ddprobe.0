Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407132FD69A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769618634; cv=none; b=WNp8Xm/QUtk8LyLe1PDGvXoysg3dkXl09z9yVfxBKm7nMYM2lS/n99U+zDUfDssh4aX3gy0Lez9YkD8bKk0BmZmMRMJkSW3Ax7cMZb7CTp+aSRWMTuzkIjXLv5MLMP3R2dJ50r4qAXvxzNAaMQ9cngpyoC53ZepeUgadCCUjVJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769618634; c=relaxed/simple;
	bh=7bLFSDYatRpwlEYOdz8z68/5OUvVoOXRIgHCNm/uBSg=;
	h=To:Subject:From:Message-Id:Date; b=bOc/Murs4IVz6zG3yfwVEldjaSbl5bTzeTgkiRAcZxBxOxVVel35Wae9xJTDgjwxYeXIlfcSrR29R7bRjRWxVrwmly+ERTX6K+KV3asukGEnLAK1+vCIrb6RIlojgMYGQHGlyLgbhdMKGP9pDIwMPzAp3Hraobvc9Kz1L7SA+kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBeZhO1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBeZhO1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE119C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769618633;
	bh=7bLFSDYatRpwlEYOdz8z68/5OUvVoOXRIgHCNm/uBSg=;
	h=To:Subject:From:Date:From;
	b=VBeZhO1Z7HF3If7O1c1AaUAevD21lr/PqE9a63AR30Ves+nuig3Hnmt8nJcU8TAjW
	 QTocKePLp3fuhpdx3pAsfN0FspmCWHazyPpaLPhxt9AX/FWxhtPx2+uatUkrHugNvb
	 2DfxltuVeAU7wg8bcB7GKwuquw4dx3CwY9UrsBvSC/dfXkHFYTr2tDzhMdnUjrLC3F
	 S5l7MgZVaSBTz3o49bbe4/PrDDUXj2m9ky0l5eCOAiIY5kWqbD1u4jx6Y7x6klLC6W
	 HZ6N5f+t/Cwkle9klaHQKAbxskFXuOhM43anOC7Z+Ci7VpxUqbsbgkQwR3rESZDy91
	 0R34M0vovU/2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD04D3F091
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961863375.19791.2022538811895621242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5024acceb95ba4e6a6444e32cb3e00a80fc2032a8833bf0e34399cd57b3ccb5
Date: Wed, 28 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769618633
