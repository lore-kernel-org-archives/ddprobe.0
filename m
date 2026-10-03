Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DFC33ADAC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791066035; cv=none; b=Ntg6UED4NBKa8cpo0v4B3LvocRXg0n+Ufs34Sx0SzLoDa7r0xzdrDIfllPoKXiSD9oI/fyV+60hs102wyjpwQon9GNwNJC7f855dRLISuPUaK7Jc3rOj/69imkkujex2E10IdcJGa2NunELLK8xQ3Sba9hNte5vKoi0cMSUsC3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791066035; c=relaxed/simple;
	bh=SJ4Ibykt++fIxzZNpUnG7XivDsV67oRzpvxXIsU6XZ4=;
	h=To:Subject:From:Message-Id:Date; b=fCf2y4RVWZmKHuc/D9vB7zEmx1/MeO3E/BEL3jUiQEOoj/p4eN/bmNLf9uGWtMlZoPT7d+jCBZZ+IdDYo+HH0j+PAqw3sVWnfVdgAN7OdGjs2P2RgM5pprR76fqQQTuouUDv1q/sU+yRwIVKLsWQD/sCpKGbIi15r6J7qj1HzOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gT5qZ658; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gT5qZ658"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D54C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791066033;
	bh=SJ4Ibykt++fIxzZNpUnG7XivDsV67oRzpvxXIsU6XZ4=;
	h=To:Subject:From:Date:From;
	b=gT5qZ6585BgPnlcwoYqO8qXSrGAvOH1gzqIELME3PM/zSWa3ExjwpKUnpvKmv+rkI
	 fabCJdBMWyaomPBJ6xRU081YP8X8n6Roe8OF3D83haUauadgtTrPgypcKwaZ6NqkND
	 R9XiQO8hYYX8Iazp5D1VYnTm1SJFgQU+MDFH44hh8qUnnpNFx8nFizoQstuRctPUdy
	 z490hS0KesN1+zo0SXE/tjIY7Z9GM6ge/oFOMGPAf93PNbpd53z6b6T0f1pnrbrIrk
	 4cSNF65O2Tzck7l3XveHAWYcBjFGenw90MhKqdoHh1I9sngCV/Ltb+QJzFx85wGq4X
	 pY00BXbvQcF9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA13CCA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106603368.9677.4435536351597642222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555a64bd0df4e7667bdb2c09884a02476c32738dbec499428b022b462311630f
Date: Sat, 03 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791066033
