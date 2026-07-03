Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394AB53E0B
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783037914; cv=none; b=S1NT6J7qhLRrQ0bmrFXS0k2KJH33JQwQdMBjWYU+fo2HH0i3zlLPXoOW62K6uZ1E+I6M+DlGRxmhhoyTiik3HVBo+FCYgRBI/f8ovbca9HCSNfu10o/OIrQqERvwzn6FnKNzeg3EVeXqcQDmkUVffwUmU7VnO1hq3F8+CglutEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783037914; c=relaxed/simple;
	bh=BqfpiaVCDL3atOhN8lh11b5C9U81NdFj9lcx4r6m59s=;
	h=To:Subject:From:Message-Id:Date; b=ZalOUQXnX8oaQgrlq7o9si5y5qUWfKKpcP1Tre8zoSeWTwOUWN0Bfj0zsBs7d2HnufPJOJO0yE47Vnu5hivfUSSmWFd9m7eqVujCg1RV1EaX18F/+8cQPsVxErkh0T9g+WyP37Z0UCurFdFSEuAaQOjJhsPMjVaHog5HS7Ln/W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erXlK3ux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erXlK3ux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC908C19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783037913;
	bh=BqfpiaVCDL3atOhN8lh11b5C9U81NdFj9lcx4r6m59s=;
	h=To:Subject:From:Date:From;
	b=erXlK3uxcTa3NEIvavTCAyWz9Zt9KjHIm4e5l8cP0CrJxnGxVt6WxyepdzBKc/KpK
	 YZi9TXW48O+9bdC6JXdGS9jumGdhyMNGk2+Jbj69NQoKKS8kt0u4Ay4AuyUgOQWl9c
	 hpFweNikuOwFNyTDEEVgku5hfOFFVT+jNSetCjBqmHTWmAfWaibInST+y+yriiz4Zk
	 pSmUNzpm9JNoI1gc0FAwYFn0pZSnSDYYV964FuC8hNhbbGqqx0NJTimjilcwmYxH6E
	 EOlCwWMuFr67c8zCvFS2XwhQtO2i3yQnPJIYyBCPltmwrZt16R0Xy+QdNqV+SeYacC
	 /sABuBGS/Fw+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA27AC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303791368.31540.15770407649617384261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2a3ae7d09b975c3c998505d18f59188cc01af78d6b8427a24dcbd8cb56845d8
Date: Fri, 03 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783037913
