Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138831A9F9B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767919434; cv=none; b=hHpHF+36jB6t4ISPln0EcHQDvBltLB+Gc79HLlBeYGo4J3E3/uKztwtcAiwplWjok/+1ouXLPXuOMkgashcEDNq9GLyKODIAe613HrSmcQMofgHF1gXqwEyBnSLlkNZIlrHU+0hq1rYIFUlfy4+wMC3Zs/oKtitnYL5CbrA1HNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767919434; c=relaxed/simple;
	bh=8BdzTDZg/ZJqbNWZM52lpVVwEl3XHrNWx89XfQk9fKQ=;
	h=To:Subject:From:Message-Id:Date; b=bqSYv8oSjiiEu0lEL5G/D7qDCLsXbwCYJzZGGqAUqYpnrY8X94e1Rlw1ZxvabNrNUDSE4rJPn7Kmv0qJ5M7BB2bQG0ARZsfdXYnTtIAUyAVBUTjp0Kbx7m4tkGXCOTCLBGf+hL8aWgSgXER39X79pIOv589fN2AAKOM+i0yTngs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXnhn5Aa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXnhn5Aa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C80C116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767919433;
	bh=8BdzTDZg/ZJqbNWZM52lpVVwEl3XHrNWx89XfQk9fKQ=;
	h=To:Subject:From:Date:From;
	b=hXnhn5Aa11tDQb1wp63sF6zL0WOhenwAYjTAXYCX5uSX1pIOwvSYUBhBLcNDDGk18
	 cZy7oS8EnM0BXlRzGAiUs/VEUuILGxsQNUEU0S1wkcNUarCkwxHqrIzXZX5fBk9GsR
	 Gz6pb78hmyCrkdQka2G9Za61M07a1E8WTzOAlpoiCeWE3QscvKevCSERWuOBvtZFCT
	 tmh33ldG0qIkSJ/U3Z7/CaNE0zL1aDxrecVW9Q5fHK/SUKkVpKi3LCGzVW6InKwBEk
	 57K4EDBco5Z+NIentQYpYgzHlZfYwee77GCOlE5FzYoALWGcqhbQCFLKY1t/18s/ip
	 XLc4OGToRnyMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C9D232C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791943357.1839.15167263293418017795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de8d7289be5f123e92e61451889ccbad3d43f9470ffba7c7e30c34b912e7fb9
Date: Fri, 09 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767919433
