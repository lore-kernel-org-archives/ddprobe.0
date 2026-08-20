Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A6D1E3DDE
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787188834; cv=none; b=tJYrmNEipnZ1GefZl4M1bJ8aR9iaJAmrZxGUhRQlgCsjZHYrM8+hwSf6g+ZLyGXfGpnuG9bVYogkwvve0IPrSJW27S/MsPbyGcqmdidKQ2HXhbNif5dUMkM8o7mPVqyt9GxS3xEvYXrIwI/4lsh6noXK+a+Z9el5q4eUGlGO1JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787188834; c=relaxed/simple;
	bh=BzOHdWlCvX+6YT94xrsKM4o7gvk9qL4tCIebbegMJe0=;
	h=To:Subject:From:Message-Id:Date; b=WlK4i8ofJnsU1KwkyCbUCUXgFAnTeQ6nJe3EZMmg9IfybeDtpWU7RagHq3SO+chX8AXWDER05Yk/SnwbT7JQd/pqeDBbe3irMEyFetpjCfw4z8u4F1lEg1vaDNmmx9I/hL8i54CuN6e7WkDb4tLk1zvtmBDIRDqp20m8lMJS1kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhMvE5S2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhMvE5S2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB854C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787188833;
	bh=BzOHdWlCvX+6YT94xrsKM4o7gvk9qL4tCIebbegMJe0=;
	h=To:Subject:From:Date:From;
	b=VhMvE5S2tqMTbOROcaagZG8+cko1XjWycCpcg9eGwXfY6UFvyM2K7AchU2n+56zP0
	 bQfUexGeQtRU9sOsGAlEWYISAEyqOiGZiBima79WjKLPVYFukSayeOUwcK3xAVkN9d
	 4Pz9ZPSzGB0MxwGhzzFv3FsH9qcS8HbMkV9ZptaZ54hnBVjbA1oV0hxtCHQNywUHK+
	 taCamc5f8YJSPc6cD9c6PWc6L5wL2gcfYLWyod+XPsJZasad6Q9LuZgZo4hGGW1Sus
	 OGk5IinEQ8x12ltV7cBIi/zUOtREhmUBKa+KIABsDaalvkGzIp1/C/hNffVTZXIaur
	 DWXN7hSim7hqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B29C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718883369.6130.17232288571368144731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc47dec37965d5774a8861d47fb6e26f0db49bf8f278d173808b6217d4a62dcd
Date: Thu, 20 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787188833
