Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247E024C077
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747066794; cv=none; b=cNIyeRvtj/xYr4cGkXbHn+qqyFUH6t5uUSeDU4vXuP1UfRYxiXz2y3ge8DUezRhic8nbVTV1WjOfgNkpR9394H/t89YMvoH6xD6zZ1NqMKGEI13qUjbrfXR/3YnUBQdNsgYZvXp8Hre93naWPIWyaN/YgA4vOEEIxm4UNKttF5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747066794; c=relaxed/simple;
	bh=PD+CzjFaamj/XveEBx9hz/M1WzE0nZ9uEJgKQ8/DEao=;
	h=To:Subject:From:Message-Id:Date; b=IWNKNBXEWjyJa6Xpn7diZCZMmqn6HNX6nLa916YVXDdtXBZXcLBGfcuAvazRQuYmRoQ/VbdfW1H3xVd7rlxfBGhAMp5WwZI8zw792g5ao2e7NS4e6snyc2U/Qe9kJ4XC+BLnmsfAOfvTl0W58T7x9szrpOgEK1bQOrpCazLEKHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfo2FXUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfo2FXUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43B0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747066793;
	bh=PD+CzjFaamj/XveEBx9hz/M1WzE0nZ9uEJgKQ8/DEao=;
	h=To:Subject:From:Date:From;
	b=tfo2FXUESUJ5QPzDL1kehKzWyZ1CkZae0Mw5BHYOv55Jt4DzrFOE/fEGPIiTMfHUO
	 VpXKrBJOA8bxf7En1vz6m8nW8WpBWoV/gywE/FM6Ia6YeXk5ZCRr5Zcm9luhhh0nJm
	 gzpVjcWvHasc8miD8UB4pm4nwh4W9FsRL53r+taWxh7FJeyc8EYmSFcAuVPWSKUjfi
	 iYrcV6GPrTA3dRqFukALTCB2p3B6ON75rDrGNmRz/U7XAchM7fnSWdcyZAjE0IcC8Q
	 T1EFN/Fl5j+OoyJQGueypiWd6s5xgklNDq9SH3hFCSer6EacI7kQ8B/eQQZ5O69sYh
	 szi7u6bTHWo7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905E2C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706679358.27603.14122475615936258523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a32bd8dfb990b8df229cd772f8dfa67c477d9637eef4a1bce58167ce1f1c6f3
Date: Mon, 12 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747066793
