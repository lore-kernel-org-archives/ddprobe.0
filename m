Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F3F286417
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752126594; cv=none; b=BZoANlkncNbRavEKq4uJF9t98vh25xZZTMstCQgm1o/b13o0lZs4x3nuZNrx5v5Vs5hNNvR80TbXVHOimTEYKVEEGZIJ91wkF0ik5z3GboY0ODz5+p3fsPYPR9OM/8Wa2CMrGZMGyGD8LGOycxXr5PAy9ygVxYlpSdlOvr1AEU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752126594; c=relaxed/simple;
	bh=Gn+cfeABOi5jAMnO+LS6n3M9h/g5azj3MDeHBkGadYE=;
	h=To:Subject:From:Message-Id:Date; b=FQ+GfnB1oe9ma9HsOudTr8cJ6UOIuyEVyQ1HZeQXctcPe1kFnxNShCThPU1YIrCGq4alOW1H1ul3KhFqyRg+Q409L27D9NEemDoPoSGtJLn9DP5huNb8eHoF/IBX3eKH1abDZjxe8F0c3qd317AdTFEKSf7EPzgFQE22Rg56gdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5L23efB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5L23efB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFFAC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752126593;
	bh=Gn+cfeABOi5jAMnO+LS6n3M9h/g5azj3MDeHBkGadYE=;
	h=To:Subject:From:Date:From;
	b=V5L23efBiI3C+0NmSLNRh8NZRu4HHRERiFySBP3NtG+QvXypsljR82ptGBn0h2LUF
	 futZcxoZc8f0gZt0njQvPxRMKeXsZnbhLLySarkJX++IPJNM7fWBX3zvBvxdxK1Nv0
	 teDBNKmQZpu8bUmVZETYFb3nhSvETUur8/oKHaBnBQwJgGHmrzXLdNUGGqxwRGhtwt
	 KMnw5tQHpFy7nIpLNjoYOKfCWAgrmR66+3+S29rCaeZV59/feIryADZfbYbUQC9XUm
	 M1QaEYLVCBx4jwuI5wLbVj39sc7CSlmLvfQa5nz0lvuUYZa24jpaPfUnvoVmuTB/OQ
	 D52a2gSN4S+4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECDEC83F09
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212659357.2242.7593941314525658676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073a8accb2117a0a6ebf07d0be7e35074913054808e1035e8e3a919e0984c25c
Date: Thu, 10 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752126593
