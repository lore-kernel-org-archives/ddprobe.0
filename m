Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0492F747A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785004834; cv=none; b=szZquy/m6yJPVoq5Z+jpwY2HCbRnqbVnfYaZ+jSi/mu9W+rsKgrSdw9L3JN486aRyccb+DLDxJIepfQjn/W9x+OBwDg+xNfAMaIMeEAPSEkbjGb7xohtrwFYTl3X3LD6fI2AByh0py0UqPMtPrEU4RunglKSXOAip4sDcvzZfoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785004834; c=relaxed/simple;
	bh=X3NNywDceYEjq+P3dJIakGDcU/2BXXpa1Bpd1yQOD58=;
	h=To:Subject:From:Message-Id:Date; b=B+CfO+Hw3QbuMw2H+XYiyY2BNBSWgO9FA7fZrShrdTS/wtBx1Wxv2nkhn5mL8kmDK31Wu0I4W0gqlvBEdZu7IkETSzbqK8Xocyg6Ms82yNqrxhF8kWzU88rsahBmvht7PGRv6KpTsqypvoF1cIfhJl+a1UAuGaQ83NzeaXvl+ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+Sz5FmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+Sz5FmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF465C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785004833;
	bh=X3NNywDceYEjq+P3dJIakGDcU/2BXXpa1Bpd1yQOD58=;
	h=To:Subject:From:Date:From;
	b=A+Sz5FmDUgCl35HiyklLvmO8NVnk1K2vg3DrW+o7XlSS3pizotdHwpcyy+MKh1yv4
	 lGY9xfQQWSQEAWAdMA/EOlHXlPlDlTwvqd9RRPoWwix4YAGM6FaBt194zL0kGNvjz7
	 VsHOjcmNzWKqPdmiBJu3ieDiW3CMMFNOQEeh/vPVR/unyGrObSITeznrG01YBsK2eR
	 qU1uXlrE8ZIFTXx8PcycFUwPlNQ6zIA/bGOVRtS3egkY6vguvf5sgFf/u6Aq/fQJpA
	 BG3pt1/thYYJWiXu8hg7QXbVjFTvP3TfXUMmsWx8sjAdiVSP6fbOKWZiujo+UiBYzX
	 IBiSqeWwQsMiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC464C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500483369.26975.8654431095292538380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ef52ee74a94db4b61e75a8e6567ec2be1204fe4c83872ffce9e2327184592b
Date: Sat, 25 Jul 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785004833
