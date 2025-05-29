Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FF4335C7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748555994; cv=none; b=Yy0MReTMPgHPjbH+S8ZooKATbHaR4AglIhL4EvAkNrRvqsX7lVRSJ0tI13++PKOxDnygCj7vdVl6MpK3UsK+yRmvHcOCkJqTY7NX2LB8+wjsbKZVm7eJvRJVgz2TnZg/9rdEVw4U3gIik8EnQVcANJUKRBwwEV7K00bn7aJj1wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748555994; c=relaxed/simple;
	bh=f6dskbnDZW7qAfDZ6pTc4xwfqXXFfqSNqDrwtmll8jc=;
	h=To:Subject:From:Message-Id:Date; b=lnMcYk9vkN94sFs9FMKta36gP+jkGdgtSioHR2i2iR4zr7O/7gNuOypM47QhoTqqD0IsF0oXY47p+cPipxyuFe5Ywc7NCTUFPE3uIIyhBq3QQa4sRVLs4eSzI/g2Aj78UO4/nvPmlFfioU309ldUCT0argEv8a7fOgpZaC0PaqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIQMKjXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIQMKjXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16D6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748555993;
	bh=f6dskbnDZW7qAfDZ6pTc4xwfqXXFfqSNqDrwtmll8jc=;
	h=To:Subject:From:Date:From;
	b=eIQMKjXPrg3zwNxvMouMWqlwx2mUNw4x9196plM6GI9OKhfo+nt7K6yukZ8WhyfZ9
	 jTjvZeccdsZ11ennVflrcDR8/rXc+P0VujtRCrHFWsWVUyN0vuz8H3faJZzw/BDgk9
	 jUUVBt7/YBEZEtUBZPqbjp68kjPEhYiBQtRzzN3df/vIDJTfFgZQgckqf0vE6cg3pl
	 +nTXav3tH98EhrSu3JiUCnyzW8eMXHJqcNoLLruKay5ei0mksVJayhAxDVWhllDWjF
	 PEy3dIShO2YFe91SRr8J1o94C8apRVj2/jF7zyDMzAVuyKab5Cerj0xFflPJcFLqF5
	 UItXhph6faTWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF16C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855599357.24329.618695769013357503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba56940532782af5a9c0e5dcac1bd42d86ab85a74ee64940c871015092e9f5ef
Date: Thu, 29 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748555993
