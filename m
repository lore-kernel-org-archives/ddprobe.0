Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AC918DB35
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751364594; cv=none; b=cEUlNB3rNKPBkM6WQHyLUTuumNLYpyS/OSozuOLqqTNDkf0kxHvwI3YoEgb0JM0u0wl70FB+5IrXT/Dmhsf79Rgy8CzHrNrUIaRrVcv1AkFfG2k6m1NDo9AeclB1JhKLzEelIOQ2Ggc6sz3/F3Mvt7Yo8GE2L7HErYTOt4aLY1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751364594; c=relaxed/simple;
	bh=MrR+yDHfhYKIl1uJAjPSR//0gzMktZNxW4W7qGCwbsk=;
	h=To:Subject:From:Message-Id:Date; b=pgZlXvDFwbTYvvQNfBRmHkF1ITHRZkumvt06ZkcpXo3b1gvlrhjBQFBmg/3B2qgjRDtvREikIVoV/K6SH9KXUaZ8W8D0vzSPzesFM8IbDZP9x7Ia40mz08AmkkxMHVXzKfFn1+2at1biEpI2Nk/F56gkhjp7hOCPhkTjDXPS7PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fk4SIBb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fk4SIBb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A46C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751364593;
	bh=MrR+yDHfhYKIl1uJAjPSR//0gzMktZNxW4W7qGCwbsk=;
	h=To:Subject:From:Date:From;
	b=fk4SIBb9gYIYrJTvNMLImLtxTJInqQOX22ExPUAQGEi1yMO90PsmiJEuTsmwLcNE6
	 oSsOCG75bm6/Md6P1UhinXPa/zQmb9k4zVplRern7WwmFGmumsooNsU95lHPgD+UEe
	 kDkKi/aqox/+tBEO7IoEyJNXHP0xL44gTMV+0ZN5uRuMCGiDi1+Kh3aKRwJOEnbp0m
	 TEP9/TEyjSU/XUyUlVDiesEtRHENHR1fLmZVYTx2APhguPsoYVkW/oU/aza7nTUyVs
	 LJ8ELpiOdvm7n9k4TrQffzm1g1yIs9LksJ5lhcntoBpyPztw3If7tkPziBBjbGCdWM
	 5MYc9OqVNb4mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED39C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136459357.22380.2327571432426076871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2abeacc5745dd3f5b7c42dd7b778d18c50fa7185f9e6dae2ce28a21b1d7813
Date: Tue, 01 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751364593
