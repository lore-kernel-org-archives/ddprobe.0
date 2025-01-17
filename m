Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2A0189F3F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737131154; cv=none; b=AExvtANifWCXaMB9rMTM98Z8ZmUqO8AwYlNsbIjHcU3QXMY1ykb2V7CSllq9IC44D0y/oXrIFFqTujaFgjz9FuCBxQxtRmx8AZFuZK3xVuGODzjERTnvk5h+LqmSKh3kupIFQsnJpLou5F6cDbI+3h2wKtrTt5fNIkLaW6b7Y4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737131154; c=relaxed/simple;
	bh=ljcXhIAdSc5UfqvD8ChA8zSWCUGcBeFYbPzcL2aWC0s=;
	h=To:Subject:From:Message-Id:Date; b=Xj1GhZlG048w3liWTGDKCU1b5uKr4sYh1sLGvhuJ8Ei7WkXXjc0nLq7dDP0e9S++VfYAmWYK9OVFwPG8qk1k5OOs5GN5hDP/qm1uF6ZkdSGvu656iO3LOhkwo2FsIlVUBLe/WAjI8L2IY9w1hefcBcdeShLpStNTyE+edDZSEUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izkzYFYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izkzYFYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FF1C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737131153;
	bh=ljcXhIAdSc5UfqvD8ChA8zSWCUGcBeFYbPzcL2aWC0s=;
	h=To:Subject:From:Date:From;
	b=izkzYFYHEUemEry19AAdyGDRC8s9+uS9jsFLHJU86MA66zCzHQJ8BrmtjJupNP6D3
	 SHLwIvh4nqFKGrgYy3Ox4vcjrtOFCHxMNVNB0I3c4ZnSRHR0rZlG5maNLMiaWlxt6J
	 eAR2u2ja7N+BARkZ91nSBeBsoKD6hVfRuqdIxcu/+eZM9MnEA50nSvTwvpy4eK1DvN
	 pug11Y4RLWgwySFasBrRVnPogBwzZLG+UjeMDAKwSzbHBAf1UjzfcwPTdfuk4+6jdy
	 Llgm5M7fbwAkN5p9g22CFJlFiX3hTnV/tvzNT/ZhOcRTquuyDYYABdsBE6EHP3fda3
	 VE8J9nh8PONFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A62C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713115358.2686.9789396484833035497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f819f6bc71e33453430865def9e87ad8b3af1e8646e491a19dc6e2b9607d27ff
Date: Fri, 17 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737131153
