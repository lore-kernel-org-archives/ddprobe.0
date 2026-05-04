Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5ED9463
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777858654; cv=none; b=Co28ixV/Ssfv0//dQlPabyJfCeHFCIPkw0cQwdOXaVpiz1KSFgC1p8ic/8QhUSgYYjY7AnAApDSzanTGj1AMw8xQonbVrDaVtOXi5BIgBgyIhA7P9WYo8V7FL5EmDivgJqlLHQn228EfM7giNSC2T+qZcc6lKamv8JhOkaEOTw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777858654; c=relaxed/simple;
	bh=+KJip0dgSQ5j1GCkol1KQY63TS3K33kp6544D3wcZa8=;
	h=To:Subject:From:Message-Id:Date; b=Pkcyr4vRKq5UrZby7bxeH4RaomfUEovUb8jLEeURUfpzhyFrJnF2nlrk9/RUUqp1v11/QJriAK/+gfgiPrNaFkv9hoj/iPlVtrrG0oXWjlFPQK19pSqI0bV/f2JTLMARXcXSGUn39uOeFslDfUOOKoXhKmGMg8/3QBUo6wEagdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqZNva2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqZNva2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD12AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777858653;
	bh=+KJip0dgSQ5j1GCkol1KQY63TS3K33kp6544D3wcZa8=;
	h=To:Subject:From:Date:From;
	b=LqZNva2liyJVxX6CIqegDaSnUijBPJGI5OV4SciCS317a/e4C0xX1U2AE5iWEY9y5
	 ER6KOhPEkif283TBfIHVR206ySHBC02fZi30X9NSt3/AfxTtdKWqbIHKGxXDlKXqSh
	 0CYAnvC73DFd9MF4j7Fz0WHetFQmWYZB1+bD9JY9Zn7Ho4MecI4wcRitn240bAVM6i
	 rKlDAUrZWb42o87maSdpcUZF3HeMpm5C6nJ+ruuX9DWIYxyRulgaDS41BOUFzodqXC
	 4W+gFgS0cKtl6ACvYUrdy9TluK9lcZxeDiXrAtjW/jzKZC00rc+rGFFKCj1TVreuI9
	 oxtkhykoXqLmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC384CD3424
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785865368.19706.1775484265564834291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec644683788c2deacfaf833dc415b878dcc694090792d81de4e3421ffc644bef
Date: Mon, 04 May 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777858653
