Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEF82DF6F6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772339694; cv=none; b=P2Rri7SN+QJvMSJCVkHKR/wIL6GVMNTMyrV5XXuRL/GtykrMhIIxUR5yyFLtiArUw2pEakHoieWODWdxJOPqE9IIbSuYXEtUYRT9w+6W3faDLXnBltVGa2Q9hMryi6+cbuZDY3lqzIRzxi8mghm433bB/9qVSz8jfBk++V/Ag4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772339694; c=relaxed/simple;
	bh=rJq73pXSSfxTZ3JcpqY3u/5UFAHcBt1KCYckEAtezO8=;
	h=To:Subject:From:Message-Id:Date; b=SDKP1qQK+saCM1L9LzfN096/R9RhgfhG0oOrD8ayig1IVqlwYHzBHeIajzSiTkySj9N1m7PCTOgVSWzwNrFcsat72oGiF+j1NDIs5fe/iTiLmuLSA/x0fitXgN5CWBBQeWjdwYLQvQFtbHctiUFZvX106WDLT/vmIUIpcL+2rz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPh+xVb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPh+xVb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C252BC19422
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772339693;
	bh=rJq73pXSSfxTZ3JcpqY3u/5UFAHcBt1KCYckEAtezO8=;
	h=To:Subject:From:Date:From;
	b=rPh+xVb270ojLu0Z3/y0lKJ/CTXWmyV9/edTiBqMoyC7XbnNR4zggtC6wf+WP5IBF
	 pJSk6PbpOtuM/TENrLyEyCUiS+Yg0WqRVvY9CUvsyWGNvMbmadzt6sEdOMcDEvnn4P
	 LLmNk3KfWI0+/69tVBPFiQUQbZcWpPs28BxXqj3DqK0/qgJsNl/erBVY3s+fd30GW9
	 3FRaceJ68cXYA1RAKMPZapLKbh27qQ2ZUrn66TzPKSkax+87Hu2owJYXWBNaH6jTAU
	 qRYBhrueSPCaQ8Eq2SBWfzLP+OtVxncPp1e7yhXQGOOWyRXvrfQcL6CdJ+ZS32C4Hp
	 2mQNGEQAtxeOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5101FD0055
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233969361.7909.5452450280009760986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a4ea20fe976c5af70b17417f5042f223cdaf17b3bb60657dfa3a80dce0c864
Date: Sun, 01 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772339693
