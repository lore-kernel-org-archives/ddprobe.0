Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC36927AC3D
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758220193; cv=none; b=YwN6eEyEd3kLKOEoMqfXWDoJ8jmIRxmCv3yBDJ5Efa1WwSQR0SVbUAw+w1wuJU4CNX95Xb/atDP9fTy1ae7q/CpDNdHKPjjHltGGBkKB/2738p5RuKMCL58iFpJ7G6HZ67Naxsa8itFEyWkd7WtKKBZSN6jB2GRyfri6jDhQO68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758220193; c=relaxed/simple;
	bh=HABhWCHvQuX8rFzg3pp7yibEVy4Q6noK1tc574aDjeM=;
	h=To:Subject:From:Message-Id:Date; b=iW/W3K1d7XOCdETNCnig0NeM+9G4Iw1MaAcIB2k+3ZnKdnwb6nzYb3rtiHW/HVNZjLV74qfD8ofWru4zFq17upzTa+P42lUBSNO1E4IZP0k4fN62epC3I/c8ImJH2Bx3lrDT4xPZyBcu1xJsI9qnz+qodxIGxfwb3D84qctwZ1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJGlv+5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJGlv+5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07EAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758220193;
	bh=HABhWCHvQuX8rFzg3pp7yibEVy4Q6noK1tc574aDjeM=;
	h=To:Subject:From:Date:From;
	b=XJGlv+5XqyTiHWQCky+fpQNsRghZ14mgOyIJXNEVj6Tf87tDGT4Iz1LhDkdZQIzxM
	 i29FEDqbydwaBduORVzCu21xtRgyidzmrJ629iByUVCB/ejG3BQT6oDuZ6ZkM8gmKX
	 4s/dujlU1rA7cushKstdmAYuxE64z3NfqiVFV0UchWMyd8gZ4W6DVBqYHCyorMqZ5v
	 kb9p/LwebF8v5t6BOIZbLlKKDG9OCICfExr+WYWLAMGLtkv81EPYKnvNQjDJQXeDvM
	 uF5Ns67a96CKVWw6/rJcvJGpdxwCLNa4vGspqwTNgaaH5pHBG09BchOQ6fvpomwfFI
	 T+qdxkxELGiBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B21CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822019358.8501.10811611982117698960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5ebd4ba32248ed846ac77abcfe6f578fa3983ef038758e88dfc4b2c9093fc6
Date: Thu, 18 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758220193
