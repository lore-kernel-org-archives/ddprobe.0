Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BA618DB2B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743138595; cv=none; b=fndQUFVQJS0BFCL4UTvlc8rzXqViDaXNpbdyrv2sfGYKtxIdCf1CRfP7krR9N2v7XhbComRw0sv90JeWGhSnC+SHFksbo6hPCB34xrUVGD5fflTh+ZUYTYtLyRa0jsLj3EGWcX96LuwdpNd/3HPLsGY+7EkfvqO72wq7rmSLiF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743138595; c=relaxed/simple;
	bh=asmBzDcjslaXv3d3AFZqePZg6Tx5zPKzrCVWUHq8QMI=;
	h=To:Subject:From:Message-Id:Date; b=nmuLSS94qtAq1PqJzb4PIbxBB/FTCWF/vfvMmi3sm3jUKPwd9o/s8FBWdrLPf13PaRGuMYOGcbzHZ0tmTuxhhH1q66ZPgTN90OxaJxjiuI0NPVrEiwVPtBdo5ONUsRJye1+WmkJ2I7OiVpVPrcOGatq+93fSOX3YD/IiGLlaIgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJcgsOW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJcgsOW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9957C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743138593;
	bh=asmBzDcjslaXv3d3AFZqePZg6Tx5zPKzrCVWUHq8QMI=;
	h=To:Subject:From:Date:From;
	b=lJcgsOW28jfQNg5APL9XFSez+Os2TbjjBRaeNEq9zVrYdljPfr916VG6vjSHaFy9R
	 4JftNO0lzedUWK01+ciomPwj0h/P5JFujT5blKJimvbTqBUlCMEfh5BoB25GfBMXz6
	 IA/4iFnmleYjx1YvILhn47T0MPW5VbwO4AT2A4C8Sva6Y1e+42PO5Jw8QD8eMNPoqF
	 zau+5x1SORQcKzqcwRx14JhmLkmaGQJi2vNyhhe+NqBggVjg+pKPwdY0cnrIalh+BK
	 iP6pqmlrt7w7GDsjhP9lzxsOQa0FiEBai95Ban9peyFDvi94egLBFaRt0o0AB62ykE
	 ZHqDvJxN0sfYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93972C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313859359.5636.12166040357244695578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0891263d841f947d83e96bbe6d5c12c46f8b157bd31fec6bdcf479e33381c3e7
Date: Fri, 28 Mar 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743138593
