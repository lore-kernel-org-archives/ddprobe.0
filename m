Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CA223392D
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787794234; cv=none; b=PbuBrS5+NsS3UIbhhjOtcJ2Y7O89N40qz4XC3a5eSIwR5q0sIFN3O559kU1y0Qnly287l2jhJFhK5v9/nGjfKYgQeEzorWnBOzwzF7pTTriK9cRhgjEd5yJ+HoLynjh1nXCX/R4Q2vDDbKhNtiiZU/Kp8esNmzFXaTgkAsBSCbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787794234; c=relaxed/simple;
	bh=V0cp8TR0KNXT03S5KUlA+7yLP2SPtfHVeFVSy1OFYPs=;
	h=To:Subject:From:Message-Id:Date; b=UU5jBA4CslBfUbJJtA6rpfqJk5gR6ViQIOE8fRf3DuR/AF5Lb6riZ9H1BTK9330pJY1dvrCSGTk7k1IzJIR5e5C6ga0/GDdzFm3gglzjAvKm/AizaGp+vrdP62LYCeW9rnYNcuh3rTReKCYl2do6EukJdyQT7arAWHp6Njy99qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDv4ldHs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDv4ldHs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2ACC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787794233;
	bh=V0cp8TR0KNXT03S5KUlA+7yLP2SPtfHVeFVSy1OFYPs=;
	h=To:Subject:From:Date:From;
	b=bDv4ldHs7wnl6hDtLfDHD1pFOOt8sO1ezv6AAnRyIFHBQWZKbl3HJHxD7AXNc1rGP
	 VgLkv2ifq+/jVTGZa1d6oWDgUSO0Shc4w/9PEOtV9w41VaLVWAYYNoOu+Y9lDHgwy6
	 Ea5X4oQ5q28c1agP+KxEDmlFo7cZVz3tqzt/tR8+H/mgmdW79AexYmwxiqfuiFi5Ax
	 OvzBzN+eIbPBlbNU5LKZ05NLFJQOoL7QdpEe1IJptUqvY9lKv4WWWupMrRCcIQADT/
	 NRwNagklUTvYBshN0NdCp8+pEtyHQBAZWqb3r2t/kbiC4eiWbxP43Q22en9QheylCH
	 TXT68K5hZlPjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B050CC61DBE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779423368.27605.11808944971020772379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7749016033cc1bd9c66eaaaf140eb8d83c0284e018dcd0d90a8dc16be3b700
Date: Thu, 27 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787794233
