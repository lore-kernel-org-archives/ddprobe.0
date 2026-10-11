Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35067175A62
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791677434; cv=none; b=ekUFfJGq+nLQUEB6rdoTLPhU3JCYZTkfC5dofEe6g1/dddvVpvevJyxlS2rfXmXZL5iMD6esxXUFpD0pqB7gubyyvfscFIblzSRPkDR2n8JxJuh5NpbTxEyYfrDDflGFQBptMuorQ1JrctA8T8FX5bmAirWpxPHtEuGZDAKW4Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791677434; c=relaxed/simple;
	bh=6IBvQvrsBJqz9OSyNUTZsVu5YWJ9HhUEfbKXj1BOdM4=;
	h=To:Subject:From:Message-Id:Date; b=kS6UA3OLV1xrKneWdxNy6vh+z+MKGL2rkeVQciyHamtngPstGoKqexIkqxCmk1egpD7sMWbtONHbwal3Jn3WSNMfaR7BBj9c1OlWhfRiOPrQYipMZnlPKybVXoWlBGfUrYLJJd2t3SPqpFFlkqzY1GwmlTmsFvgeRENe7j3dxKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DdKmNo2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DdKmNo2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB97AC2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791677433;
	bh=6IBvQvrsBJqz9OSyNUTZsVu5YWJ9HhUEfbKXj1BOdM4=;
	h=To:Subject:From:Date:From;
	b=DdKmNo2ciiIG/RqunwB0HHDrHFMx9ffVc8lC5Qosntk2dNek7h9VxZtDBN1tSyU6Z
	 kcITXMfZBm6M1jXpg48OJGoCnYZpJo8YS3GnXe9xxNnY5OcMmcvEmD3Lg2PSPzXtCX
	 CSyv3Je+uPp2EreBiGGacaKia0S/Kv0L/ZEfZHjb1tyCPzD5xpz3gCBc7jOtDip2Xf
	 cEK/kINm9SDQEY80e4gJk6F1KsPWWwhBJGNtUqgodPIezUoWrCJwfzu0Rr6mXY1zq+
	 zr2pt9HV4+LXVLBAJWf8R8XGGUto4G/nG2+deSyxI/5dIMLC7N03mCGv+1n2lXCHMB
	 Jm/f84zI+FBEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91A1CA9ECA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167743368.25932.15310147519053724605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 067f8e5a89bc9fb82344978f2af3dbe6a11c7d3bf051400f560676c51d4494d7
Date: Sun, 11 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791677433
