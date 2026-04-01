Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443C95B1EB
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775073334; cv=none; b=XzKMSMQ0qwK/sh8ltpBQ9ANUF0p6r+zMVHo37t/xg/eM/R4yeD7iFj0N0FDbRHjluJeTlx9Sr9NgINgav39xGGyye+RD1edalb9mI1L48S5zC/FSlmmVnY9nrQ8qxnPby2ox+rMSwPiY9TyoEsM7czRd5maOE8/8NKbM2alW9Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775073334; c=relaxed/simple;
	bh=HR7aOBLVDDX8yxeRltfBvMp7FuU2f7/b3iRdyh1pnvs=;
	h=To:Subject:From:Message-Id:Date; b=Myd+FonPbP6W6ZsRcRfziAK9lR7ZJbP2p6d2h+Hp96dmyDUMUQyvh1CowZPAxfwMyAXdRzeGee0ymW5NKoG7IfcYHQJqLqLCzvEmhSN+E1jpFSOSp6uStZ9k0fs5wzFScbNo6sOXzrJcFTFfIbpQ8LN3xRFxOAZXtD0Z2kqOkDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3dRv6St; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3dRv6St"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CB8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775073333;
	bh=HR7aOBLVDDX8yxeRltfBvMp7FuU2f7/b3iRdyh1pnvs=;
	h=To:Subject:From:Date:From;
	b=K3dRv6SttjiL1ZZhJpqO+eKV/EOeNSDUFKcMMQYTbrETlDIRm6MDY5s6nwyNetVBk
	 3JOkzKg7ZDFAiBcq/H+pou5F0ZXRzRBidLdUH+uzJm80ueFY/ILO1MfTurK45ty8pN
	 ihqtmX2vs4Rp9LMMCi5vpu5rJvvoY1+yFCBYcPOWhfnPSblI3MvDQqDzAvZz4UTAUB
	 KYBUa8rc6Cc8QuGQaSsFUoyAoRWRzZ+MpW3rnc1cEh7V/u/YvTQQvC863Xvdddeepk
	 lTygJseXbNdSZIjP27ePkJuS/yoGMe5yaLZ4+FqkZbwFClzXhF+MlOL4Lo+9kLm73e
	 CiCeFkgmV2rLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E8710FCAC9
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507333370.18141.18373846461120409124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ffeb5e727c7fed934c4e16f69afd9b4feaed3f61a0ee98b28e9a8ff6b98fad3
Date: Wed, 01 Apr 2026 19:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775073333
