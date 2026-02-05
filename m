Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA55281376
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770335034; cv=none; b=XMX/DowtXFKWYc35f3pVv2imJ+2Rx17JOmgRkRxDaZGGhRJaCFN6o2yNoecoJ45EjuBH0mZaaDPRpTE+tMTqTPZsvR97MTuD0+ft0kcXR0WOfj2e7rgx2gHVxTIMNOPIppNM6LBp6O2I48CY+xIm2GudgbQlXYkrmrTkerYirHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770335034; c=relaxed/simple;
	bh=K/9QVJeqNvZ5/IUCiy7JKH9qHWgpDOntul8/L5ASNPg=;
	h=To:Subject:From:Message-Id:Date; b=Jl8K+WC6FrOKdm7oDLBkzw6YMamADLhovoUmVq+bYm7RS/c2WUMn1XQtsaFVAYj5StC/JVbGnmw7ahhEzLERAx81iQ/vBfyHrEcmiVAlUhT03fIPSLC3ZNgJwsm+3jZNaZg/hB9sM5iU/EDUvc3yAgJhc7mNeRMd5tjBPeaVX0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJ4oKT/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJ4oKT/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB32C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770335033;
	bh=K/9QVJeqNvZ5/IUCiy7JKH9qHWgpDOntul8/L5ASNPg=;
	h=To:Subject:From:Date:From;
	b=gJ4oKT/xGldvTzK6sJ5WI1Z06B7X8DYhCqZN1wccXW3tqtasye7X/9b/H5x7GIy+g
	 Dc2rVm3F8LmgQOIatFSjGiz6+JMkEbAHk5+gVfErQT/STWY3OQhY8KBWYsY+ux/iox
	 NrPrPyu6e3M8Sb1RY0JD7Rt2MDnFV9S4kcf3ZprPBWt5cMQQVaEyEH/Rdt1Vyro3z4
	 MMf8m4HIJk+RZy+uoFxLjxI2OyenODJOmIhT3BYd9JXXQVdO5X69Eutks8BejLdz2c
	 t6/mUekETroJg6GrVbBt6rn4T8QLiI1jz6lxCWHhpboxEm+Wsb0HWJMk9qY8oNcaLB
	 2cJUYNMO9rvnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FF0ECD9B0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033503358.22849.8521370428274786439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de7ab37659ab2460fdb5e66aad4ac31f1a6e4335346b90928a31ac4594b2f4d
Date: Thu, 05 Feb 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770335033
