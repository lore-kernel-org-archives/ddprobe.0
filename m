Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B267350285
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781779594; cv=none; b=IL09rH43aF8YQQ0bKL5tdFnlIL34YnHUVMlCVOEFi6c/HJJXP2x3M6G9O6sbf4T5rDFdOWwskIWlgRcuVpTFennEl3MX5ZZE1iKdVVFykMh9yTjTE63ewXVTrdddPZsWIq2ybt/TCC1Y701fNmxgdlTvOr+AtbW+fbFvkvFCC0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781779594; c=relaxed/simple;
	bh=ePzCNk9A+uLIh3MxF7GMqfyUekmDYFaBmcBmjl3MryY=;
	h=To:Subject:From:Message-Id:Date; b=hmlIX88N1AgoNlnoIUAml2otj14Prjs5h1QuMxJALMGAVxpNIfo4TGasSpFEoSCDW0e6bN+nsXpxuG2Si21SOcFrsc1jx4uIeHWNWsBR5Ak5fBa4YcCbWoOpsQ8bJN7OATI6N0LgXr84DuA2mHh/yyis70mPq8LxkJWMMXFOAw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECfm08gj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECfm08gj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0F1C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781779593;
	bh=ePzCNk9A+uLIh3MxF7GMqfyUekmDYFaBmcBmjl3MryY=;
	h=To:Subject:From:Date:From;
	b=ECfm08gj+JmfOw5voSI1OWse6cic7DW9gv37nqvKcLBVe9AEKuPldFsbcMiTOMKU4
	 i4F5qFCV8wV0IemigC79pI3seZ/EyOO66YIyld2isIVJlrqIGGri4iuhfDWB4Tt5kL
	 PhE8a9NgvsbykW/qXEv8r+zkSH7byHaMfp7uRIkPc1jUB4V/q0psoiDEMw5GHpq/4N
	 hBVdfU5jeVwft608CF8MCROlLXgfcGCWvHwyaQ1HzyNxRCaMivqcFHJP0BrZKeXII8
	 +O7pZj7BHyl+K+qXw6NIlpSrtL5KbccyHeRxpL42Rk1uSg8ZM3qjWp6AXjZlbWzy5u
	 eDUoG6mc32q4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFF1CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177959370.11777.577944602501158792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988321f210504e0cf9a781199b9afca20d8ee9a5a0e1fd9271ce09e9a4f5a715
Date: Thu, 18 Jun 2026 10:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781779593
