Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2769E3164B4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756289995; cv=none; b=Ftstl5rvsVZ9dj+ve0j4CSp9kh4tSXbTUaLWL9GdOTJl7Pe/rIOScHg/uq3Te9m5kImzBf0Eyn+1UXyWgdReG4mHcNnbgpLsp2aL3Q6KAZetI8cWBg96WklBt8H4gX/0qMI0utoGbSVgyU1GO1p+OaWfxu8W4jYJTbzleQwCOVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756289995; c=relaxed/simple;
	bh=lmNq2q7qlsT76lWxZXy2+OpUq1KN8U8dtJRLx+KfPZk=;
	h=To:Subject:From:Message-Id:Date; b=h/dsijWy9iEJBRyn9inhDFLoXnQ0V5pcJ+on3eI/tLhWrN36QZhWa9NZ7trX/p/d82ZvnDbYjWgkESyuxZ0TZQ4EdNPmgIcr932uB/s/NUEhvqkxhICQcEBviijgKHEig3MhBWkiLKLhXFEgEedDqggvN/OzIerqwfK9UPKe6bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMp/OKBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMp/OKBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C662C116C6
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756289993;
	bh=lmNq2q7qlsT76lWxZXy2+OpUq1KN8U8dtJRLx+KfPZk=;
	h=To:Subject:From:Date:From;
	b=WMp/OKBENr2qdv4PxjEbT/IaqJol559JJsHhcXo2PLDxu8sFzz4i/A0eC03o8W+rl
	 UfO9IfBj6Ak56R01lj7b9gsMx4IvJgtERLwgqY6A0jBrmt01794LxysoIqyv4hlfYQ
	 q3Z79x6GisXfR5sWp0xhE5LNazQsNpSRxu0JGAauYntDSJ3bKBFSHJ9xofXWjc1tcK
	 cUg2kDb7l2gkFgE3MBfCkovwLyaCp0zSyOZSm2iCpl/hkZth7h0qAwzbPvV1HExp+Q
	 iSdn3sYkNrkPdGNlLUdv2gb6UvofK3yT0SW4vpu6Npg3m3owknW6DGxjV7e3Jlfgxu
	 /KijasEPuxLbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE2FCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628999358.6752.11220559279999509929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf089d805c66214ff96a15704f8e7621daa2f5fe3969fde9ae30bfc758546d6
Date: Wed, 27 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756289993
