Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550BD1A2553
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 23:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719270803; cv=none; b=OYGMlE9vNBJac7R86mCJbC5aht5BdCWfpz9gSXhqDdVJTpatYh5nLVVGVZJ8DCTUvGyuuiFBDBJ3j9jlS+lLCNf+gQxFnH0gP7RmGUeQZ7mT9NADiN8yCocRwtGEWG9YMKop0+VJoFrLjzzcNcBLcKMB7UITI815+9dZBd/pK60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719270803; c=relaxed/simple;
	bh=HGMLqDMKUfeQkmglftWF7SKRQQ8CLcoueUAojEQBKZg=;
	h=To:Subject:From:Message-Id:Date; b=rdTU+o29rYvK3ZkN6PDU/yTP4zaP+SEspOWvRpKRM4HUeR63b4N4j6zwNY6TLPmUke5DfOAXZE+8aB230LoYhpkW26ZXPHbgi5MZvNtTKVNveWCtfJznBPo2RwcRLXolRLyNglGxxZMuEqyp9G/Tk+RFOaw0Ysa463uVfL5OIj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPR0SXBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPR0SXBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED893C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 23:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719270803;
	bh=HGMLqDMKUfeQkmglftWF7SKRQQ8CLcoueUAojEQBKZg=;
	h=To:Subject:From:Date:From;
	b=jPR0SXBLrjmSvAZs0eH3vLfeU2u/kB/O6JCOl29DMTrxZYfDAKIkje00SQhyQzWGu
	 SRhFz4XAeTfGDAI5t1bwqJkU5UEzt14ulsg3Hi+rN3l7SK+VtRN5ejcwsmGlYSy8it
	 34joJBPbtKi3b3aXLsK0C3UPCfB44DZyNcNioft/6vr+UC/rsOipG/V112xEcqeY6w
	 Ty7F2q0Ugb1gNCehyeQLMNojXQ3THFZuGGypoIV4icQ0pr1MQShDKhcwUVCKL3A2zK
	 Pce2SdszR5CQ5SLxMfH4TftMcxfF9DAm3qMW56oaW+as0VQbbisqVwcD6wCEw1eMwL
	 1ZgwIgepCSq1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D59A5C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 23:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927080282.10301.12510576844709297806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cabf0727ca3f5f36168fa0150a4664cd49ed9d90efbfaed1b75ab3327a53c507
Date: Mon, 24 Jun 2024 23:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719270802
