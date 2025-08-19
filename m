Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006AC131E2D
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755583794; cv=none; b=K5ypfJuqk8m6JTe9ldiRTo4lTBjCZf8zNmz4O85MjHnBqhWp3q0JUl2PKbQ4JgScrsIy3qTyJhiMsoQ8IfYrUL+n4JtRNh9mOSBS45SVg82wTG06dAlRELjTCL7hO4VIm5aB41WXnfWc+/COL+JZePukbueWmy86MjwNbmoopjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755583794; c=relaxed/simple;
	bh=QaDDvWcai1X5/mcRP89/aoJB9fKPnVF/hTT4dBr4ptE=;
	h=To:Subject:From:Message-Id:Date; b=HUzXFEBrKSIFmAU0qtcxsrKO8QGanAV2KHMgm4FyOVVHCkBlVWTwQYSxFN2dejEjIqfQjyN+JnylE6miUc8xJcGKJVvTSu85Xz6yDEUqycnMhJXD4phDox0qbuW+OF/MMeKzENH7tk1W5guYws7OKI2Bmn+2lPWJIX4TyGnTOCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWvCmhh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWvCmhh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB43C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755583793;
	bh=QaDDvWcai1X5/mcRP89/aoJB9fKPnVF/hTT4dBr4ptE=;
	h=To:Subject:From:Date:From;
	b=qWvCmhh1HgI2bVZGt++zdt/zgkilhgbqW/OxAxhJhm3K5juQhFdKr2f+79wUNiE3h
	 ZjG9qXMQzHmJbOt502t5iYWPuj4etFW/V0XLc5T1ppTE91zwLK+qTS2onIqg1q5Kqg
	 Z2zrgRJhuzFSZO0bgvSrty3f1z8nm7qGFLjWiqyUd6ioB7VNubDBJa8P6DmV2yXNgs
	 tqJhqc9c97ZyBqo9lh694IM4hDgMU8HpvXgKs4EGcu4/nLfTGZlPmjhrj9y30WFmVG
	 UqJPCcLvC/vxG+2H+N18i+JrpDJ4dTqMtiiLg5a4bOCsZpmMN4pSySv3oI+sVTrn3Y
	 ORMp7kyW7ZJ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1BFCA0EE9
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558379357.14373.10713359889765177170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec2f5ea8a5de00dd3f77130d8ffc3634742321ed446073b31b95a97e39ae3ea
Date: Tue, 19 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755583793
