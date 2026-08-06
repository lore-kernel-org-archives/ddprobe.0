Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464F63AC0ED
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785982234; cv=none; b=MWRqsgU+07VEPeMelN85Had4LKlC4kEilKcIX6i53JiY/cTSKoxi4rq6JdBUNKPv8YuiVE+NjwsL/PqUQQr4lrrww4Urs+SdQ3IxE6PGlcG/zOYRxS99vbG6G/3Zfef2daXi2vhVTka6rR7qq5b39v3XPzL+UyxNCd2XhlYBu+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785982234; c=relaxed/simple;
	bh=HwkbLE9KBL8PqfLh0Xbn5PzF9ivCMD1Gk1c9NIIklH8=;
	h=To:Subject:From:Message-Id:Date; b=bhkzU98WBimaaGA2Y1cl5JtIDOx4aE0OnWJWa4r0mol2ExPQXCEjIHwcBXnPvThPY6NFMmhwRYrXWeHvJgmKtCdGzD/lZsMvsMX9LpCTcurXDpweC2kPOUQtrQOpROdWLVv2Xz6PveWFrwiXzCpbAQHuaoFvCUmhuBxSPlZch4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mU/yoe/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mU/yoe/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1299C19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785982233;
	bh=HwkbLE9KBL8PqfLh0Xbn5PzF9ivCMD1Gk1c9NIIklH8=;
	h=To:Subject:From:Date:From;
	b=mU/yoe/2LOzCy5DVCibToTwB2bBrJHQv4hrz8B5xwlbrb9XOT9sjgFr/RMeGwBosW
	 uN6G8dY5gLjpTI0JjRy856ffvHQmJwVu95sRr3t5GBvsw3cgsxf7ayqZ3bmpW5rvNW
	 sA92VZGYgb7CYYY7A6H72m8ImPQyXIhClNQoMHFNDtU87EUfG2X8Cfa02prr5YOh6/
	 KNn9m2fyeBNVhovZJ04sPj8EKakKiHJVRNW/hnNY1E/vzRq8k7eAg2LJO3PHQQaCHh
	 kRCu834NMh6JLNW6icpPtQGt6dBGDj+0qy+doxebvUbQ48mgwYQvfFX+zVk0mV60nG
	 xdiLP8qecPkNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE577C55ABA
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598223370.23672.280436412027009382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 485ad03c67942ce428e27c76a65063a2d28b60f122e3493067adbe935e4183eb
Date: Thu, 06 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785982233
