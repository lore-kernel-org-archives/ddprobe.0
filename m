Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACD92500B4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736841354; cv=none; b=jMDtytz4w7CQv1rBwNUYInuoHTz52qBe7FOecYfriDJj7iNlTlIXnUJS5EZ7YXX+nnc/wKM0FZiAE5xfBLo5YzW01+XkO2SYb1u1JGei07c7OPUXM7ot7kUljFjTwq8079K/lVORE9XwMZsjQOokfltvfXNQqmyS9hlrL0okBXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736841354; c=relaxed/simple;
	bh=P6MYwhOTPRkxWoXxKrGimUYVh4muzMBZG1BeROCzdBE=;
	h=To:Subject:From:Message-Id:Date; b=fUP4Yc9IV5K5blepRwRMNfyaE8rwAxfk+iPuqrx2EBdbsgWE4QITEl6nt7KR1b6FHMmGi2ZelXlZ12MKCAZzsVUirj0i58KQaLIsR05ETpNHVTMGIPDhH7Vea+Fq+li7GRO4Uc2XpWcXLoNZduQz2kOO8QzPgrjq8jmh1Qk+IVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMgJWUZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMgJWUZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2388C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736841353;
	bh=P6MYwhOTPRkxWoXxKrGimUYVh4muzMBZG1BeROCzdBE=;
	h=To:Subject:From:Date:From;
	b=MMgJWUZC/xR4wQyfbFIXPAoT03qXku4HDcNF28kLrJ+FpwV8SmquwYMt550N6MRug
	 4KX6TUcMiuApN54KDVAo45mpURjY/I7LSQPnPG7X29ulXIXSkEJNmBjFv6X49L+3oe
	 Vg+aOADtKruWrvmRHNxssG+V543RyOD/xFC12c/YqCqVZSaJV/zpX3bUP6j0pkuZmV
	 54jetRBhcZyIQvELVdUmQD+65+ukxDNEMKEIkm0OBCYymcAAGAnO3K8ZoV8cgG/TLb
	 Z/ve3nuU79IOIuzeNyF0heTo6MCrVL4eBdBtlGzbP02dvqVsQMDltKOVN0+mx34DzZ
	 FJYZw5lKRPytg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05A9E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173684135364.15028.8168898125139114329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f9a9aefa35558910c82662d156c63e591ba8502d361b1a0176374d871e7ff5d
Date: Tue, 14 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736841353
