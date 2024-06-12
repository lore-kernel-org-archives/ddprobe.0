Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677FF10A0E
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 04:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718168303; cv=none; b=cKgSr0jE+JRUlfFgD8wdrWuvlAMG79QchOqusyhfLY3wTQcUSI+HIyoW0A9CTnoC6S0+IEYqBrifhTRQd3blYitltpKSBc2tPrvtR9zY+kiKBel0Jp6qbSrUcO5zdS7lxAKd961ak/ubsv2t+t61yUKvNOG42PiHxgOZy1d09K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718168303; c=relaxed/simple;
	bh=yxHWKifvD35EMDFYpeRvZhas35DWwbwcWnd7cLqGU/c=;
	h=To:Subject:From:Message-Id:Date; b=SuUzDOKO9g3+Wo5nSnmG+czDCNdTVp13zCSS4IkqZt+XwRZ/mWL65+vd86iYvvyTHTId8fDqJOt8YOx85ag/IAN7LudQoJvpY/BE9nRUQyRhc4AyBb5bIB4f/kxJY/Yhy4/1oqK3nBsHK+Dq0gpFumqa89QH6Ieyt7QRKexrJiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6EKk4eR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6EKk4eR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C7EC32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 04:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718168302;
	bh=yxHWKifvD35EMDFYpeRvZhas35DWwbwcWnd7cLqGU/c=;
	h=To:Subject:From:Date:From;
	b=p6EKk4eRsQdsmxB1P7MYW8f6xOhKqQqNSaTOR2FMLGzhRmvKMqY9no4HULSlUfxKU
	 1RFFHSW29vTH0f8zyqXuf6yUJcwNvaGqrMmvizqTSY9OjX2emt4Ftjf3z1DCdalmrD
	 9s957KAdxk5YH12zdHcmorkf340vsulyltJyrAt6ukObdfFtVwHjZn2s1TazbL5gU/
	 sorRHGRdAZBccUGapZk8fiEmmkQogis2yVJO1qkA3HH0HTlg3Fxr6n4nMsrPInxBAy
	 iXzf8YKqmz0P415MDWfWmpW1G7OHOuoML52tlDgBkk3Dh/3jkGp8PDIJ8+PBqjpze9
	 gJfeHleqoU0dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEB89C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 04:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171816830280.5669.6209079978148445048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07323eebdc2c55d0c704329a574ccb11df2f76b9cdbf5051fb2912ecb58d501b
Date: Wed, 12 Jun 2024 04:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718168302
