Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C70517F7
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 04:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738728954; cv=none; b=BmL6olKjfsx25FvpOm5hBx0jSKCaWj3TqbVkfSeWMH/iMWTqjAF07OmahywIf7OlJjzvY5OTsXnEDbj1tkzqcbbwnaJhCOpk+ZGS9seUt9Cq4qeRkilKQyf8zwGFYjufCPCg+RgiUAFpU56j8hiwQJQ0EkvCh9Lc0uFNppGzvLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738728954; c=relaxed/simple;
	bh=KmvHGi1B7q3eUdZgoNw32O8MIh9kDd60/0Vqzz9QkRM=;
	h=To:Subject:From:Message-Id:Date; b=o6yhaCMQQSDOyG8jqgZLiskcgzEZ46IrHB056sumUr8Dgf8T+BD6XvjckQn3FQZ5sNLvzaqp5CQURXSxJnQXR5z4FvJARYYc0VjDScKtmKgtjB0MpvPHOqCphNldSAdHWaKS4Vcj+e0164CcYHFjT0cFBtpxBNx7DdBno3IDPjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BX8xuF5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BX8xuF5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC77C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738728953;
	bh=KmvHGi1B7q3eUdZgoNw32O8MIh9kDd60/0Vqzz9QkRM=;
	h=To:Subject:From:Date:From;
	b=BX8xuF5aXtVsFBkhHc1O46BnXqhrWFxO66neV/l57hC2yoMxBfP4uSfP8EXAHJBw/
	 pAsBVoAdfozWGsQO0o0E73iQcJ9MaskTODcIk1y347FRIKgw3U2NcN1aCVD0L1pUgK
	 +UTPqHQivB3xS9sDGpdyJblr4cViN+r6bRd2nkZrNcDtogAWqZ2OKMsla43DfloyDM
	 Yv0gjLZD+PthtprIBP3WR6MJnKW1Mshy7WE6iwBaE9o+gVGtAa7wANiU/h519Uh589
	 xSDz2ge5UY3Dua4FMRQPOnCLV7IvPtvpvIPt3ImMc9zbuceYz4454YXfc1YkIv68u4
	 XCR6t9cv6u++w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B329DC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173872895372.20366.5376684494889497647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8acfd1e3bbb840d8daddea5058c1ba9b16a3ffa7b315f2a73cf0e642efc11afa
Date: Wed, 05 Feb 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738728953
