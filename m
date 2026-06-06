Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEA619E819
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780784674; cv=none; b=VQ5s5Fh0LVPc+W6K72rHn8/FwHU6iaEYaf/K0UPGv/j4PLCdJDuEBbfna7pbqhlwyaLseGhsDn+YJSgJbBgOrYGyf90Qb9Wg4GY5NbCr6cNJCxBTtX9CFRHhQEuIkpALT/nMz/nsiIdaa+XxEK2t5wHVBCQoTPKpYap+rGFJSPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780784674; c=relaxed/simple;
	bh=gg3MS5IJenPuOK4PJQDINhj49EWv1l9pNtliEC8nwlU=;
	h=To:Subject:From:Message-Id:Date; b=DXU3aJIRwdhcmfRRfyl9vg5db2Tr+B+Ry/yA2geo6+62wN1inHw1AWeTFZwSS8tQOUDWcy4glx6lMCBv2j0GddYMqpPv5DtlTziGJKniLfXNVaHlm8HCmvwLdrsD1TAIND8HK/F9PcGZCBSYQkMoAn6mTYEXA2aseQGn+Armho8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Blv8tpc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Blv8tpc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E8AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780784673;
	bh=gg3MS5IJenPuOK4PJQDINhj49EWv1l9pNtliEC8nwlU=;
	h=To:Subject:From:Date:From;
	b=Blv8tpc1oUfXGyjXmrGydl/N+eFUtqxQc5ueqhXPxEEj5u42e3YgFChNN1L+59unJ
	 a2uBVD2I4dvP1sthGhym+ttaNAUEe4IUc0qpHthB/KTB4mpwoSzyKUXi+y+RjIX52a
	 Hx8oDlU3gRh4pMuhAGxFnccIkmAghADUWyBLJe0P9BYDQ7FO3nExJnIM78ORb3I6LU
	 FO1nugj6mcmF6WzT8RZOA9aSGp1GDW5UPvPhaoVl0JSOzT/ou2f5MwBJ/NR5luEYxL
	 F5P/i8f8yE/0v1ORWj3xTd5s3jpyph3e9KSeheUZk0pd1xW1HAOD4eGB/VpWwR9kZI
	 dz3ma4fEaZAsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F09CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078467371.24828.12565780153409062294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b716ee389bd18800581ebd8e2773f0bdc098b5842648c9b7fbf89079adbca8
Date: Sat, 06 Jun 2026 22:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780784673
