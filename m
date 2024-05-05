Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44655136E03
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714946543; cv=none; b=lx4a7jOmaodeZ6kF9Hwjg2VtRQMw1x3iT+oqpwsq4mLkG4H48G4LHbxIrYhXvySeQ+uZskZJcB8vQe6vMESUmzice65pBOTdbD6I4uPGhdPIudzMOzwqrlZUHdxWOsaIIZAGGCr9I57lm50QJIY+OL3rxt0SET/GQ001cu5DBJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714946543; c=relaxed/simple;
	bh=Bi+HK9hA31JMb8XCpJTcCZiw8dvRHiEHL4R3G//PhNQ=;
	h=To:Subject:From:Message-Id:Date; b=OCxu9b2gyJWeGn4fkDrNr22KKlwG2blmcwGOn0UFRGUQQ56PBonlpUZKPHvGZXNZ+7SjnYoJ/j17wUi3fw2m8/TWadONCr0dr6fSmbEVIwcvrAZOFXxhvpwFFqrCAbb/8b14pYUryMwf+BBy6tsrB8NTURSUuZArX9g/thlCpQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2+3yXXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2+3yXXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE17AC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714946542;
	bh=Bi+HK9hA31JMb8XCpJTcCZiw8dvRHiEHL4R3G//PhNQ=;
	h=To:Subject:From:Date:From;
	b=R2+3yXXKpYeYgVUm5FxcrTjqqcM4aNz/dRLrCu/+qirOyiE6vRhZZ6prexdyE98+b
	 yStLeJbG8B+Wa3LPmcrI4VcDv4vG+P+rPcKsLSLItj/mcH92dMDxelTPqUVkfk6K8B
	 NKm0llvYMvLd0KPO4+CIFrk29QGXEQMQp5bW3HPWshtNWtb101VNEXD24UeQcXz5d0
	 k2M2+o0GvNedpAkFlY6z3smE2J6IPVqQAdmAB4EoFoyJRpAAsaiZX6BGqZL+WHdOlI
	 6prvIxlXPWvG4U+Cv1Yq5YGhn4zBBZd5WklOwb2uSPgFgXv8sGHdQMg3h8GD/tJKn9
	 Yk85ohFsFHGPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DACC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171494654278.18160.8525310088437689147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a768ed2d06a4dca74eec9ff5588a6fa13c5a99e81fcf72489d14b1e57707ca87
Date: Sun, 05 May 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714946542
