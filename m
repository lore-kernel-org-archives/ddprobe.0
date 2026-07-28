Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B54442FAE
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785247834; cv=none; b=SBP3MF3OMavDVQuUXWYtTKkj6IV2wSs8lUBVuuIsJQFytHMtaujozIzrkVAFWLfkIJ690Xe5Nl9/hJiBaTEXOFMtBh6ZH7MAkTqSflBqlxzOV9smOC/QJcwxK5X7MfzpVy3KY6cjGc6s8FfJoHE6ebua75Np3IAcPkEjrwbmu98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785247834; c=relaxed/simple;
	bh=uphzQIKetkiqN1Z+AEZZ1CBbE6NfFwCUcG0v1Vp6Fgg=;
	h=To:Subject:From:Message-Id:Date; b=AbTpMkwMiCjjMnlkBXkbWV1qgad8AZ35v+u+Po1LIvxmrdA8SfFdjd9KRdttJ0bPlHzPP9039NevOqRIvZDNsg5U3Uicr1Oe/r72zHBYvvG5vV8LGyGSWaRh7LO1anJ/7mDE9yx2cbnyDq5GLIu6S+UOhW31uaLRn/w1CsUccgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/3dSrv0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/3dSrv0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5167C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785247833;
	bh=uphzQIKetkiqN1Z+AEZZ1CBbE6NfFwCUcG0v1Vp6Fgg=;
	h=To:Subject:From:Date:From;
	b=b/3dSrv0Yr8hcyih5cTivvt9s9mePAPIF86gu7DkLCICID3YfZbgw0BcIZLEd8/Vt
	 ITe8Orv2xu+Ri+iXrYMgrDZe5mcvVWB21/RmPvWNTo/Uky3/EPvGLjSTedEY1C2Qkm
	 nb+rDza7+6theVgZdAbFq3+RqKTk3xKadVHq9cFIdct5mh9xCUtQx40W2CAbbXlahL
	 0Y1IAza0OO0H5k8ZCmIHGCEUn6JJ+GK9fKIUxIghS4Xd69Jh2av1MnvVUBIO8E8EZa
	 wwHVzgre0tLUmi25RMFL+uxQUR9yGnJiadJZeJ8MJNNTlk5+JI6rfhETNePzXyZkmt
	 pOiCT8yhXyxXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE1BC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524783369.27753.2834354782380349077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b41377d560567a39465e60dd30ae719cbb13b4fa2376ea49af8dee88c3e2096
Date: Tue, 28 Jul 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785247833
