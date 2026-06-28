Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F193BB4A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782624514; cv=none; b=t/AkZMgMmh10hKHIF3Q6hh+pDW5eHzPMeKG5RIEDXssi0sjE6rGUKfY6ACK1CgDjA5VHuBFaRZRHZegLg2oRDCYdTo9V/mcQHOMmluV7FWVhIp3ExDA4kNew/laEFqWmb7eCdydFFvsjaektZTbOuEZjzb8eNUWmTmEbam1GQDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782624514; c=relaxed/simple;
	bh=2iGHKcb3opnFu7chYXQBPVBCfsaI/vJnQfdGVcOI8Sc=;
	h=To:Subject:From:Message-Id:Date; b=UX76xLA2qkUsWJOJZuowh9pyU739ywlD+tJGRHh3EoqjrIwB+28Np81yIX0mhn8nuUSU5sq80Xuq+BFMKavIAEnVyWcskmlpmyp9ZCsC+omu0OE7xrvbWO9u+QmE6QEnQ+T+KIm58qW2ScpUDngXLqCElHwiLXRiYh7gzdEShbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELvDTfMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELvDTfMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1404C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782624513;
	bh=2iGHKcb3opnFu7chYXQBPVBCfsaI/vJnQfdGVcOI8Sc=;
	h=To:Subject:From:Date:From;
	b=ELvDTfMB+4pSyC4dtmSjEsq1GOMAqUkJMWOyeSv0sMyg5rt3e3vYPPnbskz6HU7jZ
	 dVsh+y3sCioTzB3IuP5W8c1c+/ek5zfwSqmXDAn8jkmYxp+C6BtKuPu+d+zNlAfjjr
	 D1UQmyhCIlbkmytOcqCcXkmegZWv8V2dPDegTYUSsCysdmwQTtY8CLC73GfPXjo728
	 V19o8/GL8NfLfqOZvA5kKcCGwZeeFedp7IhbxU/e4Sn4WtDDr0ENf/S6M3qVmgNNWK
	 lqP6+tyTM9SO/mwP7k+SDidhjhjr2OouR2ScIsttsL7YIfPPUC2ilCfDCFWvA1vSH3
	 Y0q4ZWLGNy+bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0469C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262451369.29239.11695806939303406741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0bc5d4377d6a70dc023d3f3d64ac468ef5c2513320d16d607bdcb2f1275cc89
Date: Sun, 28 Jun 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782624513
