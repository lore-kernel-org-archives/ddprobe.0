Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07811360EF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791989434; cv=none; b=UA5Wcsg3hWnl6P2FwN7L8XVb8FB1Jn5r4ErHjAeTr6t4Riow6b7nZH53sRUwWFC6txVHrOTA6OAOqGlHLZhzNmzEbI4HCV+4vN7ky04By5TvnFA836+ZJ/998PlVL5KMyr1zmMJZ4eS30Wd7WRt+yD2r6A5ZJyG+smnPgSIk0KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791989434; c=relaxed/simple;
	bh=qnZ6YtkFKD90E7vgUya7UyXs6v0qZRWJFONWZfsjdfg=;
	h=To:Subject:From:Message-Id:Date; b=BImQ1TSzjVXn9zl50Tag+r5gCoRJ+2Dl0UIRBKDrYqnTro0k9DLBTBtIw+TMICaaR8f/bf7/IdWa9NYslzDz0c9owMt3ZbxiEBWEbeXUbadFdtLR995Jr+NUyJXtESAkRc8BaJbRBkJix8LDYwI3gyWnlQOperfnKtadROvVp68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYlmTjcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYlmTjcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCD2C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791989433;
	bh=qnZ6YtkFKD90E7vgUya7UyXs6v0qZRWJFONWZfsjdfg=;
	h=To:Subject:From:Date:From;
	b=fYlmTjcGFTWwA+J6NjYpJ26EhrtJ+Kowl11UhpUFLSEtABm9kPa6MB5NT35Iteq0c
	 pJqfbQwZ6eaw0b6ZH6IUYkRFhB3DyMQ4u6wT+gor6ImwFn6q5R+/YXe57aHFUevnl6
	 WgbPremvdENa3qVY+9aNDmmxw/wahJbU+cywFZKPg1MUO+sKbIV6C8bDV806ucInuD
	 OfaBDSVfu7NUNMGt8sDUuSGAm6CJu58e58RCvJoTqZX1oAenNuufZ+Y/2A4h1j/sp4
	 3r5lSphcTas9Et0YHemL1QfEEaVUfEdkgStQvdIxMWSO+wIbm/7lANHhnoC1FN6AX3
	 YAJmGcLOaLAmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0AACC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198943369.19012.6606670969639764803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2eb0b8ec77cef4a1c37030190927573fc6869d068c0cffbce9338f124abae69
Date: Wed, 14 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791989433
