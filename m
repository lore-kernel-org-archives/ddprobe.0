Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0D82FE074
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791750034; cv=none; b=FGXaGRDYlC4l3cBBGRCIJe0PLYAar7IHFjC3HpXjRJCwhDYrClLWZ8rstgv1YFDFDRLREOwfs3yfvBLtFdgna+6aap9D6Dx3J5fR6EkmNy4IRH9ydNm0ZWX9VpLPd2BImpHUp3DNT1ZcwRb2nY/WoeXp0duSXAe1m5Cd1j+uBWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791750034; c=relaxed/simple;
	bh=BZ3YFwDfN3sYfnT49NpxRfS4NSaR5uPEkKxU8o+g54o=;
	h=To:Subject:From:Message-Id:Date; b=YiwNFLLT3NqDAy9uYYMbMh2OJYiissDGRKbdK8bHnMFg3YIHcAq4mNe2A62shxinUcz1OziAtAFu26XUPpN5JAyTE3JlXXJrR+RI+DADhaQxk26/TtTzF7RKMDorvanxV7sqtOHBXKEzwJoMqMXmoRk95WwANYws71bPAeRzTTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ad/1Ovy8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad/1Ovy8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D486DC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791750033;
	bh=BZ3YFwDfN3sYfnT49NpxRfS4NSaR5uPEkKxU8o+g54o=;
	h=To:Subject:From:Date:From;
	b=Ad/1Ovy8HoCz9Tu3mu6rhw7jeR3KnrpMsa1sZogMUg1iPJVq6kS+Ik9l0Y8WPQg5R
	 9h5o0KpteYtTrF2s67+VfC/Nt1J8HOQwFRgsLvNBrHa9YGsk5xayff2ILZisJ3UcF6
	 GaSETKHyqnFeo3jI8qPZ301qd4HEiMx66lmJQ2O4uM80V1JyjDBRZU+H5mfhLd/BcG
	 Adup/qSU+l85kB3mSjW/V6sl3UYR0qqu/oWYEt9VZSSv5bPomWFgiXd92QURLdkDq5
	 b/1Ami9uBTmRJ0hfBDXs0aX2b7BhsiSEwRPUqCfxIPHRPqjsywGfe+oHLk+UfHN+n7
	 WsKWsspAaX7+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F43CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175003369.22057.9829142248058684390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079b05ecdc5b3ddfd170538280c14e4aa84d2f5ccfc9ef6bc2a130238f2d3cc2
Date: Sun, 11 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791750033
