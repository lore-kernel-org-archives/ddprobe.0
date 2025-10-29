Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BD1D15855E
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761704994; cv=none; b=cuL9yJzb3isZXrnjq0AzMBtLdtTlNxsNhaq6bnxIb63+OBTjLRa6284opIXvD9GYhm4fO7de5ZP2CjQ6T0LlV1ltk1BY/TRjsvcIAgyZLfb2VaTYOztZWwdlSxnxN1UxG4CGZUkEVRiGk+cr0r8tuVSE5q5e3URLaLvZ1AE0ktk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761704994; c=relaxed/simple;
	bh=wSkKschl8i5ah8H7yGj+Cj7olHA/Rq1K/lMhjgYZG48=;
	h=To:Subject:From:Message-Id:Date; b=cy2n2gg+Kd6oUXAFRF45wNblhP5i78ekA3EysQXzoBEnZE5deJfX38xeMPxuQb9Xa1zJnyHddFVW6JRSbRlF+DaeM3fk5F2Ro4qXWrpknffcVr1EQjSaAKQSaoS/xvH5uVe5uSuiUdNzQdbv5Xr+K78LiQFUo0HOa+3w1FzO7SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3U4qc1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3U4qc1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E56C9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761704993;
	bh=wSkKschl8i5ah8H7yGj+Cj7olHA/Rq1K/lMhjgYZG48=;
	h=To:Subject:From:Date:From;
	b=h3U4qc1DtBjKN4wSoREfVFHu0bnQDE0jqpIfrgG2pqWRvHfrJ9kiPyO1+LVZ2AhbX
	 GpyWYu3r9t+xqvFCdrgOJFzWLiAwDrUH2bicQyljtLV80p7KAATGMwktOXB50FZdqu
	 YrvJv69vbPCPml5xPzQ6Q/rDAyjaxgwA66fI/PGsMvC1tWp1FTH2fpW8QBfmuqu4mI
	 ORSjjMBEdVMrD+UcVw9PRS1PpTzZCLyVYcvdEBDmCtJ4b8yzsto1oFQCFDXa7WVJ7v
	 msLpSrcpGAOVtY0yEwwWACPKLN8pgruiqxoo/AZaFH/sj4+Lu9E8wj+jSNwEFHSz6K
	 xIG4T9ns+CLoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2342CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170499375.9797.44361921270720139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac7c9e78a80bb7e43287fb1a7cb6ee932512bf89d9386836c7de7a8f0749b82
Date: Wed, 29 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761704993
