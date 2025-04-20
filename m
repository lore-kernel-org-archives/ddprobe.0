Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3469D188CDB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745182794; cv=none; b=eb/nKN9aRCLXS5KYxtxPGoOMDV5IY8TQBu+iQBsuA9VTTUAYfXp+ivuAL/xdF818cfX/30CzW9FTtZFCxyH8HXCtrNW6fDLQo5cOgQHMmJ/G9FeExpAEkXXZJDIPmUBOj1suXSj02eju9SEMlLX/TjerJo2Q6ydcPtEGg3UqH0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745182794; c=relaxed/simple;
	bh=HqFq+2BQvYAhmntrjZLNgK5+Miwv3B9chZ90f5LQ+3w=;
	h=To:Subject:From:Message-Id:Date; b=ZPYzDk1snBuCxocvA5j1RMQAtjMvEoiLBpPyJ/jW/BuHfBZsI0bSg2cA8uv5pEBVxXasNuxyCw5MeqW/c7HgOKMCZGHdI2ArdIzNZInxeVzOmQ9dkqb6EV2mP7G6/o0tYpmBqauXZ+ow0JXH5F2Q4fBfBq3NUUXATkYxNuQje9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=leg1ym0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="leg1ym0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A27C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745182793;
	bh=HqFq+2BQvYAhmntrjZLNgK5+Miwv3B9chZ90f5LQ+3w=;
	h=To:Subject:From:Date:From;
	b=leg1ym0YYCfwjWkJ33J6I8jKmGB98tn3+jr1+2eBEOoS8CnDxfpIXny9FOwMY5cec
	 REZ17UObd+wKGNdTU8CLRk6YLtqIVHsbrtaPzfoT9uhmWmo4d/tcwJIQGrTXckbB9d
	 ACqE0ivW1rkTBA0jWwudbC5NAW6UZDFujtRvOs94IlBj7f9Axd/f/AbSC/b5fxiOWa
	 +7y3EmtTSSITCOwnUyRIw2aeonoqMFDusfbdT/PKS49tR2MV3iAcovQHiYldvLpfTj
	 UfHCu1DEdH2BTTpml9eUh9PY+lq9BKsHznPICOppgmPOUfdZzGCKbevznl7j0IWbSf
	 aOiTz9I0ouSng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9541CC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518279360.31646.9014025452004058953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d15f09235c409294921d5e93e2928b0071bf94488cc84e380a601679f6a0966
Date: Sun, 20 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745182793
