Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349D5211C
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746061796; cv=none; b=MFVtTJum53iC8h6/4lCYmiuU8b1fJJd8AWcSGCw34qUpkKPixCN8tbXLUYn4phnOFUXAhJXyH0a+B2LamW7cftB3Sgq1KA+5LHwU3a2z7Q5mX8Ssv8y6GgGYvyLZmIYdZfM9g0bfxeoqal0/UeVI7TNafvbI+UUy2aTOam49U9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746061796; c=relaxed/simple;
	bh=oLGU0wh3xaxmkfJB9o5qViCKvevzCpjt1UVIiY+ICIU=;
	h=To:Subject:From:Message-Id:Date; b=RU6+Q9ONkLdORtPDdFQ2RtiIXBDqAuLKYJONNllBM2JOPr7hxnXALKsISXZbr6QDUZ4vUAwRlM0bl9hzxuMDlkzqC2Tpn8ukO0MpbmMrGvQQV3/Ev22BCr7txXgJzzv1McX4qUVo5OMtTiSe6nUnCjGCslxZv2CzbNyDjajC9Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obxKWaG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obxKWaG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54ACC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746061793;
	bh=oLGU0wh3xaxmkfJB9o5qViCKvevzCpjt1UVIiY+ICIU=;
	h=To:Subject:From:Date:From;
	b=obxKWaG1GB1gPPJ9J3YYv7SJ/qID+Nh2JekUe8ReSQUTZkDrhas42AEC3G6lpj0XC
	 9jExZkoXEG8t4QVlNXh8xvPrlg3laETNEB0aXoRPP966xqEyeRJoIrNVLZGG2CcOIS
	 ZukFQoAQTj7o7E++iK1SuJl0ATRoP9gfQRX0mUfcSBEB2fBm0EIVA8tY9PmwT85Hx8
	 e1iuoBlP+ffZpo7tqWzHeujUOMTFGpiCuecAdA9XdZP0yqmzM6dF8iSyqGYHW11QuH
	 nVh8gwWY6EgOVGubQ4oLO3VXvJvPYmInId6u1LYc8walUY5rRa5P3ScslfPlA2GATo
	 4oU2O/9rt7VQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924A1C369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606179359.21175.10498785079419714024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beab57922cbabff5ea2d779f3f19e32f91a9eff6f6492386ab5d00172c2913b3
Date: Thu, 01 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746061793
