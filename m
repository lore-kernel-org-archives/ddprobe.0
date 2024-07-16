Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BDE17F7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 01:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721094323; cv=none; b=doj3oV1uayOvuOuZSamx0q6ydnFw1tGPRqSbjbPFtsZBNFi9SJKUbjfdqCqSbXi3zqPetJQ+p5UVCg3OhGNoAte47C+bjVJzr0b3ArSKktKQm3LFl5QPHTlb4pOEM2stUJNt+dS9rz+APRUsvPZBz+GVyr0YxtmlKFPwXv5jK0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721094323; c=relaxed/simple;
	bh=vmhE0LgHpWhAqLL5B+pzq/5bsL91ZQ+RLkpUU3zNzos=;
	h=To:Subject:From:Message-Id:Date; b=c4b/iBG9Pa4DfIaoR4aaEJjrns1+UYWZZI9j0jnCpkYnMGuFjQBwT1jJBuGs0LXD6rz1EYmRPi7T+1jsKA3JLsaQzUXAvcjLBMYDoUTkV28C+404WQgSAFnGKineyNfSC1emzqAQp1nKPiorp3ylnZOUWYHJX6Z7brg0ze62el4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEbY/IBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEbY/IBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CD3C32782
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 01:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721094322;
	bh=vmhE0LgHpWhAqLL5B+pzq/5bsL91ZQ+RLkpUU3zNzos=;
	h=To:Subject:From:Date:From;
	b=CEbY/IBk4i0h7k5oAK+O//tG1+MLvAiBbuOK36wYXr0o4CmKiX/p/7A+JeFyeVGTI
	 a0Xi+0Q0/hDjrKvgqLgC20ZWuNXon1j1xY5ryVRqms/kzoTgDJesjUpPzjYwyOuQB2
	 9p5OjJIdD37/JSJYR6ITJOklphnA7nYce5SGWjo2TdIbw10h1hDceH2I21nZ9rZxi1
	 1oRVxEo0ejqLwScoYp3lDWQ0eptOJ4Qw+NrzmVKAaQPwvLv/v5V4zc77M7HJNsnT9Q
	 qZ+GmXBUweEZZXZBsphPJq8QigZBFZe6MA3hBMu/wPMKuqVQmtnA01ZrvRHTDMS5bk
	 Mf2gD+JI1onuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26D3C3DA4B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 01:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172109432278.13325.353971554055538628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e3c9ad74328a8934251e8d19f495013a8800746b3fd7406213caaf176079d2
Date: Tue, 16 Jul 2024 01:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721094322
