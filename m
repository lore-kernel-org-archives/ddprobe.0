Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8E831326B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784298514; cv=none; b=NkoThBGSX/+v32x1CJjIvvqT6Q07U/rdbomadJzTu9VxRrY1nMTgl2wOFdr7jQpQKuJxuscyPs/iX7UsGiA5SZXvz3gCqNHFOSeg0V/Sl4NkJ/HIN1tWii1TWm6GC99r/K2FsxR9OB+uCk6R5GXmkXYYbaTeauosE+qzNkFsCGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784298514; c=relaxed/simple;
	bh=RzYduByXo3k5VEst284Tr0XRv0WoyPfjYycwJHRixVs=;
	h=To:Subject:From:Message-Id:Date; b=IhoPaCTGZpkDZ9qIWfuR6HjScwB/9K6X2zcQr7Fh7HRypoMPIrd6RI9Mjh5RArCS6BUwPPkGyOcknesxqfox/IX/KSsKZ6p02ciBzD3TZ6ZyR6iWo18Cj6W9zElZL0k6QvnU+LS+dovRNfE0GPqRi+KhAK2Brtoh/SNpHPgNrk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0B6d5bn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0B6d5bn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5A8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784298513;
	bh=RzYduByXo3k5VEst284Tr0XRv0WoyPfjYycwJHRixVs=;
	h=To:Subject:From:Date:From;
	b=C0B6d5bnaLyN9AaBY1xNKkFTXLq7yUnk4Wnq661kKAEzrNEc7VIC6zi1kaVTnbBIF
	 dTOZ66U03cXK9O18JPV4YMPOYz++AHPUgRGWQss2quu9jU9Na3ELHJx5WtolFEVXL2
	 CMowyU0o97EASUEyYZAbwgR1hTpZpekcBiIcwRR3RrnoR4kxxsM7Z7oU8NIF1CKPty
	 5ynaEvSAN9JtPcBhH1Cnvg5OTUb3zKc4U88IlF1cPkq2eFBDqgRnzFeuTTBcdALZRT
	 3xpOOFfK24jQ65DJR05Ego8nABFloY+EtXNWX2YSofPqhqjyKcBrd74e1Ri+kzWcKB
	 GYM2QC87eo8fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F17C4451C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429851368.25836.17473767637643199629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eae9f574b6639e584cbf142af2418a399f22d545df3466233f78166b3c47a93
Date: Fri, 17 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784298513
