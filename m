Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630FF10F9
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715910143; cv=none; b=B61EBnlPCTK1pDgYX2cJBz/GSxK9hqt6e/l94J2erVWkdc8TiOinEm0/jfJKz286h9jpP73uqEVel9bycCaFp9DegkfIDJoiNMLHlL8/FE8NZeOd+hKpphAbvUXFIUoCrwAzHENRdueR59ve5jG6gkL5cru7VkPeefyZiuOFlO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715910143; c=relaxed/simple;
	bh=KRjCYkTLTkThEJpJESuzDUKl7qxl/7jp/Qz2VkMBGf8=;
	h=To:Subject:From:Message-Id:Date; b=c4W0VW6ZXwQepsDI20rDPSOdplenkAOFwZKfxN7A0n8sPzZCz/VDSPDCN+LXXCZIxSP7L8K4oFSw4wKLnN0bERWCd7bUH5kTWFX2uByB3nkPkBujg3me8vQS8+n7LBcqmBsRaIZ/gzQEvx0nttAMVVn50RzcmxgdAEVcE7uGYBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U60wCbFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U60wCbFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FDCC113CC
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715910142;
	bh=KRjCYkTLTkThEJpJESuzDUKl7qxl/7jp/Qz2VkMBGf8=;
	h=To:Subject:From:Date:From;
	b=U60wCbFh45xgsExw/HZShD51DxhyPjBWF+7foPfNCQId4tiATMaN19kJehblMKwmz
	 7rO36cUAjFWH+h/HzTB3laD/OklTS+L2vlcdax+/6yMplcSuOii0iiBany/aWbIkuU
	 egEbqB7YJx1yT4cS/0yakMMa50g274BmQy5KqKDmhfbMCeImGBsZY9LjUDLHCTQ0Zi
	 iMjBSvgpYGxBBLVe2ZavHVAtDnzmvOpP7wHYBsNC0yyod+d7FNQnsxZ20O5SWHL83S
	 3eA5oLr7iqGSJhKv21n5XJEcAgYLxXxq7+22CzvzA3J75B3iBLfVG+nkE3oHez85km
	 Wnkpu3BwKz/3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0834C25B74
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171591014276.20276.6723708784640438247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b04aea8a8adb732f9bad706c0b49177006ba1c346c811df1827cafbd6d014b4
Date: Fri, 17 May 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715910142
