Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482B01C4A2D
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746852594; cv=none; b=esf2yUdv+7L8+VUtR1P1U4vLe2+1CsOiMqHrX3IVXDxSkeO46ntz1f6zQDqEa6rltktxq1SxpaR4DuBnzJaHk3zSwG2AgKAFm/1gE+HVI6JRRgFjeVnuaVSXwe1bHw+t2mg/ikcxuLbRP4acq++g3LHNiGHIAqMehQtx5Bnnt/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746852594; c=relaxed/simple;
	bh=oR7FIa9nYtIWwFGv42TnmkW+dVvmS+w4uh+E0Y3IXd4=;
	h=To:Subject:From:Message-Id:Date; b=PSgAhyDMClk75ai4ElYaYD1jNB1Z+7LiPK6BWU2aW5HQd3UU5n2gjDgM7ryN+yM4TWcITHk4gBcyccCZyAeN8ArQPqSrHqYmvKk3XYijzuwHyL+2oIwkbAOe9NU6zBC/pYAi/IUR4wrXBpv9xs7xNDimjmcw6KiAtvtoMHMJ2nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tcj+VGt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tcj+VGt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A686CC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746852593;
	bh=oR7FIa9nYtIWwFGv42TnmkW+dVvmS+w4uh+E0Y3IXd4=;
	h=To:Subject:From:Date:From;
	b=Tcj+VGt/w0P30VFuiOoC+Jh5nM1TusNXF+n6pU7PV9vrgCw09AqH6UO/ri+jCX+zp
	 oaTFWtfesEtmcsxL9rmvWgLL3geABXhln0fKz3rtdZmgplWxDmBZ2w6T0WyF41iLa0
	 7J9MyRM3Z3QlWoLczHTmK+iDCSy5sUu7jTLul7KAL2oNTo2ETdm41YIsDkxNgmoaxk
	 Wf85dzyhHp4q3HHN57YP0o5IeJGdYO8pMB3YA5VHSTOjkl6Vo2tfyDYPMSqg6jQT+J
	 rEaQXky2vYoO9i1aLvz3PrGFA4zwBlt2R8S4HXHmyRtHM/aH8PWtbkpAUPp7XAFO7g
	 BV3KKGQR/b4wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC0C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685259358.3066.10175892754132034603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4001241aa1e84fc906de8cd3da2f09f261720a42d99c7a8d5b9362dcecece1c8
Date: Sat, 10 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746852593
