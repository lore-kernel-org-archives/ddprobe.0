Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F711519905
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788864034; cv=none; b=Q3nmySIMCn4ppLqAkTK2ChqrxytzguyTwVTFBN8cgFAW/BEHOm51ItW4yFZ5w2NIWWZf0TV12PGIpH3duRWZD8G7gtWCvjMCxlv8W3kWK+zjjld89uuASSfgHS9TbFByXmQcxfUS/KvMfXW3NAfPq+RQus5bU91oqA7sOOuE50Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788864034; c=relaxed/simple;
	bh=ppKIMLdpBFno5U5aVjfKtONKphFeSgez5AEIOYPfuTE=;
	h=To:Subject:From:Message-Id:Date; b=YaDYAAfK9S713CnQQ08jTjsjdyFoBdRSDHzxRIA5wB7JH3mgAsToTx9B0uuDze12qp0corznrQNeYr8TxiebzONKjuY3F3vEFJf/Die8rKqL8ehgphKb0URIDaUPlNnpZuRJjgzFvhg/vM3B7ZluN44XZiEP1DeDS/pZFs+D3OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvDhZNZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvDhZNZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE57C2BCFB
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788864033;
	bh=ppKIMLdpBFno5U5aVjfKtONKphFeSgez5AEIOYPfuTE=;
	h=To:Subject:From:Date:From;
	b=LvDhZNZT6gP0bxnpHY8gfwqLKlaMF7IqzqoRBw3GQpall9T7cLTUL6/rIhJmcmfFa
	 emjc8zUA7q+ZoFI05onlnJnF0rxkCdHbWsnTw/OQUdG+OHCAcVAAaxh7drasZIjNMW
	 HTseiB651Lv6nAj6urPnhhnVknjpGkhnTwvNNJP0lbvaOhHzcnhNEEGNX++/gG4vdg
	 sCDXtcHnKLJpgQMAekU5EXddP4oxE5OsjRiWwTdJkg/TlkpJr7uX2OQBBuiMQ+KTI4
	 afnSX9sfCPusYF4xAVfEccUWhG2yjyBNCUBZS/CBFe9gO2NvbHNTWyDxuI76DWJiuh
	 il5U3tzyE+Jzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B947EC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886403374.16805.7962479623256061528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9960e6c8df3daf067c6c5347145a0f27450712361da11d2284f0adbf434cd36
Date: Tue, 08 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788864033
