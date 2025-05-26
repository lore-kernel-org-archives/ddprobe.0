Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337331F4E4F
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748257794; cv=none; b=LLP4CFco9aLHUOjwyVXM73owsm/PDffaX4aIAJF/uW7l7UMCytFH8cNQqZswTBy39yIT7ou2W3FACf9TchoNEVRXjx+aLCLRrsGT9hzDb9vYZx8eizCHFqkbCe8gddwnCB2ZMjYZdA1VNwFVYXpxBoLEHk1pTCB0l4HrrDjquSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748257794; c=relaxed/simple;
	bh=drEVlgbLa4fKUc13fdkAL1Y6GaIkaEt7UMOoy3h4Axw=;
	h=To:Subject:From:Message-Id:Date; b=nTCyBeGzjxG1effRuuQd/9J85wHgyByYcZXqhdIt8gJNK3mBErmfQv7ZaC0SP3u2zOEooEkQOfnexlV0r28TNWXwV87l78tpjvqFw30fimLhgKx6JYvlSSx6BCuH+vOMd7R3Xs3C/InXISAVxNl2n+iuVTvJfMrmW8wYToy5qMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHFx6HTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHFx6HTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF35C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748257793;
	bh=drEVlgbLa4fKUc13fdkAL1Y6GaIkaEt7UMOoy3h4Axw=;
	h=To:Subject:From:Date:From;
	b=VHFx6HTAmdFsqvnFryEPScPZ+IrKNzsfePNczvIDVjfMh6NJm1/DN2HxHgtakFEB4
	 dBrSQvqOM4MVJQJN/1+N5GhZW0r76br+DmWU6hqXIFEsIxPxZP1UqUeN/rZ9grSK5w
	 Qs4OQSQOMfHWSDYEzT8rJxzI966RUXdUupX/mYDrqncXwsCEg4ckp0Y3EbZoh/YK0/
	 LGDTnTTpBO60YAS73Jl6in6OEHiz7ppreZvy/vih/j427XxZ7ex04/3c3QBCXWv4aO
	 VfwbdQWBESL3NbKkUvsMFETZ2FvS2h6xqF5+Z4kEpVX7KoLiTOlUoa7efYTJMesAFX
	 Se9+/h5RoQfNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9038EC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825779358.13691.2280341647284885108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0b88601a0240bc8140601367875802d63bb5ef72567f9efd6ea82ebb6224cb
Date: Mon, 26 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748257793
