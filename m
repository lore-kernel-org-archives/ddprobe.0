Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFFB3AFD1D
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790694034; cv=none; b=tDj19uEOlliq1QJGJnZoWmixnrqfdCJ94souTw0NvgBKPvf22q0cbpQUOWLlD2qy7GtuvjfGjjcPtZNvlu6Zsj8bnLoVgVYLqskU7BsxE/oI93j3IKKlztz1vK3a2OKRucvr8mN8ftsNyQv3S6cEwZpzQmvi63VSVH4UA57TJQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790694034; c=relaxed/simple;
	bh=xwLQgZB/0nY1hBOmfTdjuadx2emyRnwLa+trjz7SxOo=;
	h=To:Subject:From:Message-Id:Date; b=IlPjThqf9jlrNJ4RTfFbra4EL9b1zAvm2Nrtj3iyLi4gLbna/f69y6kHMOYMDncnWAig+WrdqXBkKT5BMhISJVF2kTN8JgQX3LLUnY6sLzlSPW5f/98NDCC6LAGW9TIYEjX/BlW+bU0hiPIWfnuXB3v1zNsqz/BzmMntNv0DNB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoUxTo0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoUxTo0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5DCC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790694033;
	bh=xwLQgZB/0nY1hBOmfTdjuadx2emyRnwLa+trjz7SxOo=;
	h=To:Subject:From:Date:From;
	b=EoUxTo0crn2444Verltd7BMT5mkpRRgVDGT6krUFP5blWH5f3aFZ4iQavEt+WvWG7
	 tRsIZs+CndEP7H8MWQcEEUzjH5HvVMoOhIMp0+jGiMtWD2OxqXk2f2uVWwJBfQmG++
	 N4PsbwqnYbSrxlwup7qfj1iCrdPuDVqnE5ZlWGNxPrb1FzaZFa4x1lf0EyrmKlGtNQ
	 0sVcOFX+KlRSG3pV7tReukCu5Gf9C0KFydfGGxcuHwAkdDB2HbO8MOAhaKIAGycH9p
	 ay31QxAnNG/S/tATAv1uS6UIlmzs/X5rGXF+F+7XVSJRmm+BOoQIeyqX+MU66v8GqZ
	 SMq0Q0QV3jFpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C95CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069403368.21932.5477395265345417441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c09bdcf38b7e6d9d275af7ac0bdf09c5729245951372d368c39e18e88d3c40
Date: Tue, 29 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790694033
