Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247AE1DB52A
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732704954; cv=none; b=SdPNWbk2TZ2cYecHbaHIurs4fic4b8JKP8eXSGCEnwEWMzV3y+d/uZau9SNL6x4pqXZyQgTMyJDRsyg3jrTHOpm+tzc9iuwJ54JYTdGrkz0TzuVWJVYXwnfTcnBieczO2KPgtF3RT5Dig9kcPe3PbZYz++zYr+uhQMlaWP5bvXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732704954; c=relaxed/simple;
	bh=YpucUk1sw2f/NflD66s6Pq4lX/pTM3OiJQ3DEakfC70=;
	h=To:Subject:From:Message-Id:Date; b=rhxcMioI/QD887JSDp9M5zFnjZbs0cTGFbjqnmYwyuuawxb9E4OccS87ndl6aaeggrG0yw/O8ZOU366mTx9VbwnLvY4YIw7ALxGj/a23dDHnwpXaC0X+nyfvdaaHQeex3iSEoYqK2+HYmAd24jQNwfMzy4yieRIgwxUqvLAacgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E40/82vH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E40/82vH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58CDC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732704953;
	bh=YpucUk1sw2f/NflD66s6Pq4lX/pTM3OiJQ3DEakfC70=;
	h=To:Subject:From:Date:From;
	b=E40/82vH6woPzoW32vCtfwHRkT9Iwye1emEIhL8ZXK/7m/GbK3By+zPp4TXuWWCqt
	 VXdcr+X9I/qWUk/YsSzy5nKdKZGuwX8/PfQ9AXJUc/PF/nx2dJmWZqA0kA63/5aO2U
	 Sh9hlqC8+3mr72lzAJoOId8pZw6P5DrswPd0dnq2jwhEplcNh9+e+SQ4Vl8rtJ02Qr
	 tRuQCzoswSJGgftvSm0L65iWZC5qeSIcLfZTsN979QqbzGej2sjkK6KTJKpC+y0o4f
	 PMRBCiiL7QShDM8IbU3Zn/zY64z9QGuuhBzWSv3EpCLrox1+VxvLhdiDxA3jR/rN9y
	 peIPNsA3MRf1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972A7D609D2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173270495361.25616.17946265550784530829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d21e46a74c589b9b87568eaba5dd25bad9dd40ca00bef28b224c13c32843ea1
Date: Wed, 27 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732704953
