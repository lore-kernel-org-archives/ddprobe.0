Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3737813D521
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749143395; cv=none; b=ZURNdELe1VSVHlVvNG7aCZolScL9rgH6bsWuDNwyXV4VzlNp0gNnIypDOUez7ijcbPbVQTesrsqDPO1c5WwdJ3m+1TcQ4U+L58YHnjTp5UWtTgvDp+pI22gZCCDWz2sNcD5+ORe9U6GGw0C12xXsMmAyAknm8H06cXVRdCB2PPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749143395; c=relaxed/simple;
	bh=xNC6L9f5uohoopMACWD/a7QDdB6sFib52vEWxQS8Aow=;
	h=To:Subject:From:Message-Id:Date; b=iSzOuwmNWDiZHu970JDtbohub8K9lSOfOiNEBhjWUzY0l3tTu3yLHxmOf6L04wditF/DhGpSGr2H8on8R+Azk42L+8bTgJA9SgSRGTM8YExDwEVlTDGPVGT/vv0oUl8XNRnXAbM/Sv7lshv/2q+W00cVjOY1NcCnHOJ+5HwBats=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXFI7RsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXFI7RsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4896C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749143393;
	bh=xNC6L9f5uohoopMACWD/a7QDdB6sFib52vEWxQS8Aow=;
	h=To:Subject:From:Date:From;
	b=jXFI7RsHTECG0/jm7R0vyIJQ7CdZUbArDbDzBzEvrB4QlY8QvQXi/J+WWrPCJVdkg
	 kXNi7zW7REO+frPaE29He39X5kXRWaJKZXNsRsvKmr0AZEo69PXKsrsJEs7xUdHpzN
	 U2yl7q4lr+nGNtzOl/cS7AuIAkCKNUvdE5N/TOqzoc/Z+u0xdd3vGqpmH8GEMzK9wt
	 AEP03iGrilcfKnryAead8hFu+o/lbLh/Wd5TJcXEzQkJH0+LHGA97NvmsJxjgK4lY3
	 fQh5AK8Xtzqf6Uu4X+8mkM6jSRSCGdvlvYN8wxkPaUeVq2FMLMD13ZozP4IJUvBj8y
	 tFSMeOxgUd/Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B7CC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174914339359.12021.12436162250401567355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c49a755a6c07f4667cd2cff54de9e31307e3bdf26c4e65b02c50e5c464ed07
Date: Thu, 05 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749143393
