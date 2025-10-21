Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B01832B99A
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761055794; cv=none; b=bTC30TJqTLjZ22bIkbu4JILXOTl7G8jA0Eia0rafTtKebcphRF6NZWCrjfJzByzH/pg76fsVExWBt7xsgafurWhA7HY6fgINN8r0RFtaCGXRTry9jyRjcLTDgcBQcp5XPO5jivhqEjMLnJhrSHS3zFuhhw4MLrRaknT9I0KQ8MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761055794; c=relaxed/simple;
	bh=zl69rIrYgi73rwH8l+UTHzvX8Kteer1rJs9g3VSmkpA=;
	h=To:Subject:From:Message-Id:Date; b=t/tGbokvMrAw0Qk4gfxfoVGZK3d+tbikaKb8mwZHyRnKSeVdlepRm5fFwwJAu6EbGBIjv5/hYXyS3pkFblVUvosSX+s6LJL8EzujivcoNWx3JSATZHOFkVS/1xwA32rbtiP8gce2m6uGoWoWu9/MzvmiusMT81TrCL5IQ9Cr3EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6IZ4lJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6IZ4lJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0484C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761055793;
	bh=zl69rIrYgi73rwH8l+UTHzvX8Kteer1rJs9g3VSmkpA=;
	h=To:Subject:From:Date:From;
	b=o6IZ4lJX5VMXUXLneqr9M1OL0qwCYgk1Ku81e2WP88x+6bXMJAJ0NVK5lP+vpckUt
	 qIlfKjkiWusAZjq8IwUp4R6BGYP7OePd+fv7P4cv/j7VPfzMXJBBlCvnr02+EuqGLJ
	 UzRcFqsPUtEw7Kvptlf640g42OoEivOAsjm01H6wl55W1FlwF8WZ2WzeSyWlp8FcEs
	 f29wsuDFWGF7LIknJAdwS7nhJnvfSYVNIHyRIQAMds1iGIdYxz0DcqsrVZwCPDchno
	 kdlPu4qy8dtAEfPH3scpzd+vdtHCQBE6sPRS42g75o/E6/spT7sCC/oXzF/Q9zRc6R
	 0X9dPz7Dohb8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002DCCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105579358.5230.13569102992040118471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad9d528c783e6b2a670ca502ca66ed561a9ff65ef76a398603ac9ee2e4c4903
Date: Tue, 21 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761055793
