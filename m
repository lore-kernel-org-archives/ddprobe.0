Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3169B33985
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765429374; cv=none; b=HmbvfSnkOXWNIgTP1FFLVhcHDVfiYXIZJ6XQD1QtOdRXwqG5E/ZsiL1D6bPbxCbCX2n+v27wCvBVJcfvrla1F556nL6bFqPme73C1gfT+NaPAzcDHvnF+2312OTbyNoCFYmnVIgzqjj9x1LlpeL65gebaRtISHSEM6cY+5C/K84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765429374; c=relaxed/simple;
	bh=AMPinSsD9nUpL9oq1PG4bEypKji6eQdu7USbhP7wPTk=;
	h=To:Subject:From:Message-Id:Date; b=ZboPMUOsq8M15svq2mXXggIordXaD8/tSSsLrZsc3Y4R978pYOyLwmmJd4gcKWKQQeuP5fkbYZVAPlUvHAWrk1gKX5Y3T/7lV4r4+n/44jckKrspBjg4vNjCxq9PSYF+gJfigE9V7m0vygwB4rkfc3xoYHC0a09DMTWG55JOKWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GztxvQFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GztxvQFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46F4C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765429373;
	bh=AMPinSsD9nUpL9oq1PG4bEypKji6eQdu7USbhP7wPTk=;
	h=To:Subject:From:Date:From;
	b=GztxvQFluJpo6BJCO4MJycJm+pklJnY0DpNFMiNvIGfRtUo3Mjg1YmzYyG0vSfcPr
	 fQciG0/m5iJ6u3sawXjdWAJUZ0tlH9fRT8ETazG+xLnTCvAWAwhHmULSODz+BicLnk
	 RZqtqFDBekTisMJGtqVQ2apdvvb4q6cNRLbBrdwmx1cMioSXlbJErdsYYy/Or2yHNs
	 32Xawh8W1RS65pJRX5z6VYovHSy4gytz2qk/y6iSY5qQtBefbzJhqMp6JX4v7UZYn/
	 EgQpR4q/C3uKI+fYU0q8y2TRrJFYE371wHsGW1PHIg7AmWMithu8FVtl2r/yLer0iy
	 rh1RbvuC995mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D096D3E791
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542937360.3635.14837146079275728772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b59d2413e7a4496b1ea24f20e5803d82db75ab4d735133f50cb7dd42c2254ca
Date: Thu, 11 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765429373
