Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3942A1C3D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721448954; cv=none; b=tHjNhGd+46KztzB62LvTTx1U0q4pLDfkrn/OWIfNEFYBk8fyCwzkewZmV8Zl+/1Bs5YBRDdH4H9sfHlQt5mZoCtN6Ljbq+tmY9uwOVEitfu1pkDajxLX3AlLYatbrpyTTTxDSGOpdPajRZZYjBc8bOdr5+4tKW0a40X+Bljs2Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721448954; c=relaxed/simple;
	bh=n6qin4z3Mwewx9O8h22IAaba+dXmenuUfvX7g8I3o0c=;
	h=To:Subject:From:Message-Id:Date; b=Dh+uCEdXYk56BAiEuVSMvRzVp+/U/cpsWJ8hTyVqGYwpvaXgyyFZ3tbes6p8a+PJOTlwAUayiKCdleUnsh5EMhCH0+Z3FH52CilVSN0K856OpZV9o+HeG5xCRNJOXLv72LaWWz+jo7ZURKPpqtKMFEs3qz2ifWZyr96TXOg/8Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtSnbkU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtSnbkU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A8AC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721448953;
	bh=n6qin4z3Mwewx9O8h22IAaba+dXmenuUfvX7g8I3o0c=;
	h=To:Subject:From:Date:From;
	b=BtSnbkU4Bn03jztaknySCSIS8QaLSVftKqvEZJCJQHWfpwHVj/mirMnAO+3CbvusR
	 nWxVgqsG3nbvxZfTYlqyh7KndSYWg3FcViPHmNpR+3o7YJbAY9JPC2dE4OSaQNunMG
	 hE+8bv14lJCf6EPSyatvsk1rS7C2Wo2+/MDVF07fkMxkyS1hVrjILzFSRtqJzMida5
	 1VSzjTrshVqZ+K1MBvKaMAZ9GvMNY2LnhN18Ixdnd74F26EHgXazHaz5QhlqcA2nJo
	 R8e+8J1wRpLkTwrt/U4JCknGOafgWIqLhHt7IuasiH6ynIsGD5H3kx0fF3cftQTIvR
	 nN9hc+TlWBvpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6211C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172144895362.12682.3684956804604718970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8492d87e037bae67c796b05c9ff3e64b0c9b976d087e2ca47de20f0442274c71
Date: Sat, 20 Jul 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721448953
