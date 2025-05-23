Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420C414286
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748010594; cv=none; b=o873fRiwlPuv535FyOeEGMX0xW6r8JJhHXGUm/OWAVTxevhyAs8w6qAo3c9uY/lHDFae/B0VLHTjpdbUcNAxqH3xU0Jf77y4k6OkS20hdVrron9/ob1HVR/lg2fVWV4BPLCR9mHbhNwJEjT1JhItq/icyGeKt0SCypSeucD6Ji8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748010594; c=relaxed/simple;
	bh=Xx9isvwR19lMp9d8P6s0sjj7QO9wcqrCbwY9sL4jt80=;
	h=To:Subject:From:Message-Id:Date; b=fv7EGtnA+6j0HSUcd13Ze53WQXvEz7eIu9JIKmzafysB7aXEHQ0oPdasJ+YkvriLuol9D+qN6R6pHdHAOEh1vsExnrToniWlmgZWVH/XKd07ap7GCeeVZCe88Y0MdnREJLg1I7DUh6OJr8dtHX9Glu6853J1+Eojmt6funczLSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gscJSA3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gscJSA3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D5EC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748010593;
	bh=Xx9isvwR19lMp9d8P6s0sjj7QO9wcqrCbwY9sL4jt80=;
	h=To:Subject:From:Date:From;
	b=gscJSA3RgTd+XoK0RTd/ey9iN8WcuvhiSGSjKiA+nTgN3O7m6NMgK4aSLjD0DbxNQ
	 H7y8w2CgjdvcuZD2AkoUNCSnVEdT1J1svhCyPu+wPU0dniiPqo2U312JIh70vs5xsf
	 /i0tPbOFsRWJxh7JKwboBkV7XXD8aYEdFPChaktovO9ktbGhr97pmVGAeinRqAyGXH
	 FAnmaQEjO5ao1+8ni9q/BJmWVUXqS6tMMI4G+kABINIgtehS1o3iMv0vot3eRmKxjj
	 W9bUg86YrQBIGGaf0HSDT7Y1JnEYYcs7+7ORu9ijDz/HDKrfCGFzQLCAms5zx6pSyN
	 tftpCWFdoMy3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93635C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801059357.26921.10534098862237016499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceec0c833fdba5931dc22137048f345654b3e0cc1e349b7695780b4641293be7
Date: Fri, 23 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748010593
