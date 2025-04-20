Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3923819E975
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745190594; cv=none; b=Ifn4/bJULcH/AcPLYsqm5MeoWd4Ieci3+9mvG3ZUuSlhguYzQPGoIewoGLWvX9VL0VCqH6UAPrtMOLbjmO7erMYGBJCaTN8/PfznEGfhtXmLe/1lHwOiEcqNV3SCdBFQgGLgSX57v9RxHOv6IQ5ussljsrXfAC6nmX82hTXCILY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745190594; c=relaxed/simple;
	bh=xm/gSr5/UoRwEx4NyjyVo7lZnynj0n7bxwNfHpPxFaw=;
	h=To:Subject:From:Message-Id:Date; b=Xwd07lcuSYKxxMxyJ3L0JdC/NV67yeGT6+Q55RHtkqJeVF9zvt0pz/jWtMHo598q8TdErWg8JHrKzgztcospf0v8pbsMIP1y+yx8pubCVsuvceYManYr9NDBk4pYqicOyPAjG3nq25bIoJ0NFTSgSLREHW4w1P0pHRt7svq26nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3NMe9vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3NMe9vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FF8C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745190593;
	bh=xm/gSr5/UoRwEx4NyjyVo7lZnynj0n7bxwNfHpPxFaw=;
	h=To:Subject:From:Date:From;
	b=J3NMe9vxVnOhbP5fBRqD+4Zll9HfGwnZL3keoW+q48nbNIAFDtajps6zsaISjl6hW
	 BdT9SVzC86CaCxaocrZ1qAfbkZqWu2n7VI7mTk2I2JYg20IFHd8j9fO4NMmNzBTubB
	 er4QgdcqgvwaH8S1VgHf/RmwOcmGasgXtByAF5XtJCut7Aeiy4nfL6WhbQAiqqz1wP
	 X3jMbvxjPKPLhZH8iQDjUe3+mWyM1kJZlGxkVZ4gU5X5hBHirgtOJiaBidpEt+5/SE
	 Lu098dbc6rZjk97Y9D6jPNeCpOnJD8YCWMmdXTHUXN/Hlg+3KYI/qoAxxrWxP4SUM/
	 EDqxCqi1q7kKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96457C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174519059358.17148.16685815076398358860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72bd2cabef74dcc23b1c568ce1944c71f5e84059f1e706fc72a0b634e2d3bdd0
Date: Sun, 20 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745190593
