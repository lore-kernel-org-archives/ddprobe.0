Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4111734D384
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785474034; cv=none; b=azAjtnMU0TL1WIZdQt8yvy4OE5rXQeaI9GMLpb/TrQDldrZERrpgOl/vXp7Oix+Trc3tHYJca+FmTr3s5+i9vTiJMQ42qzaoCmwB0/jDqwSFbvtU8HmsS/HzC2/vK2GHEKVajvm5OFhZIFAD3TlU8ntwWovGdF7IKft7lG5+IZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785474034; c=relaxed/simple;
	bh=GDh7dyQoCjGO04xkpSS0x5Tf+ZmBqSjOThLKf9z+wBQ=;
	h=To:Subject:From:Message-Id:Date; b=hQIY8iYAGkAvA385zeLtpTPGfAAqGrDVw1hS/05U5hLQa1y1fYry3QhRs2kRrUutsq7Hp3qh/bC37MRrkhIaXyEE3h9aM6EwbWCFUs5toHr23uD5yhYq/z6KDaw/tknMI81rqhkcgB5ijzCP8UohTgJ6OKzvrtofjICVqA5PoQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsIQnbYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsIQnbYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73D2C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785474033;
	bh=GDh7dyQoCjGO04xkpSS0x5Tf+ZmBqSjOThLKf9z+wBQ=;
	h=To:Subject:From:Date:From;
	b=HsIQnbYGma0oVKK4cqqCjDlytpY3JwOxz2dSSEFNpeArL6D8Sax2wJPPAQRBb15dr
	 DhyMRxfPbgdrLrfbaJBdppEicVKSXcd48Yu/wr2KitrY58LXmgAnnEKd7DgyTL+qlk
	 BhUx8T0xWX1PfZjHDUgXNns3EwxtDDCC/IIT90V2V0O95s8GvFG9UTmnJ4V/Q9kvhf
	 whIBoG3mHlHLpx3K28Tjaz9dc2T4QTNPnr8o8gL5NIBXIljQuyYNRBietP2nmS0xzS
	 hKUWhdkK0Sw1rpK5FBzqv5DLHZ9UE3UNoc6qh729OrgWc9H3wM1h3N8qoJS6y3eZTW
	 B9xv/s4KZFgUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD51CC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178547403370.2838.17478894830533446076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d0d13d5c54c98a92a1797747ad46d33a1fd89e4f8625afec045c7db8d9e171
Date: Fri, 31 Jul 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785474033
