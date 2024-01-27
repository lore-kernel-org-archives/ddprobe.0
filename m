Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F7020DC1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706354897; cv=none; b=BQL1pbD2kAUWgHhAda3wsCRw1DE5R4fbsF46RBBtTUVuJ/39MvmhF6WYVL5dnIjWfyZuxthSfvFVjcaSQAYEnXxS1R/mDTLPFOeN23mKJEZR+GhtTQtagzB+/X9E5o4xLbeZprRG3n6LCEIHbddPAE3LBqshNJL4p3GXDKt6Vr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706354897; c=relaxed/simple;
	bh=z/sHv9laHvchAg0u+wRxT25tDOejqAdo4Z7Ce8qjL5c=;
	h=To:Subject:From:Message-Id:Date; b=lppgAufcylcwhPRFfQ5g1As07tMDgJheFh5/4b9Rv8VkXZuex398baXDyzDXKOS0HFUJEkPpslzNtMF4Uv9nolqrt0nOIpJDft/he487eYDsD0fup6D0DXu1zIqHgnrdJBBVC8P3JRzV9X/zB2UM1UhhaxgHx0fVnQSBc0g1ik0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWhVjiDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWhVjiDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79671C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706354896;
	bh=z/sHv9laHvchAg0u+wRxT25tDOejqAdo4Z7Ce8qjL5c=;
	h=To:Subject:From:Date:From;
	b=SWhVjiDU6Ccp9Daa+vjABijj/nnYnCqo2C8T917HM9Y32SePNGKVqwwABk1lAfCYq
	 ejJL1zCouuIr4l2Q9pitoTcNb9cPHn7IqkIqQtCgq9B706A1hW97R3In6gQGu9ztPb
	 YyalmFdgyjqnUrPdrY1sLxfskjtNW45A/1Cs1zWblZueuRvlxjT85harbOBqNtVm5h
	 CW2QDugbkWlhYDYETDLV3StKT2YGCoaaI7eQdcbmn4ZpARtm4NUd18G2Etnnwyqdk/
	 BfE6oToKXplOEBoWQ8cfGHzuqp3mKeyOYNcLxFvWVRXT8WGnQZ+d4xRPQcNxHi+mY4
	 8/K0CtNMaKCNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605DFC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170635489636.11885.14191497442782965201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6170dc9d5a6aa1806931342a3f5f0bb4f1f42134f65e88137cd8c6ee8e83e586
Date: Sat, 27 Jan 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706354896
