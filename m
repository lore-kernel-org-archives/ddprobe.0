Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA991E5B7D
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748254794; cv=none; b=rDl5o4wLvzJsf+9kBdBcIETtobV36g+AICSS3ZznZxDqO1bOgqKdVCOtM88p3TKSttcH+yIu7dO4kJFkJtQl7S2OxCZaXBxlmzhu5y6Hc/R3RpxPcbYuF04i7imrbrRj3adcwAC6ASJOwIJUf+vWESlqGXSvqW+vyFrPt6W2FMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748254794; c=relaxed/simple;
	bh=R95xgycrfcpWhYkQey7gYyixcwEKgbVxDdqH9TQJFQs=;
	h=To:Subject:From:Message-Id:Date; b=QTOjjO2Vqba+OzDozjzIZfxS2uI6xI5xA7CsD7xmiSf80yjrkDZsYAJVfRlVHMENpelUppXOXl860we2fuQf5JqA6BQG111a2uki+EVyyabeK9BfdF2zgxJ1FTgB06Eu+3G9CwWi8zXtW6jQPc/KfaiCf0UJRUD+jZv+u/QXMM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFR4PyUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFR4PyUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A291DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748254793;
	bh=R95xgycrfcpWhYkQey7gYyixcwEKgbVxDdqH9TQJFQs=;
	h=To:Subject:From:Date:From;
	b=PFR4PyUUfnBf7yP34I/BDwpCATZblNpvMCtbYA6Kq8nSGUnUQxuxz6+WozEyvrTHL
	 lFmsKMrRMD1LCaZWvaV2jTVmcM3AH9Kg+Oiblrc2SRNAe9220SqadzlJtKhKmITtzp
	 3oRiWjSretvkyHqoDN83I8LEeeC+ud8DZm0Rpy07SMjqBBWuPb7tquogGXqOuSG6Ds
	 q23R+gHQlGo0VpJjWcfq5YshuBH5+BoCX3TxETQQw6SMz2PhWU3oD9cf0RhiLsOwjj
	 UcyoxZQ6FyZ2B79H+Fv0qLum1EO4IT5QzeukauWZw6HAfDtbKW0ACnDqH7MI/cns0q
	 FY7mQOchh0FQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9000AC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825479358.21817.2226656797012194916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f1c4bafab6899691bafeaaee7aa92b1b77d19fc62f2370b4ba57eeec8d93bb
Date: Mon, 26 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748254793
