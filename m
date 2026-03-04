Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B37DEEB3
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772593494; cv=none; b=Z+sRQHtiz9r+GniEQT889pIarMxpnGd1VMjUAzlKPrW006CAqZTKfaWDMLmwgqy7v/APpkiMrOBiF162NrPas6Z63aJkW7N1aCypZ5Ohh9KR3VuktqNiQ76+vV7nFhNUCYuBC8ibVxKGtizGHT0AckxX9SKjS5O9RPu9V9f1sKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772593494; c=relaxed/simple;
	bh=anrgPqTi54S00NH1nwhs8sRA8/Tv6yZvBqbzGkRQ0Ys=;
	h=To:Subject:From:Message-Id:Date; b=jIxNAnSr38KT3ARTeOyLkDIVG34AxxqwAx3eqnWDhrBx5uwjSPzOxwjE+aduGCL6F5UsuiT7iVuM1vo+O6rdRdzjKYSZaKmUnpc7RXx79YdKdnWOqiUlmmqhSYdgwMrZiCrbwjcW9zL4CdKP+eeFgbeHiTVh/6gzdjmwqSU0M5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itKRIJD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itKRIJD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD986C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772593493;
	bh=anrgPqTi54S00NH1nwhs8sRA8/Tv6yZvBqbzGkRQ0Ys=;
	h=To:Subject:From:Date:From;
	b=itKRIJD+w+CvqzrG/LgJD5CI5ZZEX5RxPOcVyZc6TtZmeUMpm8bnXkmFHzovw+zVf
	 lG6vZNQM630HceeEFyBvx7jzdR9LDZNRhkpDR95O6jg1MY7/mUH2ROpK/a853C4tMx
	 wj2Cq6hVrA5Y+PVSSyZ7OC3HM5lFU/17uwtAxs0m5Mi7UgbyNq9h6YhxeGKm7VXXCu
	 FRfda2krHWbdM3StrvT2U0T4Kj4oXI+TC17Bk1XzJYbzAEcfU4AaRLKBfVA6/T8gEf
	 czdXBttAWEN3NiX4mJ9FDzJClKsq++dGu5dC/p14nGk824QeNXxsw2H8xSKT+V4eGH
	 feMwqqH7I9LVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D01EDEC01
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259349364.16732.5347073121801466426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8cb24e46c3d6a657fb35ffd31cb71c61fc650fd5023ed39678ede8631cdcf6c
Date: Wed, 04 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772593493
