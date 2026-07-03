Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4484C31C567
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783049914; cv=none; b=dd8ijOimq1fL02bpIx2jMSbsvDATI51wvrBI9GGn4KYYS/tLEYPzlZ+759D6IjqhptkYYSqjkx3v1a7LQdAE/h/Q42XwOBM/h+6hJbCFwy+xQ5ecfbJQaTxkbjrWpac2QThRcHhQqrAUcAdR6Jaf0M4/DengoUee+8mBIdWjxNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783049914; c=relaxed/simple;
	bh=wGVrwgbC59+zY7orq75J67DTv8hq+yoz45OL0EQuqQM=;
	h=To:Subject:From:Message-Id:Date; b=bn5LO6VWNgN9V8P4iUueWWRCJT/vMA/E/KCFnxcFq0vYk5SK4W204nFDYN2z7Jlg2z0gE0L2OugT6ytNXs09AMn6omUYQKPud7gzvUDcxnSpo0IOgatiTHBZPskdLqxqVJU/Id7gyJ+7t6NRwnqfsFN7Luj3sZZjH13YB+l10DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDrDZtpF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDrDZtpF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0516C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783049913;
	bh=wGVrwgbC59+zY7orq75J67DTv8hq+yoz45OL0EQuqQM=;
	h=To:Subject:From:Date:From;
	b=eDrDZtpF91daqYr4QPY3L9991izt5H6czEzOksNwnw3MSlWLNMx1scN+rGIwyirw5
	 V5SX+75DURkOcbLAT2bmkDY+laeYIgpfvg2jMmkd6B0VhATF0NREi4sYXo8MPYnABa
	 rH8x+LEYHzeCFB+uoZrmh1LdsZtbP+LAjwrJAbqpQVmtZNI6t23dZ3ezmtdCDIQpwy
	 jB+N0xmMEC+4vuPbYniB7K9KRluzaGAzdATxJ5GBEZ2KAH4IoySx5JUVEucARvOsys
	 FOny9hOFKNJWKseBe/fAxUplZ1ji4IiGb48HFs6iwfKta6YKZ1AWUKVJNle+GWvNhu
	 WJeS7MvpSh0lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC54AC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304991368.15008.612647705321695936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695afb056fb1af32ee6f8d967ae39ffbd7eaa60ac3d52ae1ec278ecd50313e93
Date: Fri, 03 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783049913
