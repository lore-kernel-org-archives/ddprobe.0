Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5842D9782
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770896094; cv=none; b=esNsIjQMtEbmgDhdBdrBgDEAYCAkzaRGYHfpymDk4SFHpPw9lVv7J+sB7B4hNHds2iAzANyVesu5I48Z7VeR3fRgjYuDTkSSUK6QNXU3qzJSq6y84MMSoSrojsepkGE6++/tyzZBI13p+JP9CjZM70LT1OjRYSVEwOjC0ExxcBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770896094; c=relaxed/simple;
	bh=zI91VmJJrbu1QeqZz9vD1DdiL//0Kp5AihpFupo4YWo=;
	h=To:Subject:From:Message-Id:Date; b=jvkLpQTo9wvLOa1IaXfQFY5oTRsdA5KLl2/g2cNWimB1vxsvO7eTz7GNyEOZL3bHGUk7Dc2WGSD90XZaX/0aCoUzPqHCgTpkyTUmfJcE4E6iyO0f44JfYkFJlTylqmqWxW96RGMm6sSlaOEsWbWQB8Ubik781SXR8L3ka8aIK+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilU9mxJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilU9mxJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE53C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770896093;
	bh=zI91VmJJrbu1QeqZz9vD1DdiL//0Kp5AihpFupo4YWo=;
	h=To:Subject:From:Date:From;
	b=ilU9mxJ01bm+wqVDwbsaFC0/dYSbsBxlPMlK5CSjpNG8i0ZE5wdnR8ZWoHE7tdrXu
	 UihJC/+Q7tssXt70w72UJsISBOACiDb7Z5GJ7kkG/bJaas+/tuQDekMXdqohejeAl5
	 IlcGfE4VPHefz7XnxwJmbxn5oqDwyMFfE491IE7IiEM7y3uWt+866JgF/gdKxcdLoD
	 AR05yoqDyTFNczUbH4fGp841m+wWe5MsB/Vk4itg/m873dsunEbquREG+62b+twlm4
	 Jy0EtrjpR/FzoLzyAWFeCUWCB8OLRu+Hl5WAQwGAskzStQ9i6jdMiE/0mtd5Z2uORr
	 psEpnpEZasp7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C03DEB4908
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089609362.14253.14905678749500299832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e056c9ff829a7e6d8d1cd0b47c3434f3f14288dbc4427ce30b19cd3da60001
Date: Thu, 12 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770896093
