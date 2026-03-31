Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD21A4611EB
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774992893; cv=none; b=ZlGnypjrcx+XCj2zioxR6LEP68yb6KnadBheEQrA7kVdFVpXTkNqXrvTsuSNCy1t1nOjQE51YdjEKB7/G54DCVmU7w14B8S4V6wAMyfrDH4WmFkS246H4xQfAo2lg+4l1GlXiaQe1oSUnfhMDH4RWGdHtz7h8fsU5L7ZVodrxxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774992893; c=relaxed/simple;
	bh=SGrr2SMz++/9ygCsqZgiPUckobY7pAcN472q4sTvrg0=;
	h=To:Subject:From:Message-Id:Date; b=jH6RwSOMHJz6UQjo73vF7LuL1mA2Z0LescBnM/gwvjPm/VV2qbfuawF3yKs1A+a10pKvO+Adxv0udMJV8vj4SGRs0SwlIvmUtRtAceXewzA/1dLNPBOkZaiB55MwMUjIMzSQWMwa1KJMFazmD8OiLKuCoDRxAciDwmy8tr1pgYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIoWVJim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIoWVJim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F6BC2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774992893;
	bh=SGrr2SMz++/9ygCsqZgiPUckobY7pAcN472q4sTvrg0=;
	h=To:Subject:From:Date:From;
	b=cIoWVJimsRZpV7ngYEqS99/lytUsOgsuj5y3g++vxstRdEBpyZX6GTdQA2TtDuZX+
	 zpHvTOHe3bwXdWIYnG80YsawJkPRno5E4M+Oy39PrUMBbqETxdx1ZmnwFB/l9VQ3KD
	 0t/tnkMO3fCnyjILlgNTAeIeYbveE/Kv3YRFS2ZDOj3DeT1hXAmnlas7U3ZnHNMGsK
	 L9qYpyvzeucevRMcWdTy+JAW8gkeDrevkWT1snraTRqC8iu/L7WldeUPXGbup7oFif
	 rDF0p7NO8GURyfxq188QCXmnyZcVXSeguXELyMjXjxng29CKu8H7Lffzj8UygFkO5e
	 nvT8sf1GKEeCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9251110F9303
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499289358.29436.7413797346770778114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1a3741684e3a03d583cc9fe60ecf4759dbb6a2931e2f218d5d078bcd13fdd0
Date: Tue, 31 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774992893
