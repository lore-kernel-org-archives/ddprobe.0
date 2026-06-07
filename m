Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB5E18859B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780822474; cv=none; b=B5YiXOPLxnPvfPt8RXc0M0xqT84RQ5r0yH2ucNpdueQMbDLoaSyIJ1TGjqjJBTJg/3IieQmNk7tB9YIn9T15E2QtslcGr10P5M8EE7UwttYCXYe0auVDI+gXX7G+g9RMg/5Jxrdri7Et+oM7NO2LaibeLJQOuwSx75crzMJ8XWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780822474; c=relaxed/simple;
	bh=szSmKZfAltLGaQWRaGa0wo931rG49OwdxSZfxmD2T5Y=;
	h=To:Subject:From:Message-Id:Date; b=CmvwXpXWXZ0umL8UDz6W+m4i1iovN403c17eSCyi08BDHbwsiElbVUNZdDiWw5OgOl0aXCkk/0CZdjgjhB/GCB7Rkcvj+ou4/vgW/PdA1LzIWKRtBpOokyQfOqOJRqYnifRdzzppEV6Bi/GXtawxK81OKc6Ri+mioRDdJVV59Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfuhAZL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfuhAZL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3748C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780822473;
	bh=szSmKZfAltLGaQWRaGa0wo931rG49OwdxSZfxmD2T5Y=;
	h=To:Subject:From:Date:From;
	b=GfuhAZL5gUfNqdt+uK/SSVFP9v/S23/5RFsUWrhvNzfWMAk4BmZwivgA3ro642vVC
	 VFwCleCRosgVsZrLMJZalnClO+/gy+zOSbt7LGyE0UVmTlix8GsBx+2lhmFSZC+rYR
	 oSJ2evgGG1efgBUHIdpwikm+TtkAtFRkdejpyKAoJwlzSDPl6pg9DGYBSAfJVYVPzs
	 CP8pbf6wi/08d9LUq+Lcryv26NRUnFDoNWaIRZSrtkdNEkgxOswyysPyhmS3W85/p3
	 X7drXiQ8Rwq5pgCevs2O+3jP+xtwtm/zkkPlctvbAkLSerDLraChtHFgjtO5JXyVBn
	 VnV37vow2NAzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5B0CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 08:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082247369.15479.3126453151539682706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f944eb6ca266228c173d0d758d4ef0e4fd905288589fc7f577a6840ac5b7a6fe
Date: Sun, 07 Jun 2026 08:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780822473
