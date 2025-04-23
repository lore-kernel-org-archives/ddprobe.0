Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D16EAFA
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745387394; cv=none; b=GtaK6e9R1XT+oykEP7BgGozz/ERPL0v86tfpq8g+aY6uD+CBfQZjblKUDvXQFVpLwptH/a1UU+YvOicImbMrUftd/VDj0corkow1dCT8Bo7FQP5oijEGnj90pxtWklrEu6VTtAux+U03hPXcirP7kDKXVbfUzk12X9X1D+dWudg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745387394; c=relaxed/simple;
	bh=OT9F5bQoB+2AZnECNkzucdMalSkFUpRMwkQ4MSqV/hE=;
	h=To:Subject:From:Message-Id:Date; b=TFn7+PjYppspJrJDLkU0sL7hVkKNKhY21TnjK5NJCz/eMyaZvDnPlS0Lt+rZqZGMkjpI+Fiisu8AD/oGuA+Wd1x1a93stYaSEFpJHbkltuu8bnSse+jU6KB60MbTUebTHrWDNyDKkW3gGlGV5MAkmPAkTBtlsHz0rLbIgrEnhs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qj6Smfpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qj6Smfpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0127C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745387393;
	bh=OT9F5bQoB+2AZnECNkzucdMalSkFUpRMwkQ4MSqV/hE=;
	h=To:Subject:From:Date:From;
	b=Qj6Smfpx6q4CD3w6N43DbgmDkD64ak9gAPncOgyEqzx1MAMXygblEemyFiIcqvpcD
	 xtcCnQZnGUcdvAg2tDH40DxlxNzwkMvVWVqoZXsZ7pWBN7xtzMcYDQS1dBZ0KO+cpu
	 wTCVsTKBNoJWLvUgK7wU0emwo8o8/bNmisc0kWhqXH8xbxj9K48qb3gvx658IrGitB
	 bGYiOrDoZ32BpGMTLLQCQ6/wXhkHjmAyJbk+sziNChFYxacgB1pR97giOWjPaEPUmr
	 q43nbJuRBddqG+zSK1sz/S00bpY6ZIH/rdcjUOwO9UZNNpYp5ZM7tu6ll5nWwM86dc
	 CNUGU4nCkp8ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E254C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538739357.23029.16521648161728634829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5abcdd4b9ffa5134039116e6a182f9fcfb075bc5f18562ea9e39f04534922f
Date: Wed, 23 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745387393
