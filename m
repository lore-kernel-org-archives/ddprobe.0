Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88C27346A0C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784140117; cv=none; b=QPhvLgneTZbl4fqRH2crt+PF9T83P8Iu7NQpbs4q0qq35mN3tIa2ATXeMMAkc1QkFcFkyQPUxy4n7sP2FpD045Cg6uUHKStQcZDvC7l+Uao1Q7heQ8X22IZFIPpQxGgP3piX0hu7Pt8qVOIq9E0gkfxunL/pOmTJ6q1474CY2Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784140117; c=relaxed/simple;
	bh=0fGKBzCQwTlwUYZXihrtZq6CBQF1lSMhOx6zXYWLMR0=;
	h=To:Subject:From:Message-Id:Date; b=HFjOKLYeBZPkqHbvQfWbDqePxt+W+Q/4/vSCZqmH2QO/QZ5W1KWtc/VnbuJAJdn5GIMrOfqTmrVuesGIIjxzUSKMmquuCqVY8qP/xQiHI05avDMK4z2gVWGdMAPzA/UzC65F7yIh58qLljFSA24I5WvIvQlkxqs9of2WBxEj2PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoTf+if4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoTf+if4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC12BC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784140113;
	bh=0fGKBzCQwTlwUYZXihrtZq6CBQF1lSMhOx6zXYWLMR0=;
	h=To:Subject:From:Date:From;
	b=JoTf+if4yP18e4Wi/NmJU+n4umfD6lql9lBtijTNWtAhHE2D2R1DCM/SWxRnecGrv
	 REGewIGFtUv805nI9XufSxqOKyqYYXm02QggAW1N3RrH9NpwyqSrO/oUUu9tIRBhQ9
	 5COneU+gcmeakM53OSc3ayxnIZLfJwujucOR5uCBn1zsKDsIS+f1w47A22dGIIMzWv
	 40TyBcpQXFntd3qZR9gP8airu/cIkn2lYBrgj01YdA9KOwsBQ8T52BwjYV7SD0LdE6
	 V0G2DcwxfDzyzEORtZCU0KBC7ZqFugY0m7WGOX/7LHCewTU7+0AO/0Tvuxff7uX0jz
	 kDa61b3ZxfMVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA604C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414011368.30992.281837360994365744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f18cd4a823eaefb27c929c25c05a5d7e11da9a262c926753f09d3536b9c0119
Date: Wed, 15 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784140113
