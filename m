Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262421B0F1A
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735823754; cv=none; b=EjU2IhmZo1FUrKWnloaBFhSWlPaqUsjPFWAkh5cgfLYtNJ5Pdgl1BoIoRoWbxcAUgqY659DVGIZGdDFjPiQ6Zy2dEt8UFvQqXrlWL3llbnZ/7p/dcw5XxYOD0lNesi7s3BPx4HTKQLdNGU/gbNSk1Q3LPz7cmkDoOxw3c8k5LQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735823754; c=relaxed/simple;
	bh=o/pFjec8qjwlNyNGMtxrvIgrqMJcuAmyX7NHWXz8YN0=;
	h=To:Subject:From:Message-Id:Date; b=Q3yycj2fpQjABqRy+7MMa4j81iPEVXi8qsPlQ42fhyBwCRVBa2kBAA2Yfs7RWBn1uTX7A9e8DMJ9/iF1PmBpuGsckkJOK4x3ImEfVvi8cFvUa5215XMl4B/4cSyfYhJf7BSLi/Z1oc3eb89VNJwf3NioLtkctL1l74bMoff7CSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ki6QH3/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ki6QH3/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE78C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735823753;
	bh=o/pFjec8qjwlNyNGMtxrvIgrqMJcuAmyX7NHWXz8YN0=;
	h=To:Subject:From:Date:From;
	b=Ki6QH3/CsFYs5K7QHCAnMp7tf5rSDZ2lQ+cH6fDHAnSmPL3AtF5jRzrSxOp+Jcj/Y
	 01uVhLRKuWc3YWGawMWwsmsUy+qfiknvbB8cSOx20YbjYU08LMFaTpOvMnKag4rhPA
	 4+n9qxSqSOhOccyDC/fWdK8kxM7xkffCGGNixXFhhQZ8WVRQLLOxEPDUmpmlSE6As6
	 n0QUau+roG8FA5ntrdph1Z05i6SwpjgeBzrPJ9t4aJD4XWrEP2dGhMc490M3iM77lh
	 53N9ima0y4K7V1V+P5Aclqqvnlh+ErsKnFCiaWBO/E43gnGq0NpptDqjAe9Itlz1IC
	 3/QwdUhCA39Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963B1E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173582375360.24480.14563125288728633535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3071e99744bc4209403553e5a6964f2350266d25229b5f5840d68b0681d6b36
Date: Thu, 02 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735823753
