Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35855153598
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765108374; cv=none; b=hMXGEBPwP6ekaowtBVU2e6sB7qv5X39RRdT7q1Q1XNgyaZN0eyIz/c5s6yXL4oxlT+i5s/Aj3ik8caXH4dM/tr6XlRLEDBYb49Nvhjk2+mPixk9hvbeT7fb5v+41Pw88D/6K+NC2k9eQkIEfgWgwHS3Bf4od1BKSoT9HtDzvQZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765108374; c=relaxed/simple;
	bh=mR9HWJY3KJMRB0Q+NuJlGgGDWm/qvTa+MkjSCEs8spQ=;
	h=To:Subject:From:Message-Id:Date; b=sgv1m7xxVT+2I4iNdQuwX3XowmaNIuu4yN8N+DFb+LrxmiIYiUZTNG4A/p5ts4xV+O+JmIWBQB9BmzAwWq+TFeZZqjtLFrnzrUswmVW0ewR5ElgDTWke0DrlH0HNqOoNGeNW7lq5qPoBy1tAehcj+I0SrrvPMZlVQwfpx/zO9vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jE/k5JLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jE/k5JLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9D4C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765108373;
	bh=mR9HWJY3KJMRB0Q+NuJlGgGDWm/qvTa+MkjSCEs8spQ=;
	h=To:Subject:From:Date:From;
	b=jE/k5JLIZmXkHJPJ7us+zhmWDbr1lWcZG+35G2TTj5elMNFbM1MOyF/hv5RuvRxJF
	 lQ9ioxfVzBjfEOFy8Ik2k5AOs7Qq3RUxhQ4cJmfwbllNxEKRGIa0TeMPAMXt9fNAWH
	 xnwu59sNNYvbWhfuE0cuJnuCwmuzjiznaWp2O4vSWa4yP6e6KtYLRFxha4d3rkBSbu
	 jPCZypYSNcLFeA2LhbPVb5wfLa6apxkqBxDoyr9cpwWLVa4Mkl/dn3nOaF1zwwXkgR
	 6SbuaqfXw3RISkqLRUCnw3DUW69NKRIGHde6fGyh79oCr2KWYsAleiMlFCy0l6SzIW
	 +kSb2a/OGvHXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59DDD2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510837361.6163.3529817179045785802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb91119e4a8d997d1e16a2f24da443f4d036450984f276c088996c4e43bfae9f
Date: Sun, 07 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765108373
