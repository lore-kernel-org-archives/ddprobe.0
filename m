Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF06725A642
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773567894; cv=none; b=SCdA1UeKHBJhIUINAERx9rrNI3g5+NR0fAQ6TjAaZaYPaEVA9ZBM6pt5Uz3GhR5nj0cibdxr0FaJmW8Y592n5GTCCNuYHF+VuntVGpKN1t0Qc2j5cjs97hSCVwHtHghy1lO6pFPsK50dCpz/1bucnzp+ro1Om4nLs+oW6+KlYOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773567894; c=relaxed/simple;
	bh=U/WcdgCC+c5318eUZp+WeS0AlzbymCHYrgV1sJ/E/q8=;
	h=To:Subject:From:Message-Id:Date; b=KLy0QfnymhD5fmx2z4WaMIqGGn9bIee+Ccr6GkxCCQw3ya7FuCiCfbXOnHahbvB7TC6wleuKwuzXErWWUoIb3Qtja1fspQMcPF2FByUjDGcrYuDaVusvRNEiEcVzXTZurzhlZFsOTwlTX+iUL3+w00/ak3Qvg+SOW5rddI0a3gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgq8wIZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgq8wIZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85E9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773567893;
	bh=U/WcdgCC+c5318eUZp+WeS0AlzbymCHYrgV1sJ/E/q8=;
	h=To:Subject:From:Date:From;
	b=fgq8wIZQkL/oZR9hzHBkWpiV+22FrbksVK1I2Vvrl248gMvTV6yvlPqeJbi/RVlHU
	 5iQLBXcpriiUMJmnbDgBcOxzz6AxI1EQx3WBNePz1Ibly1ijW9dgPPre+UWKT5h6Gf
	 7BnPd/L15cixpVQomjWW18VuGwlF/c2BsdHLTGpVdcf1d25bkAZnVKUm8QkAaa7AQO
	 9ekGuK1pCUbsjI4gAwkz/UnfQthahpw3gXtUgOgV6PLhtWz6AwDNYlgoS6xT3IxreJ
	 rL+0LimgHJa08siZNQwaJoMAA/AWJzbtsw8v+g9QB7Z7IW8C93G3l2144N66SCx9Qe
	 mVItNy05Clg/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ADAD58B0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356789358.14826.14351814100418671897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b769fe82efbe7de620a67a13e5d5ae6b5984afd838e4e32badfaeb6fee2bf663
Date: Sun, 15 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773567893
