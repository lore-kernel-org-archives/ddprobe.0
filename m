Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7799B2E717B
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771050294; cv=none; b=rYNJRZbHE25iCyn3xn4tb0vmPUP9OXvEAgQNisNSh9PGLNS0R/dg/FvdO6P5YPhaQPcOi8qllqMh2sznNgXkZNqH+SASUWMXlyCIV4ckiFCMjkeHwy4vK6+byY4hT0tAGxqiE2YDiSHo/1glGtmxFbAp2QXHedQvALJ8T0GSGAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771050294; c=relaxed/simple;
	bh=NMNa0KYTkXdC+ERN/e2H9t/w40Pj218xoC8CdntKErM=;
	h=To:Subject:From:Message-Id:Date; b=GiG2PnpKGxp9z8NXVNz5n9IUBlNFe6UjxoS6/naBaZ7Bgb7VXh4y0NMIvhvUM022EBQtOkd4uOeWeVFAqGucqR04ow5LHvU95gG8XlvSAbsGdE7kT8J0gJ9NiXWn3kYtSipakLH3xTQ8FXCvv9FFz/KIPkdpyUkQGZGsYrcYGZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2bn/y2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2bn/y2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96C7C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771050293;
	bh=NMNa0KYTkXdC+ERN/e2H9t/w40Pj218xoC8CdntKErM=;
	h=To:Subject:From:Date:From;
	b=t2bn/y2ZQpnax31VEE7uKOOGjKSDe0qneIAxfUmLUKcqYBk6J49X0X2WVn9zsF8Hr
	 bncA2TMX7lqZfnXZcUDBabos0ENKE64hPFkAf3uKYOvqpBZffL1PsYfaARlJFmo0Dv
	 oayHQT4RppQj+3EeRGCfNRdqfUrt/miWpjP4Jfs1m24rYdWt1uqaXqxL6Eq+bRBXNO
	 AK5w19hXlEu1CVGecSyYl+cvWBUprCLfHi5RZaXkK4u7BHVcW+QRMVNF2PTE89yYO+
	 WBys34DBSqasaBRSxiwBUFVWd3gp/j2IH7cHb9tzczDEAE16J1eN5R1fo3yNnI0QtX
	 S5cDZqtzIWHNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B100EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105029362.14318.2505881723173595175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97eee8a9858e949dc2a80b3e50f80da60adf9a824428e9a000a2fb161e843df0
Date: Sat, 14 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771050293
