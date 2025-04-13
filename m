Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B32143169
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744544995; cv=none; b=ISnNKrjoP8k0seDF9ysr7td4N+ab4RX3hAITz1sFexNE1IsDnN5V+4BN2m5/CYmaU61x2fmpz4S3M8oINpojEXZ9/dcVDdHukI1pYtfe7yP7StutseRcHCphoXve8ZL0sEKlnjTX4GvapGn5aw1MOr7TgfUfVWrnPL2N94ILG0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744544995; c=relaxed/simple;
	bh=t4gOb3cP2lpUjz1DVR2LjB7UD3/1tcTPHZslxR754Cs=;
	h=To:Subject:From:Message-Id:Date; b=FJLOL6CoFdQOoiSGmShrQFcnv65Ms+at9vuOWMbNYjdzxdIW+UI99ogKgeZWPcQOy9e3kHiOeuhqwCXkFt+bKjVZFWi8y0TXouGg55wrClrAVNWkiuBYy5nsOUzialzgIGdUekRoFsltVVzR/hzRMY8Erz6uKLivIva9uOsChHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoWqSv4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoWqSv4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C066BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744544993;
	bh=t4gOb3cP2lpUjz1DVR2LjB7UD3/1tcTPHZslxR754Cs=;
	h=To:Subject:From:Date:From;
	b=WoWqSv4gRjIkuPq84va5Im8oPLhJj49yxBwWHF5Oo9YfHYuLUSXxBePfheIXJM0hv
	 5EsnMVQzjA8onx5C5ByK+tgt2ITmH3SdqDclTtJqryFru3L/fG/hQJXABYwdRt/HPX
	 B1Y4n6S5IKwaIG0lhCkr47FrK1r5H4nZQFzvELwg1ilVHKm5Aa8WtoyElOGuFrtnwB
	 C3N0dYa2ayvjHhHm+YLwW2O9isNMGurkjSPEX9njiv55mGqVQ0XKWGCGsBwgrdZEXQ
	 y8qEDm7w2Put6bqSgC4r+0fT9Vn9krD6qS5lf37U1C7M9ifgj5F/jb9O366bJiLMwf
	 5PVRg3/BknPqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB56C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454499369.2193.17527978032494594724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee44e50dde47d2a9625312a6f9ea2bc4b92f8021faa047d255aeb17735a3b3f4
Date: Sun, 13 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744544993
