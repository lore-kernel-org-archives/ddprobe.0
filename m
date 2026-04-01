Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09602F5337
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775081733; cv=none; b=FQxJRfiCM2PavuHc8ZSOqpNeZClXfFE86FObJln2KydgjQU/oWi8FaqjT67PvIJoXF7IeeC964XIihDITeQSsc8rlN59AZDjPY6enR2J1C+0PiHbwzC97AnvIkOU1gUTkQhAMSvDdEhbnfkvR8ZJTEJCBvyS5GN5wAMqBTL6FOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775081733; c=relaxed/simple;
	bh=jiFLUDBwvEaUNhAL283qFjacZinkuJP6co7/MHLH6oU=;
	h=To:Subject:From:Message-Id:Date; b=daiKRQABk6YY7Y1J8aHtLOKWaKbHoCBbmmTjvDNUw1n34e4ZmqfEYDL2dU3x3yormy1L78tD11c2EWDAJpnBnJx5ElkcO93dDJ11PtPeZlm1wDONmlc5g4IT44S65U6olKqFL5dz2eqB/NHy7Ls55ZfPZdk/t/Jb1sox95e36RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFnvoQ4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFnvoQ4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCCEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775081733;
	bh=jiFLUDBwvEaUNhAL283qFjacZinkuJP6co7/MHLH6oU=;
	h=To:Subject:From:Date:From;
	b=IFnvoQ4IAbrOVtrpO+tAQRAwf7QBiDezcphRxKX6Bk83W7hzZbCislznR5Fyw4FQh
	 UUNbhKu7uCAKUfepk3NpcKxQipBfwUNQPh+m9Ns0RnzkxPBLJwHZRl2JRLhalgKltP
	 aOIaP7Fe9twjZo+W9/eVjs65p9LWuBWKEy28b2iTA5a2/iQRHab6QLWbV18VlYKMV9
	 gXv5+mkr712iXyrD5JZmhiqZMtCwh8PMZ8gf7++oQfMtxyVhquBd42HE1qTdefHxp5
	 K4pImKGKtrbh1QmMNnWGYgml+7zeMpZC6TzZTPv7k0/UbXA6usQHKvdNnRRb9v41nO
	 CEB59iYic9Dow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC32910FCAF0
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508173369.28944.6607421434639886409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f75ddcd96d886d6b0771a9a7587d553016eee537b95a02a9d7ceb2ec76cffb5
Date: Wed, 01 Apr 2026 22:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775081733
