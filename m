Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14ED380FCA
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780626274; cv=none; b=Hydjk2DnMAz2HZRKUycUHQ9GHW2FDzc1HRUnzAl3RbGVzdVQ6ke4tbqWoFyZKeSoXSmy9mgPqVECe5riLLK2DRnSdQtibgg0y1sy+/UG6mWYNeBm0ZAgcunUDfea63gunRMgsHsdGM3AmW2e87bly5rC0G/TZzuovWacQz0Badc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780626274; c=relaxed/simple;
	bh=lEtRfNVRWG5m3NwsjEKG1qNxwflBhVFFrPqPKMhTnf0=;
	h=To:Subject:From:Message-Id:Date; b=FNaOSt5enTqKeB/zcxDV1WaIi2bUKbMGLPGgtjzDX/IqEOSOHAjbOUgwmOgoPt1SH8IdWauSweSmtlQTu1lZYbJNlsSg6SUwhASiDv5XBZ2JF7iqckv7UHtEgl+v/qPBaatAqZrthZkNjb8r2hqvQvxa38MP1OyH44Tp5bO2py8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ks8tk6cy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ks8tk6cy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06E37C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780626274;
	bh=lEtRfNVRWG5m3NwsjEKG1qNxwflBhVFFrPqPKMhTnf0=;
	h=To:Subject:From:Date:From;
	b=ks8tk6cyasSKHqynvqw7gYdLEv77nE2+owse7S7FDpjynZB6z2DXpa46JIDo6askp
	 Ua2U1MIiOH1Vbd9lUbSthvJren9kwfjs7rx0+CgxbuXgCPiUjldZDw4cbjBOxe3Lzo
	 aHRAEtyIvGGwW91asVk3CCLa7LJJQH7KSSQbMb7Vei0jQVfbXDn4ZP2FDctKa2SFvP
	 zuKSmrqqzfCxgGg49O1RkNh1H2hyKpoOKzsFE+mlAQZISeDqeozvELacTDnUJbHkAX
	 flxWdpUhA+eIk9sQA5xd7cJzeDHvjeUFPPY7PQ0hor40reWOv4cTCVQS0BC9FZIGGi
	 ZC3Y9BVnvauKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D02D4CD6E6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 02:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062627383.26887.8165078786812368609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a7f350fd42ed27f862e2656a23068d198bc83a1f7e11b833a3838117d1e109
Date: Fri, 05 Jun 2026 02:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780626273
