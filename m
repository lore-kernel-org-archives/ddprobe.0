Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9EE729AAFA
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777232853; cv=none; b=HOo4tbjORAnplR9AfABvuiTLngPFwwfTJQHeF/CN3ExhcgtZuWU0xIgaUlXSuFZI6SZG46XVdoTzBinybh8t+oe47Ha5Y9xPsDqXYLUpKDcAKxRjFKFJ/zW3yh3ilz01WkNcjLw394reoPvUvwHnEmPtLRThl1lxzAgBOxFGzM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777232853; c=relaxed/simple;
	bh=d7N5fUbX9a/uNByJ8oxDqx6knF7nHORwRIf2+xgWZlE=;
	h=To:Subject:From:Message-Id:Date; b=dktwoz/IagzKDlpR+U2uZZPUBtlhkMAM0s6HxYHlerr8mdglzpoFImJpVrmpuWcazMattZ/dgdspA9RYATfF1eu6cGLfEJgGYiiYt5T4rTc7XdE0rbV46IbWX7oorCQz12N4S++BYmtTti7vwS3gmEL9jffEOtR1CH7+R5Bn5dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEFlhJ/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEFlhJ/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA860C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777232853;
	bh=d7N5fUbX9a/uNByJ8oxDqx6knF7nHORwRIf2+xgWZlE=;
	h=To:Subject:From:Date:From;
	b=WEFlhJ/T67LZytInE49Z0TTLDnSAcHqYiceZLeahr0iJZZ6//7R0vSeNZNsIpJ7Rw
	 c7Bx+kxJVlKNo7zFyIKsWDVtZ4dmhscjzjy5yW+H5//5TayP2aTKbOmY+wl5nrm+k+
	 FB0QCa54PXUDjrDl3QLpGO394icts6IdeidKC4aDCYmf87rL/ycYY26BCQS/j2p9zA
	 J2lxkxoCq5oqkb1Z68PUj6nZ10vAuz57/aT67EnJdZ/ZaWJSb7Y3rgUov2wIKbb5rr
	 UM7cx3n014e+3dNjcpE5DY5Se9XdrUrqY1dUpziRGP0yIOxbBKlhwTzb3JmSDqfi7H
	 U9leT2u9bF+Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6DEFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723285368.8807.2726573807959173976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9fe4f02d415263a5ab759d28f5a20c913d95fbd504951ffc214653fe399fe96
Date: Sun, 26 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777232853
