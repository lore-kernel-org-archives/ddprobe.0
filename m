Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C362DC333
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770026034; cv=none; b=bOxrxwmRIg7C+WKc7bv4U01xwY/x0iUdTC4BXH0mDZTIJk55Uv3gHJn4ewo3NSkcy+7YqirDOpt3H5pRNC3pb3UxQIPHDA9+YXXB9WnXoq5grpLjqSOQhW2ygBsdgvRQjIm6Uh6MDz9xHIcMzmhSSXDe9r/Z8QKb01Kfsig5w4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770026034; c=relaxed/simple;
	bh=bIemtUE54rM1UvHHU8nwjt0PtKxdayluUrouSFgGMmU=;
	h=To:Subject:From:Message-Id:Date; b=N6zNQgwfmlwKYXhWwMaKdXU1MWHHXfSPHzJ59ATNp6BE8wkP1I6wXGXqjQFBl7P6AEDPiD7VsDfi9J3YAX0HnKTDlhlgri+DFVt1pidHNdpJW9vB3slXQu666Xd9lEppoNvdW2xbKWGAe1ulkGrIRShpCWhgfu8dDhNfx5YIT80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4xwSf6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4xwSf6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71E0C116D0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770026033;
	bh=bIemtUE54rM1UvHHU8nwjt0PtKxdayluUrouSFgGMmU=;
	h=To:Subject:From:Date:From;
	b=m4xwSf6wt42ftzkdNjGs4zQr/Gqe11tZ7Ec3gt4dk9VvztBpAVLgL7EhETgzNzm4C
	 hacYetv8WdbQrGY5P6YQWq0VR6hnGiZYCnfj1Ugvi4TulRt2Lt+L5dd5fHDhhYv4ET
	 cdGeXLTIs/vuxaXCXStqoTMgxZmJo3QZLV8gWLbdBYRY9oCvXdktdugaByFUqbyPPN
	 FYA2dZx20N0o3iO/I8SlyRLisDq3Z/v58HvE6ghiXwsRNFUvLu3ZUzEmaGh+cDt57/
	 WODp5r6rJv+qx7t5K2+zqidE2fGvK12sYasAvqVw7KTCYzf9FGRh6XxnhxTU6BMokw
	 aAjO8Q5LLCLOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2FE7314A
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002603359.25868.6302501758346478997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a19788c50bad2c02408968c9fb90057a20a660f16b8002c9add109c62df43b9
Date: Mon, 02 Feb 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770026033
