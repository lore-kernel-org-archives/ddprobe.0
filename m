Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFAE42048
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779738754; cv=none; b=g78RFs9RBs/AqbopgH9/rtltcn/Sxu29F0FfD8Qk8iBdldBNzyPP2yRF3jbS6zJ6y+tcbzc3KKvVEeBt5AHBu/jtQ7bIQredqFYNAYk9R2WO4+kSozD2gI4kFAYFgvasFU0UwnenHo7f+t4hINdKMOV9lOD7b9qnf8VCV5BsJDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779738754; c=relaxed/simple;
	bh=G/uSexl23XmZTTkv4mSA3RpiqLijRkQVEE0IM6iqJ+A=;
	h=To:Subject:From:Message-Id:Date; b=uTlED6Q61kraF5TF5ItiqoYpc1zd0yEwOSH5GDcv0kmm8R79wUzrDoCJI1MsvyHW+RHyH6XQj6BtgZ4bkfP01d/2EekDlc0zUuNjfRSxZauGczlOTUtVsASWKdRMT/QVH2oaEz9FT+C/xaZ613fd03+UkWIbbQzCs4B5GLSSfAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5h5Y8cS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5h5Y8cS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B37C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779738753;
	bh=G/uSexl23XmZTTkv4mSA3RpiqLijRkQVEE0IM6iqJ+A=;
	h=To:Subject:From:Date:From;
	b=M5h5Y8cSMnnHldlZ3098y/fhjdhHfbkZaG43HNgBC/8RBXNBPHlAGdLV2cES5/cYm
	 6KYds96aVqn/ISB4xETZu6GdY5b2j6NGtQHDsjK1xus6kVAvHtvt9NpgVBTvduSGhK
	 kdnrsxOHIHy36FTzH4bO1x3CbV8u0t9WpqARMKuEqYhk8nU88itpdDSPTMq9qxuJBg
	 y1jCJOYlHsINXr7GQ5D7nvXq7FG6YRx7xI2iKj1EzYBQh5a6rFWFO7xo3hWDP1240a
	 Qz92PYCDAIN3TA7k4fvyDrDJvtnxD+iu9aRM9K5vMQ9jRDW6DXOe9fX9x0G2HBHvZn
	 5kb8CqHIT5pWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEB2CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 19:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973875368.6255.10700125743570935087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c03cc3684c6706f4b083ac5b9b241f5b6a65fb7935af5242efb37df2a25c0b2
Date: Mon, 25 May 2026 19:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779738753
