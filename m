Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AA920D4FC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791409834; cv=none; b=H3eTGb69+kIHYAgXizzN5oATir5J3uVNwHRmCMyTbPVQoLlznxPMdZ1qkX9mbGHY+C0IGpLHYGDLXpi11H+puv6whDscNyM+JoSXGab9EbaQetE3WsNU+Md0YC6S9hxKZoY4nkFCjtTds9X82GRwg+K6QLTTrA76NJHEl1fSB0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791409834; c=relaxed/simple;
	bh=8dYZnQcC80WKdGAWT2YmeMmdeIBoFj5CIuEtjHAhhZU=;
	h=To:Subject:From:Message-Id:Date; b=H3I233fA/brH3E5FqBQm4kZXe/T/iI4p0ogjcJhsyW4nefuCSJk1pAOJTA//wre0r19ATdWEB1sW62JOgbw7nddwHFLmWJKAEThW4a3x9cbyGGePEaeE6MS4jN9Fo2ubLMAPG0zK+gxvUryDaKg0EUhQisi9jy6OgU1d+EIMLjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBkctX09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBkctX09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E30C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791409833;
	bh=8dYZnQcC80WKdGAWT2YmeMmdeIBoFj5CIuEtjHAhhZU=;
	h=To:Subject:From:Date:From;
	b=CBkctX09jE4VTkekzK04O4n6YajrOlhe91MvrfMxRb0D384JC+ZR0RoGoPTvYPDP9
	 eqi8KJfWOhKohgS/iO5r1oCTdii6YXEQO6m71tGZTyaMRcLJj/PmcPQwMm3IrGp4Br
	 x15n97nPDa5QbELCLVA57e7lOLcHfCy9KBqPvn6wc+XGowt5L8U1yfwBY2oRXhz4ug
	 YFg8UA5bUL/VDM+FAgQvxflYydShd08c6YNpzRFqdY7vnpe1yw04NoRAR/SgjcD9Ut
	 APYJ4rTg5Px0Ky0//n7XgrynkRW+AnjxJRfW37GyRY14E4xZk6+pCS0NH0H8nGeENq
	 HJyfuwyFoqXNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B84CA6004
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140983369.17662.212997385963982250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9489e76b0a6bf25d9a301a1db05b52f63d6eb414683c1a4f5231589d5c4f6f68
Date: Wed, 07 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791409833
