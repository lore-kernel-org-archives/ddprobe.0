Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79F016DEB1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770440033; cv=none; b=TVu9CWTHFR6vT8DgrqR6HwWsR57nkSjpofzFk8WMWayGGnnLzU1u7p+j7YrOLbE7FGapIkFVmSLfvEJVec7Uw8/KrpdbDXCmxJoyO6hpa63PxbYA5LPe3vOMTgsXtCLB0GaIH9UB+ie03fL55O+7dElBVFs0lbNqjGAFgVlUdZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770440033; c=relaxed/simple;
	bh=nWIKQcHuBuMId4O9mvo57H7Q1zx1wP+RFS9Ojdp1OeU=;
	h=To:Subject:From:Message-Id:Date; b=I68cWSy7lRy0eWqEIfEQ/MwXKNDtxvsQZ3MfdGSP7a++J5TDVgWxTOUe0UHPzqJv7dRETLCqOpdDWVLmDZL9uPzC+I9MBvCc0yO8/8U2qhQfpkDVejvJm3hCxzyEdYhFU4B0BiUEBfzlFelt5mpg2JpAMGC/9orNk77eaJ406mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQlsCH5h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQlsCH5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FADC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770440033;
	bh=nWIKQcHuBuMId4O9mvo57H7Q1zx1wP+RFS9Ojdp1OeU=;
	h=To:Subject:From:Date:From;
	b=cQlsCH5hcGyUFrA4zSdm5QWZO+E2CrSl35k8m+1HhiB+wR0zQeFgJXoUhdfiDTHQr
	 BubHDHOJqXDhxR2kFB2KwSMly4RgOFjpj0nK1fHERXr+wmAduq6A6pfQ1/eNnSIYro
	 PIsN5sIhPldgb49l77kK7m68PdP4YdRBtOkzUHMTNDWjMKxhHOwUbad3/JiaUzMELI
	 jOGbWBHu+LsKG/7iRiuyxd3ybJEnaunn2MR22APxZQh1pUzZx8cnV4DLebBXKDfnf8
	 pPabGMIZYh2BNthdE8ln7hhJBZ+asnsDLOn2hY5jtjuOWUAJTaC8y+W6vfVfAqYsYU
	 03JNCMP/bu5AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954C4EE6B4E
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044003358.15120.2274201452230992328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13c4279dbe5e0680759600e509e5d47e05c25b31d1a3f12736a600a117c5a9b
Date: Sat, 07 Feb 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770440033
