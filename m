Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1339379EA
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750573194; cv=none; b=cHabU+HJ5EBmBH5CPTeEo41aZs5osf8Gbuoa6Co3k1SKP9K1+YEPNZ/QJcF4dHAXoyldQHmkH7OjR96NKSnUrTfykD0yRUgSuM2DpxKoVe9nV5IVlprMRMB3hArxMUTC+XCJF+/LwwesjUAe+ozlMTP7wNnXZPJDurUVIjgGrqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750573194; c=relaxed/simple;
	bh=0UZ4G3LO5I7pTm9kjVGbpIUf0L4qVuQFHGaX3pKkRps=;
	h=To:Subject:From:Message-Id:Date; b=EwtZOXeBzZwsDa8ILnUilpYXpxNDhC6+crSRmtWNyBHUOirmznZFLvMoVp9mX2wI1T5WcMWSGYimlgOAFC3khRhjwCZmW40ouggSAy72sDOFXrBreEB56szmmnoQTFOA1uuhompS2Tg1x4v43iqPBWQ0vIKvuT+sNfpliCL81+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/B/I2iN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/B/I2iN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C7BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750573193;
	bh=0UZ4G3LO5I7pTm9kjVGbpIUf0L4qVuQFHGaX3pKkRps=;
	h=To:Subject:From:Date:From;
	b=o/B/I2iNhRNkeMhieBGl6+XUNfve/CmVij7YTaJoF6uP0RwZ0HkcYhpXUjgWj4Kzy
	 d1WNi91o6iCT6UHd7wBRnwwawSgh/uAjoplLy/Hke8mDBcmS2o4r0rtGZDmxfllXgb
	 IWUGP47NpiPLJg/U6QP70a+56nis1B2hdXrVtJInAyubAuNgWz4f4wUk3FL5euRHhx
	 Sk+/4jmNpCdwJ/IDJ/F2LyFHybXYlk9McVeJ1BPHOxTZauFh5z9xhqMtMnKsMRB9vc
	 8eYrWGIR4VMlP7KeJtrmEmsIF7lO8oL63AMU3wjLdXLSCQpq36J98DWwAtC9qv6VIN
	 FFJrSbMWKbNgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC3C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057319357.5593.12460453750796346019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 242090db2c9927c3f2189b868aea9fb979ac6b0e065acf08a3ac8ee1009f36c7
Date: Sun, 22 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750573193
