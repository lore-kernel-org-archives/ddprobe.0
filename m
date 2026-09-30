Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46292233942
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790734234; cv=none; b=i+TDF0NgMI2bAokzozJrRQTK+2ur9HAvi3UT8OMUYeJFPJwSrtdcGCta4TlQDe5PtV0e2I/usQKCz5+5KvbPNZK4+YqSusXxhtZHYbny9XG82gwKnluS+zf19CP+J4mBsaiKs6zMt6AtQOlt/Y9bLID7FNvoRTicgGvBy7DOvag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790734234; c=relaxed/simple;
	bh=BJKl8g8vNpBexnU3XnddJjestQVpYLb8GaYeThFPbs0=;
	h=To:Subject:From:Message-Id:Date; b=kjyJBJ7+M0HuC/fSpKN3zlQC56nZOa3j585bM34CtL426M5sOMweg7pYN+jcReePpngX49h3G3zViaW2Hr6TtYpqNoOEN4gzfRmVrJuwkg/eP/9WUStmeBHdkRPdE6lHJHk6W7Vk8H9NgaM3KClYTTYaAk570UAds3IirzAByz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkhQxReg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkhQxReg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC250C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790734233;
	bh=BJKl8g8vNpBexnU3XnddJjestQVpYLb8GaYeThFPbs0=;
	h=To:Subject:From:Date:From;
	b=PkhQxRegW655avi0W26/075r363L+5Qb3wrWZgqHWzWSwh4dD3Wlj8CfnoeLlLjkq
	 3gv9ytXjoD39YdxNitj7Y6VW5bxNz6gGtsIopOENUaAXE4DqFso72FlK36Oj2OyT6q
	 FFce4qqHOLv3ZPnuawOYeWKqLfn6sRELAtbN7KbiAwjw9ItXmDb4Hh9BspByxdoShq
	 c+4UJhyVFvb2kPIrDORYkC6/SwSygKaTS1vAtbJTtEitu1zSBpBWLpMbhLSXzOxo4X
	 26RYdMG+vr8r55dNbVvjbBw8RHeTby08jqmogyEzRRbCOHN6QcnoNldtDjTrsj1tFI
	 LlWjc5ne0560w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95D4CA5FAD
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073423368.5144.16329250195629175572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435ca2bf0cbc3021962e8e986f782c8938df83783da9069135d83cfc9ccef827
Date: Wed, 30 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790734233
