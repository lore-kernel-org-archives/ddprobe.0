Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C04D36F419
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780629274; cv=none; b=Z/n62UhvZwX0apP4R5hAeYEyuRnjuSaalrZIVTBOU6j4iuf5EhDHO8wAMYPcLlGlfGnyL6CbrEcLWl6AP3Mb5LMZOAc1jaG3yvO/1bpkI9SfOO/xl2J9H1GfLs7vJ1OPibk9XL/qn0Vh3JkZUTd0P2YqP+Gk7lSGMOJISPvsXPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780629274; c=relaxed/simple;
	bh=3JYvlbJYI0CEmjIQzAbebUc8fx+Lrcd2I3017/36aww=;
	h=To:Subject:From:Message-Id:Date; b=dZDmhZAiqeIPmGtlux6mU1LWb7PDCP6cc2zZqL58blcwPssdX39ZxmSHsHLnjpcobpIcbWDro+MQv/9ELxu9Km14uOHLz7xFhMGEYoLanTCIZW4dQHM164gH8lIu1js6LF03oqw3FwSiirXzhzhjC01XPI5kQSoEy63dTLSrijE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBmKrcdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBmKrcdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14B1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780629273;
	bh=3JYvlbJYI0CEmjIQzAbebUc8fx+Lrcd2I3017/36aww=;
	h=To:Subject:From:Date:From;
	b=cBmKrcdCcnTTTpYTY+yd6E+k6tUcTOkVXmdKmnwf952qEhf0FkI+KZzQghJuwGvtn
	 7695Jg0NPU0lSs6q3VOgEEMInGhgu558mOo1C7S/qlGBtvU6zYk1jEQPSjzsiuhPGs
	 Sn3Svjb9UqdV6LnoJK1ZjCTFRVG/MwJfJ9vRfiMJfskopvl20uSbzTubq0YUCbgMBv
	 A/PeHhNPvG8MWHNmw5rV0g1BkvO3ypvbz5Prd7UiW5wRjOOH90n6Vaxrkc7sPSc0fo
	 Mx6XfAv2SQIGRdkwM3D7UcR63qCDcY3Wbgp2AEdpgBjaybhVz1WdMY7zk/Gm6d+Pqm
	 7AbaE3smjwB0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1788CD6E75
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 03:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062927369.2639.18205685857926836280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eef2db3f5f7f82a34cf9995190045bc0477451ebfebe18220be849849140d25
Date: Fri, 05 Jun 2026 03:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780629273
