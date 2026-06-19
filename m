Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29481330B29
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781844994; cv=none; b=cN/D3q8X6YAqysqUTFQFUmm8MK015k+R3+ecthXwSJSdnE9bJwNPO79Nj1+MmezUqwMmDqbB9bMXJabOH/OE8+zYQf5uuDiNQS2yKlXInDYWHiJv02GnPVxpvHIYzyeLM4SIWJpMbNIboHBddAyj1wjCpfGhCeOUfnmbwUCF7Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781844994; c=relaxed/simple;
	bh=2BJiTrTIhy87Mid8dv+zDd/rE6TSpP6OTZGq4FUkym4=;
	h=To:Subject:From:Message-Id:Date; b=HFATgC6IBIeaGNHeufc4c+ukXDvQHkp3felNXMLrhhtCFdo6NE6krZhHoKDNBevc5+0NO0RUutvN0ovhUfc7LrKuj7gVejm1HiSjtXa9ui5UnZC0pVIqwO4c+UfoKBuwez966CLs5eBOBC1T1zxJ4M8lx5pHzk9P6DRJNxdw+wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLzCK4yM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLzCK4yM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8780C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781844993;
	bh=2BJiTrTIhy87Mid8dv+zDd/rE6TSpP6OTZGq4FUkym4=;
	h=To:Subject:From:Date:From;
	b=sLzCK4yM4LP16s/IlLT3/mYl0QSOYvBf6WZJd2oy5ftkwnSpb82xHmaVuf9qBMBIl
	 Z0fSnUTx9FKxnb+gMdA4YKDzFgls8QY0IBEXe1EFu7ey4m/VsA5qybgZzvRYp91uDU
	 OF3YOodtnJU3hhI4jwKNeE3UGrjZk124ntOqzdGGr/YXqiqjUxkU7rD3TuJ1bGZ7PE
	 xxlPSTY22m2RzcGciU5rV9FhvBu4n2sDCIQidYZdc7QubeJrdTx1u6xJXc8GR3OqB6
	 MVeBP/9CYErp25qspOd6po6phLovmw5DBhlbmyq8h4uvbgUxULNW2vIVvj4NiLxjuk
	 Tca6XQ9O7u1SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3CCCD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184499368.14505.5220288506656211904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02d23b77a67d61b7e3a752c6579adf4086c59aa965221c7d0f539b2f1205877
Date: Fri, 19 Jun 2026 04:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781844993
