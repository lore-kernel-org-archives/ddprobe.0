Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2028632BF41
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778502034; cv=none; b=Yfud8NJLU8ekwwHme0YqWUDURphp3/ZUvy27Mgwvtuh8dReF/I4pYQWrLv7CPvdpu5yWVDHKZk5+xQE2IAQ6cEWnrulK71OOBT80036kU4ru8tlHaot6zKlxkmMv0XTCZ2414AX/aiAmRv02P3npnePMHYg+ZW8iUQdlY/DjOY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778502034; c=relaxed/simple;
	bh=6bAV/JMPv7VFIV07vGtieErQZpLj1C5VcECVOV/W6xI=;
	h=To:Subject:From:Message-Id:Date; b=ZL3oirg1Cl5t4LbmCSacd902+vlFnsZuyfyf7u4avGz1R+TR14fgVVsJ8EcVUqEqP2qBevysgsn0Y7ebSdwjbV6RBS7quI6dB/wqeUtZUDfqfP9fxQcemKuBD7+O3iz1OWaV5NHkrqX5zTv/4/k9hXzAB1ohZ75CEOFC9kViN1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOVX4hGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOVX4hGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB63C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778502033;
	bh=6bAV/JMPv7VFIV07vGtieErQZpLj1C5VcECVOV/W6xI=;
	h=To:Subject:From:Date:From;
	b=nOVX4hGW71WVDJxQbS8SOla3eY0s3SDeqVQCQdV7Ky/Gi6e2R+eJtZeAeKvLPX2U6
	 zw6VdMMboEfz2Ip7e4YBWBGeWLxcLGXDG0yLwMpWiu9MMA+ilVwAtnjmNKZIWyOVut
	 oRP129qmdmISbh6zBfGzSi9Oy4kN5NAuZMoA87FDII14TyKRJfriAbCmzSDG1/W3oX
	 KATV0zy8ZLpE//65qy+2vpOHOOovcwNPEtXnCm8tpO6P9jGvm610X3BwGWgdnakJcI
	 nMWXqKHBlJzjgzXKzHF6labmayC1V2wPVwEOsnNqWvadBhrQ6zoZ5qTSNJ5EP/zsnJ
	 qpOlQi3lmMCgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE80CD37B9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850203369.31930.6808622892214458009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d1bac7fb85c2975ad4b2591d664aa7623129150ec5a12e1f93e4400629f6f3b
Date: Mon, 11 May 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778502033
