Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C384C299947
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760718593; cv=none; b=KEYN9DGSG0bFhbiMi5iz8i1QZQRKO/Wb4h9C39fjpacbw/Khkkao97Ki5bn2AtBTSsPVvkDW+lzSZLuT7jvhZoHPjqFg3dalfidvMzjhIYvG21/adh5i4k2MJc7JpOBUIlbhHf3VAU9GJ2ZOoPm6fRGB3VvL80l6ZgauDtgeTxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760718593; c=relaxed/simple;
	bh=PyP/rLj8/DsgBo1BtxMvtdzQVP50ael77Z0OzuIfvkk=;
	h=To:Subject:From:Message-Id:Date; b=sEuaZYbDloSHaIOoTf+S/sfpuueEuwdK6BSsFIbiXMfjhneub4S3KykwETU1z2CK0XqQeOlAZNhvPfVPiq0o9XTMk0AnKQqkrThU420P1tCDYJdHErVKL0Q/UWU9gg6UWdW0c9Bty87rUfzvv4gbeHm9N3LdqSZ+UbUoogl6NLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbGWDhy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbGWDhy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2942C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760718593;
	bh=PyP/rLj8/DsgBo1BtxMvtdzQVP50ael77Z0OzuIfvkk=;
	h=To:Subject:From:Date:From;
	b=NbGWDhy/BBwQ9J1BFX6NxefQNeQj6rb3NWCwT+zVT9zy1uL+3WabSS/UOQ8pWfKr3
	 bZxPYpOlI97/JAT1j4U5WANht2fq8pA5OvdzfImkNtPdeWvvL7xGDMUZGXiySBKXJB
	 9tiUHw7N1QW6IoJtszIAV0pqhusrC7aRcwOT7SWvllPdDnkuHZo6E8Inpf44EqBXmQ
	 RTf5rVggppOpbCHxHwe/eMj3ff/cjjVXWPFHk+tQMwWanGWU+SY7fLptYHu2SU8CRX
	 +9VNh73RPzM6blpQcDEv1Lgmzb/e45z0LHtfSTK7PK7dJsx0IQvVeJwzXUSuvmTC7z
	 8X1Th5ZGJnjDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB8CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071859359.29638.3496766343746610911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b143a616a90ae816ff862a349a010163091665c6d27425790373451623d656c
Date: Fri, 17 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760718593
