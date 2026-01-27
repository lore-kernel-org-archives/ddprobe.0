Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1818530AD1C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769490835; cv=none; b=hWf+1lOj9+OFc/oNnSmOG5q3w1Kj++BVqVxTt14N4f7ugI4iru7snwP9TNIgpaFzB6tHjqnMhfyqwFhrB01E7GFOue009RpQeEhno7tXB0z4UbTBvdEBJWyJjXBw/ypLm/j6sRXO7C73UMzCmOWZSxknVvnfFsaQAYZWFpnvrl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769490835; c=relaxed/simple;
	bh=RG70/3h272+S0Z+Le/xTQxn93z+a416vAV0D6aOhfPM=;
	h=To:Subject:From:Message-Id:Date; b=r5ivgJpC0rwDCXRfP4HSmVUsZ6ZHIDCuEukcRKhtWdnHIEXNn2GtNAYVXuv4KWVjr5P/groR8JR+mBHrjCYWLRd0+m/1txI33foPNgnP+PkgUhJYKc5wh5nj1HHuTANpENicC7e5xEo/czOX7BpIMb64Axvocgq54Mj7isOHQpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+/mMRS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+/mMRS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B51C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769490834;
	bh=RG70/3h272+S0Z+Le/xTQxn93z+a416vAV0D6aOhfPM=;
	h=To:Subject:From:Date:From;
	b=W+/mMRS1k0wrM0r3BiAYvK/OUowYMkDicmOyxv0iz5/QgWMk7Pa64wP3bQ/a0cmnd
	 vL/poxMHaJg60+1PCM37qRgr1vkO9ppVgizY38hZxe0klspcm5tr0Zsr+C4d8EVgiA
	 pkqUtTNdSNsK3Ve786dbLt1lZWvtwgd2tXcpNZ/PGIj5wsFzjGWTGydqI9e+nzwv8n
	 d//nbkWNGTk5rBWNMqKxdfZ3C4+UFS+4fLLtPekHx2XatxRN6U/byKRP4QeNNKZNn5
	 eCGrzhE9qdoGImpbJW+sRF/+aIJazBU92V7c1MM4Hh4UEXF68dz8/IVeFLMgwx3mMk
	 XHMffa+5zR0zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB4D25936
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949083358.15632.7197870606418694167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4326f8cc1af2b8d0f5809d558fccb77176e0800cfc0b704301fbaa415a89ebcd
Date: Tue, 27 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769490833
