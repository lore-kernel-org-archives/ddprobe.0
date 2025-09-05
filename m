Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215952EBDCF
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757106594; cv=none; b=ZJQjdSX8e4HbmZ6dM9EeqNb1fdYW4GNR+tyWJgr+z/vb6mzrMEaqDeVbY8++V0oXgQH7I7XhBeeVs5QatkQmRQY7abm1/mrR+NxmM278BzQ8VrAI/ErscftwqZoSh8bNOlglenttyJT08N+eolWC3/OvEKQqmB4SA2sk+g5ZqQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757106594; c=relaxed/simple;
	bh=UwjWTYDHCfCsqOkPCdNGa4Ti2M3jdXYPqGCkSWnes5o=;
	h=To:Subject:From:Message-Id:Date; b=IRdFPEoKCr3XI/KwSNuVRajDpu5F6oQB7+X6UiefmQwlvgyncWqMn3BfQpj9LjlSSrFrybVO8lvVqZofbg9i5bz7Ud0neYSWsJ3JK9sFAXNpHE+CULfRy8exPazdtO6IgVgnGQjk3gVgaEO7q61xVFlgR4nt5W1oMt4woaHtjwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAePltwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAePltwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EC7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757106593;
	bh=UwjWTYDHCfCsqOkPCdNGa4Ti2M3jdXYPqGCkSWnes5o=;
	h=To:Subject:From:Date:From;
	b=VAePltwmAxe7BtLG6Nny8YQABmXpaSK2PPVr6DupMwHzS5pVEvTxE9mYT9PiUDv+Q
	 bS0Z/CceeUXz3CTxfWn8kcFJHE1QV21+BufEWcdHoSWiEZQMwe8ssQyWUQNqEhpaQg
	 GVNN1i4CloYRSL9VHMw5MWURbJHrrW5cJ2novHtaqtx8r5UhnO8ZuBQ3YtAk1gYTBz
	 Wa/bdMUNbJUcmmYj2lYbwsDMg3WeWU1tbBhrUa5IjFmKoGigd8XOd6E7DCH5W4WbDW
	 Pbmwl6Q4kB5GaVysWQdfq3FXlnglx7vM4Y3ifRHqME6+3NQQRZCAwb4gEEXia0PhBr
	 hhxLNxtQ940pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EAFCA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710659358.13530.1126133973661598229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90fed3ba2001306f35cba10856bf03f84ca4365b3d70d5a6aaf266a327569cdf
Date: Fri, 05 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757106593
