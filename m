Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5C91DF26B
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 19:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741807135; cv=none; b=Hfj9kUq+iqu7aSGF4DXNZ23XG0D4V/tNHr6umbZYYNAJJWkzICePdIf6QWejPFSS/v8KE5Q//rRx0B2LEWbQr2JEBIiwVdX9NwVDCqYfD3EyT9hS1qjudTld0n7ZrCXsJHObrdM8IEaewtecZ9ZfaHf4Xfrmk6sQiQ1nLTqw8ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741807135; c=relaxed/simple;
	bh=SbEAzfOyjdVTzMCdgYlkIyLYzakFqnfSL1ylz4iNC20=;
	h=To:Subject:From:Message-Id:Date; b=plwbzpfr3vZQvjb7Fkk16YddKEGwwoVSXpaoLlK5/BArDgw8CJ4dIF4dnJGgH6bhHysysMlNQhE90jFbH9ms6tekG/nJ+HeHZlkWmBJ0v1/B2sLpn4uiL0QOvRcR+c5FPdX5fe9tHDe0b8n888IsyiYVe4bGpem52z1noekP8zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7ZxhkWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7ZxhkWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B7AC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 19:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741807133;
	bh=SbEAzfOyjdVTzMCdgYlkIyLYzakFqnfSL1ylz4iNC20=;
	h=To:Subject:From:Date:From;
	b=V7ZxhkWKM4lshl9Ek2t6E8LtPuUPp39nLsPlU1fOpMhguM7uIl7F8YhKGrA8pufAp
	 uG280BwDtUFqyDPio6Neh9v7gxCtzb9trEjfWMIU4V73vSpTXoSQPTOgClIqFArtjm
	 6lLU76+dcv9CbJjwJIZS2ODyo9h0V/e0RQWmb2d56b1x42BLKkXIWR2uDKLdKLQ4D8
	 VGNQ/1CrI87n6iDem4111ov+vBGxC2jSOdHtyoD/9+8xdAstwx6WZVSmLAagJNw3U+
	 tGIY4Mp2SGgqF459bWHE1v1WVuHj8+Hkg4Iqj/Z1+DyK0X3jAWtwpSOxYX37Lvb79z
	 A2AWZyhSKzMIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C258C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 19:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174180713359.32705.3427565917300646118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131864e33281c2a4df73279920fe27869c4d6933c3eeb56900418e31c5e57123
Date: Wed, 12 Mar 2025 19:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741807133
