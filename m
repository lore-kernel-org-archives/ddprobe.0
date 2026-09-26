Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3B03BB57
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790400034; cv=none; b=ZTmhZ4boQZ2+FncmQKLf3whdmDA4aSJzck4FFtlvYbbrhvtU96AFMrh96DETMRvew6IapUDwLoETQklZMv2q5exd3Ch43Cs6L1/bW/gywY8zcWitssGdpi1qSmsU/OPuq2lx36nYP1xxm0rfqBLa4ThjRvWQ92ZBR+zS5wW5PxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790400034; c=relaxed/simple;
	bh=kx50JHATAh8nzaz1vK7NnDxMD8C0Ry2H5HDjmdC5yMw=;
	h=To:Subject:From:Message-Id:Date; b=nFD1ICCrqusgf4SL6O14xHHvmK9MfF4cz64C+s+Wy7AUn33NWhTz2yrvi1//GZOsNxTJShARxJO6cOBc04qU0w0pbR9gLpQZBS6nuvTErPvjrL9OobenAPGgjnE7RCGcfVzba917V6AHjyYz5q4hoZm4uALFBCkh9K4kq9OP7/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHOnrTcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHOnrTcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE63DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790400033;
	bh=kx50JHATAh8nzaz1vK7NnDxMD8C0Ry2H5HDjmdC5yMw=;
	h=To:Subject:From:Date:From;
	b=kHOnrTcSnZUa3sosplLZeBTFManvNMKrKOJQcUcB9VsYPZVXsIzNX03XjpajO67yE
	 RXJdV+ddUrrVrE2GCSc2aFTIjSmVZP1ox7vhKqKVpi/F7fwi9CziFgcz8yXikjdvM3
	 e2wPcE5Ao7O94VltT++mNf3Yj+7ijzWXS61P12JA4zJc95M8bgNJlNGntS8VeuaiG1
	 WKFDCNw0U40YnwMoNGlKoGtGcrBrs6RJwPoXdM6mw4Cgxxr8EBBE5e62ywklEZJ/LZ
	 dddE45yvqhob4TK/oxEQGlV36Sp6QGE0FsyV92ARh/HEjlhYqOIeE4D9NScUY1ISZ/
	 8MjnpRWOfyWvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA746C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040003368.1664.1426881081716603372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d7433b8d8acd37c8a6783f5577e1555ee3d55b88036670ddc1b44f90bad2a0
Date: Sat, 26 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790400033
