Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D7010FD
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 00:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713745823; cv=none; b=HcfdvMtagOGpL2g0lGc0TgjCmJZ1bPvsJ32ic72cNxfZgMEgMmuksddmNmcMiR1ninw4IoLI2LAgWTj/GJWYxHEgYlo/no7fp9mrgdzM75qWiVd8uE9CrgVQZjmqu90zx4US75UXptPgT49abmO+VId0T6s7TKHUKMkqabMMiB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713745823; c=relaxed/simple;
	bh=ReLIOoF2I4x297bD5pUgD1IVoUlVTrXvGyzR5CL6lyA=;
	h=To:Subject:From:Message-Id:Date; b=jT5jMf+xxtZ1cJzLeS5G0/DtGqxtoIESXA8UM9G7coW8LVEHvjHBeML7em1UXmd4pbIrvVR9IkoivusUP094C+veqqjL1ON59zwBy6gkuyaEfms4ohnj/Pu4SaXI+z8l9NRKP1b+mcnEgUTnD+PjODTsMNiuW9fDC92HM/c9nmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWSMvmHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWSMvmHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF86EC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 00:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713745822;
	bh=ReLIOoF2I4x297bD5pUgD1IVoUlVTrXvGyzR5CL6lyA=;
	h=To:Subject:From:Date:From;
	b=SWSMvmHdHrD1YPg5hnZvmgrUMJNBB6m+mdZlgetozvwW6tKSEmcWsTGF8VHmLyaQs
	 xevzJ+vMlmp533pFH5zEgI4BOVEJse3Um2MHE6GiPiOB2bYy9YysCVPVN8nX7cYWiB
	 axNhHmuKxofwiEpt2FiqgHzuRuU8wyOspitK0r87UbKLqvs0Ws/9RrHkneV74du9jh
	 92Zf2S+xweHA+cEX5HX4rbGkabX+4jzwlfr1eIeSE7blLlxLzYq4EmNMDnatm2jOHu
	 XakbgWKzjmZrtx2zMEbAKN622ecjD5wlR6n81Gt1L1yKoyy9FbblpWjq0ZWOJ/VnII
	 x/MKEnnds0XUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9751C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 00:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171374582280.4238.17756444936621288612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5782632ccf5f6ebe31d6c014fea48cc9a25b71d93608bea3ca245a51a66f88f6
Date: Mon, 22 Apr 2024 00:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713745822
