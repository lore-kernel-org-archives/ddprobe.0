Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549FAB652
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754317794; cv=none; b=UkPqAowrdRrNuDYLNdM5L0kCs7KPSrEoQxE60rHuYCw/p3a/gXBdgStNHg6/pXUWOdx/vZzHkH9b8E8yOVzM/pyFwgnDvu761CJp1aGnkaXiRnKc+MEPf2oGnQ0uJyvRmcSGUjIiTzeFzu0KhyjLYfvk8pK4vRsJbdwdcMTOq1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754317794; c=relaxed/simple;
	bh=x3mNhkUhhQzZmHQpIJsKvKdqUpSE615iu1Pwp2e4J+c=;
	h=To:Subject:From:Message-Id:Date; b=XYEdskiQxbjUGiFsLXjzmeWOyI7THReMLWuy6ApeF2ltuWIr6lmBjy0gchbrDHvx6dNUcJk7e0uN4g51tG+0AvvcycK5ogawGaJZPfoLAx2RyPoiCNryqPNrTl5Kx3ZV3MZZjCP4FOStGtJnjBxyIvn2rFhwnO6Axmrs7LRaVVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8bUmjwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8bUmjwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F29C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754317793;
	bh=x3mNhkUhhQzZmHQpIJsKvKdqUpSE615iu1Pwp2e4J+c=;
	h=To:Subject:From:Date:From;
	b=L8bUmjwCgSaS1AhK7jz5NXKZS93PICmRNjOZQa0Eu67tckz92Zdqmtax+38QoO0HB
	 axcSYn7ZKwhTw9SEEvQT9OO5WB/I4IGnrpjGjtDPJzyIb9HkcPsjCwXglyHfTpQG7d
	 van170pACjuZWWQE9Xthzl6x19cVmG0ptFFqWjYHC+KWI74YP1g1Q1fQxTzX8lBreC
	 BlCETgGPlLa+E8oepu+gZXaBhKR+dbyksgV3mKnRS8DwyJi5axWMvFSD7endgTBLVx
	 60V1TkAWlYb3n4dnE7SEt3MQ5MVT7QtlVYWRTdBI9HioRiBH43WXcnModtmW8OT0v4
	 FeaCOCgkQGkWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9069DC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431779358.6608.1674590622337800752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401b4a0dd37bb2372c4b33d04bea0fbb30e819d8586278ad21a2ef92e443e334
Date: Mon, 04 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754317793
