Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD44153505
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720560383; cv=none; b=oy0j648/1FtMmtN1EOr1EB8Q7xkBrIjk5pqwZci4u+JAQbeU9SQQ+rH+2sIM/TfC6AzDW2s8xauw0hVsxO64UXbPwGect22WeevfX3PMcoqbyoY5slqGt4pktEM0CXYVrxUw2xUzmLHnNOw1Hny9+U/j8XXv9yuVs6mIaDtZ7BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720560383; c=relaxed/simple;
	bh=VLuSlWsH5iBkMdf3g8RXvGBjuqL2DG22fMYIEnVXRaM=;
	h=To:Subject:From:Message-Id:Date; b=W8EK/cE+rg9+foIJAkCKwVAHeBwLSbosuzXjuM/2rdAYE8amvDPLKiPUsM3vjV3O7B0c5bj2q60ic4uedffVogBKz7EF9yP+C00gHt9pCMOFbfsNLc6lYi6mye1tWri3f15F5UfyEToPZNxipJWpDxISm3/gc0wg1BS+o3PvKnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZ5ECu4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZ5ECu4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FA1C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720560382;
	bh=VLuSlWsH5iBkMdf3g8RXvGBjuqL2DG22fMYIEnVXRaM=;
	h=To:Subject:From:Date:From;
	b=lZ5ECu4grHbsgSnr7bxdKi7lmuaJ4XQ90pQVQavYzzXlynTvLDOo/YxGQiZbpdVpD
	 JHJDXcQ6lIeKh/qpAdfqAb3Fh67UDAxAfL3X23/GzGUG7Na7bxiSwSaMQZRGBTVHHB
	 VZKZZgXERatsQ8Pmxt92Xv0Vq48at2n7jVi4cr++bGflV+bhQf4UnYMBvGRk2av/8q
	 x3zFJGL2WverdeN22F3AuJcIdgK6dopYRIo+YvelySu7rvwtT+njbSQKEqJmFjGGyC
	 FXeBspla2ou9jKZHQzoij7M7NZDo3/QnvS210je1GkT/54id8gyhZH5+uhvQ2ACmtt
	 ylyvtISejnbHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7219C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056038278.1797.5614975267014873560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b091f9bc328c64a8bbefe7d38cbc4d559d3053f671ebf95fe14f3b7e617a479
Date: Tue, 09 Jul 2024 21:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720560382
