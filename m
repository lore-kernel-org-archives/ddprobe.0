Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFD8270EDF
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765848774; cv=none; b=n2y04csDAq7aGltxIw8sPFBppyJoUoPtyja0a0PqPPMDJl8vCTNmfyVesgDHKAqDAnPS9SP+V/w4KEe95X6nww4VxyhPr7T+Maejh2RiBrpAjTcpwkToLQ2SfPsyZZJ9qxthFZmjdNi+E2k2cHql9ijluNaZxmmT7qZzU8tGZhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765848774; c=relaxed/simple;
	bh=2Cy2FSxrw6oFfSWT18zSWIGYjhnGDJlY113llWadohg=;
	h=To:Subject:From:Message-Id:Date; b=EJO03+1QSGdV0YQoT68uVXaf93su+PU8SsIq/LihFLit68XGPY8TJ1Z/0LB83bKMT3F/CGjvR46IZ6rpG3PNPVwa2k0F3fDB6ogtfsaWuOlW4oqO/6LgrYMGqBgIFsSLbETQVa7Op1jyV7Pp0V9EG67UT0VjBQU7oJc65RdIZP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ikr8tB6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ikr8tB6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB519C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765848773;
	bh=2Cy2FSxrw6oFfSWT18zSWIGYjhnGDJlY113llWadohg=;
	h=To:Subject:From:Date:From;
	b=Ikr8tB6yeRmYvfjFJb7+fW2uO0w+QLRVBZQHBji1K8fdMFuDIhuoC4F0MWS+ZHDj0
	 iL1Cg4litP8AQE3lAbvsM7CtwImgJ0BcHCVeeXxVE6omvWs//J/QQ0dqhRQNSpBMBE
	 hs/DG02/StC+BtcIoSU8yNhTWwghx+v8Mi2xJftgyPqvps33nQrcrXcfB/zWdTebbH
	 4hTO9SNhC9XPgo659cm/5iP3KFIy6LuEmR1lwOFZrwC9WDMF9CAqr0xoWhyNFbnn+V
	 bTT6zHBwjO8fNeEmXEiwQjP04/DFCIIExxdsKWeQq8Ud9ouYG8MozS55E0PdftUP8F
	 FDH50uisADGdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951A6D5B87E
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584877359.24745.866890805866267445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8747a61262dba20fde8687ae0b40067463a746bc74a8ec17379606c78b4f4181
Date: Tue, 16 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765848773
