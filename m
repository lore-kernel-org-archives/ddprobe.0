Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230631B4F2C
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773188694; cv=none; b=crJ1j8ReJKrZrttRe5vDqYEZOFGS+Cxpb1GIkHBdjXKkZClyng1004X5NiTUUKbxTzDc/0hb14Qxlq2Wxi5lddAYfbGJvoDHv5KQU+pm4Sr2P/lNypcfzuTWohsg6V81mJA5lFnka5fKMV/MYML73j5VaoWRlLHJbR7FY2xa3YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773188694; c=relaxed/simple;
	bh=ryqYkF/h75Cbg3Cs61oorYk+ZeiF4jJnwGITCmGex/A=;
	h=To:Subject:From:Message-Id:Date; b=jwm6tV6qAeKdEDhnt75NMtZY90LxJNMSaJhxcPwAuaxeNy1bmUwGY3Moz1whqFI2cb6EGX6quOSZmBZKw8TCRU4ms2br7d8FYsG45boDx3fg4CcNEoRoYRW0QrSB4POqj8/Pmx4giTMBmZnY0Ryj6ZrP/MBJzx9k+OePYdeR3Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mifTdLb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mifTdLb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB36C19423
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773188693;
	bh=ryqYkF/h75Cbg3Cs61oorYk+ZeiF4jJnwGITCmGex/A=;
	h=To:Subject:From:Date:From;
	b=mifTdLb2pkt17+6Iw5JGIy4rCwXh5veSUoLe6NXdarHHHUv1W2JtrI7YsFJByBTLp
	 ocCscIOWQ2m//BXCsqJ+ctpr34dQ6Dfugc/5baQWXTdG1VU4MuudgBMwQyR3KkTOYn
	 RpoHr5j35eS26JbioAx3x7xWOW8885bAtP2orKcGKPFqMH6Ty5XVMH5S2Jog19VReb
	 PqxXQoA4UmmA1c2SqJhraBMYqdJR4A1OJoMLpQmiV6md3kBEl2UjEcpjGx4cj47VLA
	 Sxrx6X7Qa1n/zwjElYSFt8Y4xQy4MmznKiHUsfxhzCEKcoYryxPwvAtGZXHG7qSeS9
	 4C6FKSyzvrxTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E99FD88D4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318869359.28013.16143367571587845582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477a95e692ed2cdb7783c10a8afb5c67ed0647aa573574864e3cd1ba04895224
Date: Wed, 11 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773188693
