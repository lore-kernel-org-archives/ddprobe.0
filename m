Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088223093C3
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773893694; cv=none; b=SXtwxWgooqf60O0PxJLcIBFWJJzM8gVhcaMaSvQV1j3EHOltx0wZ+4Kye6iKvqgITIoZU7hrg7aRsFWhRqU2KQNtAqgYvAozc0VzTw0pc8Q/sReRd2Zk9paaXW2Jm0saCvzIBtH/swqgEU7yade3H1HohyJD62qlVfSxL0k1HPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773893694; c=relaxed/simple;
	bh=WfJb7MCP9X5Tuu3wrPyyIoYj/ON+DWdwo4nuoPVnzVc=;
	h=To:Subject:From:Message-Id:Date; b=EIQgVTu6ivbnXcEzSmr64cwSPMYEnWYUDY5ivndmI3uyvKnEtZeq1v8BIcXVzXBjJseCJW4uggwSuLYIJyPaOpUcyJgdncnLuwyrWVAlrfaluyOjGkyDgePMMoJi1GiWru5NN0Xz9zuJHC50eUWBqWiXh5Bzgk0rTolffXRR068=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrK+RVcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrK+RVcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30BDC19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773893693;
	bh=WfJb7MCP9X5Tuu3wrPyyIoYj/ON+DWdwo4nuoPVnzVc=;
	h=To:Subject:From:Date:From;
	b=QrK+RVcT5mczliStsah0JJkMENXu8Mg58rOYmapfkivG579fY6PHdgFyM3ylJOAjB
	 3U5V5xcmNMd2paN55ss6CVnqV1dgNr9Oy5daI0hZcTPpZwsExY9+41piC6OF7VzIEN
	 WhB98jqOxKci6vmtn2DmHODjLbCize1vLcXjrQkebN0ZVInyfJHAdVkpIgUG+KTpn6
	 xVk0hPF4B2LjSXHIEf+lEQWMfuv14O6MpBxuwOcxNM31GRWvUT+0cersmsumfDunHf
	 qKJO118EnQdWkRnn2mQdk9HpPImHxuPc0eTf3wDN+0QFQ9Zd8tQGDLa1OjXzxGIwPA
	 tc367jwlCPRxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FC31088E73
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389369359.9779.15916916399181786459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a5206af194adcf7891831e104ced9dd9dcb715f8cae2d74d90e8191856aa290
Date: Thu, 19 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773893693
