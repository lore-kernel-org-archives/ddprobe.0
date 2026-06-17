Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2926B288D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781707594; cv=none; b=pBn1wcQwGg/cOa9n9942wqYW/OvI+yyjUUBSxKI6RmAyWKhGBcsKlTmHDWLtyih5sxLPE5erR73W0wMB1lUxITptCqJrKaqwtL9zbeyf9ePbRUc5QrZ1EXWkIKuB3MmAEMOvKM0zP6bhYfrz+abP266oe8dEQvuesePwvtMDGhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781707594; c=relaxed/simple;
	bh=mQACVKoRz8aaE+1nIb/H2UaEH2nqQzH2pew83RXId1c=;
	h=To:Subject:From:Message-Id:Date; b=J5FlsAkK6D4v5HuuX3fCc5FcWaX9+6REvtZCyW3Shkc4UCNkoLgVh/kMigSDyjBy3A+h+GI/2RII5REELNc5DF0ZS6n4YRHrwRxBkXmf5XwSH5KGFJQd9miVj5MsQnsQDyUhMEWt/cRIerlXuRnAdxH/eFI3YanduaiiEgvut+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgulVoR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgulVoR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0BB5C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781707593;
	bh=mQACVKoRz8aaE+1nIb/H2UaEH2nqQzH2pew83RXId1c=;
	h=To:Subject:From:Date:From;
	b=RgulVoR589D68DHJ346HlAyMJAky3YDkYw67aXrvl7MpyN0dKodUruXFmFGVhgcxs
	 3pkr6TVp+dCp2lh22+kiLTULYGRsUf+xZ5waA3cXnHrulQwGGIxvm3IRC+2h5fS/3N
	 KjYAOkJIWwgc6n87CDMPQzr28BlwjJaqejvCjGu90W8eDk960DVHoN/4XR6FNhHPEO
	 ZRZrzHvuKPPqU6jbNY1VXyImcrP4qo6PuOTnnovxqujIKzpbEMdFQ2Sz3IOtkH2tJ+
	 MCLuUtacHc9dWyhTGMdxj9MNSpGh6M7ROB665QS4nFTqOyfjQZpZwxjaEdV7j6uDcq
	 +6//ZDOhSFTtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8B3CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170759375.22898.14102488417835852593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c8f3b20c24490cd475af13a87a9791f25c73ab00e2af2c37c3cd52156c6693
Date: Wed, 17 Jun 2026 14:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781707593
