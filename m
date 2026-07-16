Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3F330F531
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784216314; cv=none; b=lFNKih74HSJk+cWp3/Ax+hHjz4B0XQ6EY9PHsKVXNOTfFu8CUY6M1Z1+8KOtcZvQKSswoEJkcpOIexNsMHBWFOjNlM9HrLiv6S+1A6ay/XWgTPPAtobOWq3nwEf4eRMmmZsHo67c7LK2nmVQ5LHv1V89u9DRs8kUNM3Hd6E3Qns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784216314; c=relaxed/simple;
	bh=XoUQ6Pt4vCU6NSSGyKX1HQxwzn3QWOYO/S7oqke+cV4=;
	h=To:Subject:From:Message-Id:Date; b=rz1rXHMV2Jmw2NXBmuLwLOQhPZzOZDtiuqb9EzPXnaFX93P/VCv+stsXUsLLGMyVK14CH57/SG+UJ5wXki4+SaSV98LTqL5YWllcWoeBcYF80NV5ON1Q3O6PdPUzpds1TQaaDifjWN7L/nTS06CirPYXMrjU5x2Ms3Oog9YtCzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqMd2jPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqMd2jPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEC2C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784216313;
	bh=XoUQ6Pt4vCU6NSSGyKX1HQxwzn3QWOYO/S7oqke+cV4=;
	h=To:Subject:From:Date:From;
	b=jqMd2jPTK2CX9D/Nbnx1Ncduw7ugkdDmGmBuIEcYTAFkh4GbjEJaMD9RI/qL7Crjs
	 eYExGK8azEnMsBglo3DB9yBYpo2p8rqYQ8fAsQjqv78/TVYbDc2ent9LFqpEMsIWwo
	 Bo2cyww+sUv3Mg4frRDYKIPBWxmBCLF7L6mrNHftq/uDrliiKCo+/qfCCk4VgWVywv
	 PYX6byjkTCt5vzK0IYygvyep7GnP2bx/7d/sHEw33FC/ji+aE6kB0OypypoEYt23ND
	 HApB89cvat2Ch5pIx5CXdKlhewWq83m39cZkpFmpNC7KTUPAYJhfipwcZmEAVMX4jH
	 9d3DobrLbGgbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B6CC44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421631368.15293.9829478419026931062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3751ce6fd89aa564ff8f7f15dabf8c8c4da441ee36971599ef968b9c5e8b1338
Date: Thu, 16 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784216313
