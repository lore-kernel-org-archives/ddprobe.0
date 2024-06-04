Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D5B143C4D
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717541783; cv=none; b=Z1q4ShlOuumIBkW50R4JHHYRHQyt/VIDLrwS1ra4BiYqC1xBlalgaoPa9aopIcN2lsrfBOMCOHn1dcuW+JFFtLNElgK6p0ulQC6Ktm5vBqNc74p3XEr3/gt+amFitVW8qIN1qATUOx2mmkWs3r+e2j5g/82zfg1971Qa6JSr+w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717541783; c=relaxed/simple;
	bh=7blPz7AZMU1ghLRh8JVXiNgrpokjvxUeYkvg1tODPU8=;
	h=To:Subject:From:Message-Id:Date; b=avKSmwNU7epk3P89/4MuE6GYHDRyS30AiMTh7b8JEgTRWfpfXsZuRQtUPIlOMGWHjm/BwCpmcmIe1hxeGy/EfrO/PDRH4ogmJJWSK6glPJnEfTGWz2eniRuV5BH20AT6J3ugMFGFRVKejUzRnCulQ21b+cg7F+/qINjQZAUAs6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3+DaBr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3+DaBr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE841C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717541782;
	bh=7blPz7AZMU1ghLRh8JVXiNgrpokjvxUeYkvg1tODPU8=;
	h=To:Subject:From:Date:From;
	b=a3+DaBr3CEWfdPghHTksJiA07rgfRZKI1pW1+cCh8ITsV844+5WMkQkWtmu0ZC12g
	 uh1DNZ+BzYO6GjPgH70aZHHHHNSGwQBn86+E/jP4neAVZOZrGbL1L2OxZQa8IYL1EU
	 L78sUbUs1N5yGsJs9zBn78FD2HI/nFPueK/7t22IXOoTKpAo/BIomA0oO/YGz0Fwgl
	 F/RKrK5zakp+AO8+d1UHeXNznVKY+wS3O3qsn/HILXQjeqZz/xXrcAsmfRluKcfivI
	 JnhMAIUircmqkZ3lNcDaMdLH1F9QrZeDo/8RRZ4UIIrT4bco3Wxy+1qlKi3+mZ7Efv
	 GB91CU0jS+xdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB07BC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 22:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754178275.17678.6346733173135531808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec567ce06205cb4e264a20ab668b59190c5571ff98e41a254e09d40882fb23da
Date: Tue, 04 Jun 2024 22:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717541782
