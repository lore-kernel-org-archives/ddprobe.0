Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCF72DC76F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782403654; cv=none; b=kJ3YYdg9+a3XA8Kjz4PNdaqLIiYYaO6iHmrEAYOvwkq1iJ9HQt8abIveVeFzmc+IUs4SaDAtPokRcU6VvGGCxO1xv9chhPDyWDn7C8zcE+gtAOGLxKteTWileEQhGigvWgxjmjAjGOEsi0UGCkKOpuY8umH/9V2er95vcgyarhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782403654; c=relaxed/simple;
	bh=Aim+xTumqk4tnPBQrX/0L6/kFhJSQwyU88cxQJsHhV4=;
	h=To:Subject:From:Message-Id:Date; b=F0fpb+9eoyp5zRNOE1/KxOdz2lgRV3wDrQE4kfF1Td4tCUkKDJn05cYGQJnTXLc0Cf49fxiIUfX0VPQ39sLEMwg7SOoALC1ItHeXxb7FFHh2SLKDTJUqPyvChBrsWQRTbInUSdWaq/WcFvGUBFe491alO3IReDGE1CcScpw9+oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRiUjcE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRiUjcE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0548C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782403653;
	bh=Aim+xTumqk4tnPBQrX/0L6/kFhJSQwyU88cxQJsHhV4=;
	h=To:Subject:From:Date:From;
	b=mRiUjcE41rWrQBXq+lUS/YvYvyQyPGTcfmhg3LDGzotUQK2ck/0LhoVt+0BkV0q+D
	 m1pG3dHtE0ngbs61dxtnnCa1S/1BDZA6uVTWyv/Nh++g8dZQeNl9sbNA6n6fehN4ps
	 VA2ObkMUArpNyqX5o2X1nxqiupDTjGhBc7UwL3VNqyiktjdJBOsColF1967VfUw55J
	 m0+ofueSoFq9MxzwmrJCAe2/rAFgdJ3s5TJ2EnywVssUO368YShPg2ww2F8a5E1eRW
	 qur4vlFWi5j4Pls2Rl+fCHsdXEi26r0o7LVABkph2Heb23KW1B5vm7Y0wrnyy1CVKh
	 9yAEHOeTR/Ndw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89F0CDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240365373.303.5631039270729673999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38cc35c2de3e9bda792e49f8f70b6b20d03a93e8295c46cb412fc8692dc2478e
Date: Thu, 25 Jun 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782403653
