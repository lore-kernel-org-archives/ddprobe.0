Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAD432D0D4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780090414; cv=none; b=QwyywVTAsbRZQ0po6B5NCX/BzZyixLOPZw5EmXElK0emNP4hM2OgL1BlYkUSIX1qtCDbE2KC0TOYy7qJy7AXL4dK3yFI0oCCOjjTm2NlHeXbXB7R8l+zihWlXM3kKMZLIGCcenClr7jTNw7cFdpuqDHMYj10ZDGWtQBMLycGLjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780090414; c=relaxed/simple;
	bh=pc3nFqbblt0wGtJKH/d/o1Ow9PIkk7xJZqN3WC83E8E=;
	h=To:Subject:From:Message-Id:Date; b=YRWEINKq6WRc0yCCXJzidS/C/+WVeLfvSUKJPH/Wd1ocIpjUxtfKQYNWPvbV2WDCRAhvI7f/r9bMYv7xN75MH6GrHgD7uCF9Eol4a1F6gT5GW0j0rNLCouHGl3q4zWnv/YvHJyhcfWevpznOC5CZWH7SDgIftfxzUhwWlCLdBUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSeXSrKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSeXSrKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A6FC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780090413;
	bh=pc3nFqbblt0wGtJKH/d/o1Ow9PIkk7xJZqN3WC83E8E=;
	h=To:Subject:From:Date:From;
	b=gSeXSrKRMSIwCY1zuO/ExMEsdIAOozjJ8nzLSkpNHmgQDaQewrqQYKg5lta3uAyh6
	 Y65QMtMPK+Zl0Dw/VaMp/sQTKOdoySiRZ3jpFO8XYLXOFY847Yvi8mODBv2K+fD2/k
	 XR7VgtlTqfTZI9n/T90Ya4h2ZcBbN7SwTiqqsIGqc+PFhNbbvszCmVYKgM3HLIYIyE
	 ud3EvGW1dt9DHZeJp8Lbwnlt/uSKRPOncWDhX92ug21I2OApY3k5PSNh+qBqhH8/LR
	 KzRPkupHP5M037q/r5b0b4r0Y3Hm/d2yfMeCTIr5f6379UyKMJx9hHfcsRYUUYM95b
	 pJRw3HbAaZnxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF243CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 21:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009041368.14268.16746302749595982638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888036bba131d55e74cc01bba0d91258a26c01cfe885f4e7b60876638da889d9
Date: Fri, 29 May 2026 21:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780090413
