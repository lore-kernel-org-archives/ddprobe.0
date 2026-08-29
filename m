Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623F24502F
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788010234; cv=none; b=FemGzp4+LMF8APoOCbwL5KqWV9pNtncaGcWIbpNfTExfTeYRxQTKS+lSSHWv2Dcu5PdaY4gUrkg3306LjpGYIYQ1PugU/ndNryjtfUmXeKd/GGxUGImcSOB/Aixvi9/yzBZ9CRrmvhpa9wN1EnlBxrklp6fFfbkjqyJXp/f6ohQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788010234; c=relaxed/simple;
	bh=r47OFiuECovCB+MLlJ5++ShtTNhsEQANWr435Ev9YhI=;
	h=To:Subject:From:Message-Id:Date; b=T5tMFwuFYxeAvuov8oq+GhX7uEKWUbyc+F0FOPOKn3Y41dbggnurdC44rsznBQXgl4Ww2q5wzbY4XevR6AXo3Sl01KEX1SRkh/ORPtZL7RbjwW/o9fe6xhYgbc3U6DXOlFuRXAmL6Gnhb0AuVIT+jHoP5ypCJK7EgedhzU+//NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpZHryci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpZHryci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6729C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788010233;
	bh=r47OFiuECovCB+MLlJ5++ShtTNhsEQANWr435Ev9YhI=;
	h=To:Subject:From:Date:From;
	b=hpZHryciM/jXLqKi0WHvWZ8P3jY6L4jJjao1/DwOMLAK96W0dkpIaJ7BawFkwGKJK
	 PsKBvaxKJGCTHSPdhlGKE6vg34cCnUPVqLJyjQ/Zhhx4cyj4yWJmfJUhrwKdQVRuYz
	 3udas/ISPNQ0j9qKP5U6YCmAwK92TFiGLG0pava+9sdYswED90RPvz4/LSJTEu4pza
	 I78W2q06k2og/9IqIJqETCRs9VdQ5VKL2iQ2j719wztlCMBg0x7dKT3tOIKX/VYOQm
	 DzwxuI7/fX2NIn0RbdstZgkH9Zxr2Tsovbxkhp6cAudHHU/dhWVRcjGtkEo+OR6wM3
	 07Qfk49vykU3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA67C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801023368.24892.11109409217850035907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945597898e04d7f6f2e785e867430dba92f905a4a3811dcc8691e5a24d633651
Date: Sat, 29 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788010233
