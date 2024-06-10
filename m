Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B3E139580
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 15:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718032043; cv=none; b=BJ5q2Zln71SAAHC+hX6Atl1U6ECzGhmxpNGnELi+PTb04t/UZnyp/6z5PJ7y7QYDmWVmtutqDaJurOm7B16xsYtppAlNqByfVRhyx8jR8FwAOm5ag+Z4dwbr+6n70bkUkeh/kP+YJSXDYzqnWCE6lAtfR+Y8OseBoQywlnQizDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718032043; c=relaxed/simple;
	bh=6ZZ3YWLRaeMRUqIE+XXj95lYm9kHACvqkmgYuCGn5uI=;
	h=To:Subject:From:Message-Id:Date; b=HBZ8zWbRGVRAjoIxnmrmFXZVXQoaUvZUzQa6Fgd3DoYpQT2p0ST3AiN5EOF7e/4IVMvlAyl8acgn9WRihY4GgLHc+Lllt3Wlo/uE47NQBFZeDaG/IdyG81enJAa2NrBaM6Vz+bWFFDcDynvzsRbE4tTKJfbC8p29IUH/MzN6TkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2irlz2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2irlz2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FFBC4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 15:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718032042;
	bh=6ZZ3YWLRaeMRUqIE+XXj95lYm9kHACvqkmgYuCGn5uI=;
	h=To:Subject:From:Date:From;
	b=h2irlz2aA8AZtgdgqw0EDYyu7Cfv2rK9bBM7kaNKcN+1VQlBvAbfufbN/rycrrrjV
	 X2CU0sKbYgy91Dpx5SCW7E8XFYt5oEg8RUFkhLMe8i2s9s1uaPSt04Oe92dMmMFWuH
	 sGNTi0fCSlDSwhnSXV0xCT/wpqoAmrFGM125bJSsB9w7NiE7JxFhPR/gLXoRz9xQ1r
	 xt08BewshyX2cOIGl85kN18F4k9gCUU/XHcbR1AnsXSQgM38cj5JHq1rQVN+Basddj
	 uxJx+q4yvB2LJkWQPLhurd7o4fMe8gUltsZKuRTsWbAuu6evo2EGhCezodmQLVXe82
	 TbBeob+zE2AfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D00F6C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 15:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171803204284.32397.1296178522424129147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78ad873c1fdf841a240c35f1aa535e00dec5a6e5cd54e2cc817c530f7d3cc67
Date: Mon, 10 Jun 2024 15:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718032042
