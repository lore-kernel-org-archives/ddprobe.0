Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D05C3559C0
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772231094; cv=none; b=WufL3z2nPjTLq6fAZ3JeVXhDxB8nJO+SDM2ZcYNmpcXa6aMXVH9uLhxwWZkQrytMsgqf1xe/adHTtI82IhY26SlMRl90bZKdhVnsY00QsnkgEC/dl4wzeB3WngkE+8ZxQGzI2C1ZfSSAEpht9Z9xAbhqwchBJB4k34M+qCz1Lz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772231094; c=relaxed/simple;
	bh=5zcLNKdmSTPYgvTczZgESi6/L2JEu/Hy60wSIcBLd6I=;
	h=To:Subject:From:Message-Id:Date; b=nx0zknpqSnq4pOljacpGHxROWh//4gb+/wb8BRghIHLhxx9vQFOTKvu6xeb26ScnJ71kpoIuHvFS9Kj7zk/bTbGHLXDbPu9b6YKaLH3gT7JHQsltlU2pYnaX647qaH5HC4ojUiwdmwTlGQmtL1HVsbq/Zd9cZ5MPJPN+AFq3irM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7x/LjJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7x/LjJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ABFC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772231093;
	bh=5zcLNKdmSTPYgvTczZgESi6/L2JEu/Hy60wSIcBLd6I=;
	h=To:Subject:From:Date:From;
	b=X7x/LjJW0wtHWy9ckKJKKmVYRj3zpp3iVGk+CfS/Mq54trysatQLXtydXcrv5SHiK
	 hTquxDcMSZ0Sd2yBEHKMO8QrCsYxtYQJnTMtWVBT++h5KtwanHPnnuLcFtXREEEaJd
	 gI6djaZi3S4+FK8dOK9ZWYtSClfd49o9E0jYEY31ff/ncKbQalQ+Hk4WDxbFDnoz2d
	 WATGdi0+pHZz3D369WbB/XjUiNbhwwd9lHHUYehkfKU9nwOIJvrFPFEmeHEuxRy3bW
	 DBKKooaCqGOQ01MzL02fXuEa+o5keKfwOYg+BzZ7iq6daXOQzELwD3wS6++VF547oD
	 hWXG31J/OvzoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A9D104891E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223109358.27506.1257748399387490099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d61d62ba4190d0be8825807f52ae60309525e1426bcf137f16b2b522fadec7
Date: Fri, 27 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772231093
