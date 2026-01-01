Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE9617B50A
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767242034; cv=none; b=tpuYWl30Q3s6esNUn4+Qjc3o+/YhB6Y5r3a/hGz9GWFFNPsHLDN8CQXUYSGmhZZLBMGAFv0n7jXOZrIcMgTpX4FeNBmh4W5cqCrDWMJ8RHKeCwt50aMu7o1CWh7jci5PpbjKFkHFkVQeJqDe4wzRKxTpompLAQVnoutti7gHzjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767242034; c=relaxed/simple;
	bh=j+Y2ymnPr4J6ux6jSOnCH0016JXzPNk3ZFAfn/PpFw8=;
	h=To:Subject:From:Message-Id:Date; b=YcAthbIU/zLqDGAPQPPFKReDN4BJoghvAtJG+lNQsPJjPgB6dyumakpYwZ4k87LiWhHtiN+MVFjoxGqv1Xb84NDekffJhcH6RnoR03pvEyCSBUWmvK33zOOav5LY9mkj+KrsQDjTwRw9VN6Ui1LMREkOO8HgDzrVMCzFXfSeXX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkBsuuUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkBsuuUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFE5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767242033;
	bh=j+Y2ymnPr4J6ux6jSOnCH0016JXzPNk3ZFAfn/PpFw8=;
	h=To:Subject:From:Date:From;
	b=rkBsuuUKt9ZdnW5kqnC2biQSP34ZFJyC0sW3peZ/KTTCu4h3a7XqSG40W7pXQOamy
	 rbLq0lHgSe7TMyqX8FBox7l7OWbQ0C7R4JDI2PjBcY8e4kZdaY0lZEOT6G1+h/kXb4
	 Am22L/+PoG1p+m1PzZPNvRVFevCKYjQVUmkFDl9iEGB3i+rAztgxbcMnVnYboM/FLR
	 Bh/vQ3I2ET2QDzRxkb5YJ2JgYnG+xMQ8b6/NcDSBpt0GcPATC0pkTaxFxQfFN02l15
	 E/ful2NzCB5mrzN7Ay/FKYn5L6oaJUzfJuY54SHPzU4sYPkfRvL3utWugsv6nGGf8k
	 4VzsxXTU4QCfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F970E9410C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724203357.23532.13008919383544965130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b0fc11a86afc19df6da07ed16ae460507aa27fd3dca390bdff6a1ee935a21e
Date: Thu, 01 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767242033
