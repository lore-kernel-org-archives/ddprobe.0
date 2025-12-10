Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E8820C038
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765407774; cv=none; b=Ogi2uonFu/K3Fi/NOrfkJun17jccsJyLWuNdePhzChsziLM/MSFB7kB18opqmGxDcgY/vUapLrdfsvgrLhRputqPTe1Nb8FkkR7jUBhlYTYP+8bs6Aq82N9UP+tdF1lYTbsQsUKlqZUZh0O/Y4y5+NJTEPs8tJMywc87WvUduSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765407774; c=relaxed/simple;
	bh=Q1gO3TrsyIRzHDTllxq6gQ7Os0zZA5ilBQvAQglEV4Y=;
	h=To:Subject:From:Message-Id:Date; b=T2YeJYNTaN/aSJ0QZ8dp8OGSypx5NUzsMZSDb9gWwXPjo6+MbRZRucWwwpiw2tUVr4F4TXg5J5aOVFRnUw9dqQIOpY/ot6Bp3dWFv3PiJC67S6IWda6t9ZNk+zJhcJ0b7fk3p+40LSbyRswUFoVWzAWkMyy+RyX51oPO/UAyiY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJVLLmzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJVLLmzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60DFC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765407773;
	bh=Q1gO3TrsyIRzHDTllxq6gQ7Os0zZA5ilBQvAQglEV4Y=;
	h=To:Subject:From:Date:From;
	b=kJVLLmzhmpkHMb1q71OW2k7Z0tM0k/ZiggFkY1Gtz0vzSJVPGPqnbuU5El1qf2W+d
	 e5LzZ9WUT1kQvW3g0VLYa3ks/hcY9AYJNtfwr5/z9ePW1OwjpIIofJ1ZFKtMiNJ044
	 ykP3Z8+34bLma/cflYJWxTrXmXqdJNAlKCdjhxb7mHKjuNP9f8f+ymfW4RKt55Sih2
	 +i5jXH8319bj5VeNkNY6+IWNfSV+mbjisaA+H+JeT1dlscnDtjGu3cwkmZwmw3YREe
	 oxjhpRGth12bipmaXlB2gRUcFytDQk5mHR1jZpb07MH1r3ELjEHDBHQWCmgD5eLGYo
	 Jy1JUL4sTqiEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923CED3B9AB
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540777358.9445.928333445306275193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aca470e78191fe22b87694dffad3773e1e66886ff7f13b6e1e2fd706a9c171d
Date: Wed, 10 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765407773
