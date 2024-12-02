Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3581DEFE8
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733172954; cv=none; b=S4m2YRiEtKtrPcnpM1SpQFy60vK56XCSXcufaQBN2SbjL22uvszWKM2MUhc0Klg5pJU+8YqgZHBgZVv+I128Yg6nBJqbo51UcrH8tHZvSrfUkTipfJAOjXUxLM67iajeqLy5ytcfG7rF6ffIZTvqzk3vPrpCLRiGJTYcZr54sJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733172954; c=relaxed/simple;
	bh=A3zpGxMO54uNbwPuxGAkSDswYqXFup7VKwNHOQG9rnk=;
	h=To:Subject:From:Message-Id:Date; b=eINIn/3nH/AZdAQxJ7gBW/pZeV2/WrNia6hSQCxsDrbxCCMttkd15K+BcHI1msawfP7skAdfqBy5KUQvTetCsjwScqW+Nj5LQFk86tMmsg0sc6nuzNGEN5ybPn2UqXFoXDCjLV79jEP3TCQTuEu5x07XWkeEuLA/WwGSBSmOUvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpnCAEUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpnCAEUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EC6C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733172953;
	bh=A3zpGxMO54uNbwPuxGAkSDswYqXFup7VKwNHOQG9rnk=;
	h=To:Subject:From:Date:From;
	b=lpnCAEUUObfv1OVj3+62InS0PS1hbIir4eF5m+ofc7xGJx6IwT7ob5UPHGZ6EwL9Q
	 6VxtFfWb0lsdSIDdnIk90WZrdOhDzRfZ+NSWN2eQNNkcqBGKse52LlHXC4fGbJdkxt
	 PEpnvstLkvkmWClviDs7LyefFtYe61pm4men94H3IMVkMkmSzQ73RUYUJJE/Xe8LMA
	 iLZtK9yqHoJ+iiDIugVtcDQv7XzQWSUDUOmKgNQqsUHN6Qrr6e2Ux8vGF2HHOmmu/R
	 ZyJT+1TsZBPwF7BWA4nXY+d8OMJnYj0f/qtW4zDv/BwaUXHhqlhFd8JSM7mjErzwAT
	 pUwoEEELSJRkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C5E69E93
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173317295358.6068.16366339377023463292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46ffb7e951be917c809ea66b261834ac3c92c6823618ed9bc7f4e441817c23b9
Date: Mon, 02 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733172953
