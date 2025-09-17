Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB442367AC
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758085194; cv=none; b=fUIn3SJYNhf1cS+W+WY6B55ZbgsQK0u876ftx6NLrl+51htXJGRA/GZ1cQWfdIGMUs7IjznKAVMaAxe5kseU01pk7iVBZlXtaSg/+E2ucsY2hNbt/8nXE9wsUe3wzUpsfVJyWRrh2Tp/ZuqB15nsfI1iHlmM8hwJsGdpFb0IVnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758085194; c=relaxed/simple;
	bh=UtuqfmAKVcRGC11GBl0edyauk0woyuh0dTNig7rJRWA=;
	h=To:Subject:From:Message-Id:Date; b=vCIruxjtY3x6XK7dTbGX0m/SVzg6c7KeqKYBJwSJUU3K4yoM6WvipOFLcpzbxMXZKYsvkwapdlzcvTYmPtvw8Om8t7aPRl0lC1Lc3SkFT+w98qrZZcb0lXcSioHY8irWPY4V3iK3E4e8Bzgp0BFP07kM/wmw5MyKLcLAuWGcJtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye7x9ZiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye7x9ZiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15D9C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758085193;
	bh=UtuqfmAKVcRGC11GBl0edyauk0woyuh0dTNig7rJRWA=;
	h=To:Subject:From:Date:From;
	b=Ye7x9ZiA4CwItVknLVCFMoqxlPPU/R4wmVlqe0INvDoTD8l65U5Zjggg51qpCkQxR
	 EA3Jnf9x3AliZPscvx7z3+uR+gFBS0OiqU8+9MY7zYdUtI2JkuMO/IIklG84DZU9sa
	 rMIGHjQfWKVzK8hEpUfMjbcenACnvZvezQzlBPEQyqY19XUfuuhw8WB7pCzwwh8nZF
	 njGZl6WiC9tNNcPDfin4irJ7uI3+H44N1igkbFKQit6x7dqa+n0Z9hHxJIptOa5Aug
	 jHeppwNnmlMimRYu+/5dnoMFP4S9lTNfRG13Zio/saAs818mb2BiW3vXN0YFZf7AuY
	 zhUdfwE8A08Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11ACAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808519357.1647.307881122336938113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce8dbc00ce35ee0972ccdf706aaf1566902a7e4375d8884a3a9ba1a305f78d5
Date: Wed, 17 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758085193
