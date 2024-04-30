Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448E1168A9
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 12:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714479143; cv=none; b=dLqJfBDAXXgOvfg73lbqAm4il2fguy4HQgdh2OE87BISwg1oMVmxhBwBfg6drdTDp4o0BbB7mN6ZXJQ3XurjGhEQ1sNy8qri5ooOybawpHqZbQtsEiTp74SGl5xR9WBPqZOBmdrBRS/8pLys8BfeyLZQ87HuVMHSwtKsIue0HCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714479143; c=relaxed/simple;
	bh=sMDxHcK0R/Pp0xm642Z5W+OI+IBG98MLtPI9ysr5Liw=;
	h=To:Subject:From:Message-Id:Date; b=G0LDY3zPSTOvflvxnm/CBjE0MfVmRefYj9ks+9TM5UDQNhAQd1OIfllbqYLakGIS8G0pOezdJjeTk7nhsDGcXDV2hzNig81LAvwFXK3y5yCLaLyyr6CNRQHEHLzGX86l0+goa56StWDrTt6qo1IdGdauAYJU544GVLUgZ2lcxok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rlgwmdcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rlgwmdcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A5CC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714479142;
	bh=sMDxHcK0R/Pp0xm642Z5W+OI+IBG98MLtPI9ysr5Liw=;
	h=To:Subject:From:Date:From;
	b=RlgwmdcxQZI3Nb3GP6drIPpYoRYQZzd4icIdH1r5xPaO61iEPOgoo1zZlkBOWjKJu
	 ri3JmMt01jkwJLtYAE+M13PJvxWiHABEw1RYiu8L/tHWbdeCBy9F70o8EcsK7ic9Wt
	 TMfo0/QWZIuwCLoyx0JBcMcskyTFlDIK5e38IX6zdkAJUEoXEztOqmjJpCz4O4kgCk
	 NBCsfwaNf7PZ5Tyn2uFntFZr572ddV9fCsiPI6YlS+GP5YS27TTITUSL0hhMSrGZvd
	 gkTb3RcCKI5qXvqPuTbo3djRidDv87O8GhcaGklsu+gVb/D0CNI0C3rzSSl5Y7E4ct
	 +nvNUULBSEVIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6E2C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171447914275.20122.2782928162457301990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8099bb1887d153923e9aa9a25094dc18f34ed00ba2e266cb0e41d4f36097dc9d
Date: Tue, 30 Apr 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714479142
