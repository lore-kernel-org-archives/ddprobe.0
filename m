Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203071C3F36
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763850714; cv=none; b=bk1k0YUFpjdwlppqP9Qq7MclJB7XqveYpDzMwOHbhioBhp1H8tSxcOi09chwnVfs7Hz8rSKFOcuUAS2gVsHdU3s7ErpIGSiAL9A0n7mkAq1li/LmYSf6v+PkdNNaVvI8meCobmIdvEG0C9falDsq9hViuHUPufjc8k1rPghcrw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763850714; c=relaxed/simple;
	bh=ew7ol6guMSvObAHLZaSEk1LqOxsWoN/ULrZwttV0c7o=;
	h=To:Subject:From:Message-Id:Date; b=TTgQnxHiWNuduhixv3ab5IuAHyXn5ubkzwol2VlqeR4/Tg7IRJtdg8BHeDtaYNjUtV9MZ2w5XQxSopvSOUE7fGOu0GKkjUxpuwj9X6oJruwFxK7syylcdqjnRtPZG4bijA673yXPvtdOPWg8+183wQSxWazxPUoTLQD9AwBNxbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+OYAih0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+OYAih0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38DCC2BCB1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763850713;
	bh=ew7ol6guMSvObAHLZaSEk1LqOxsWoN/ULrZwttV0c7o=;
	h=To:Subject:From:Date:From;
	b=T+OYAih06u76ARhtAynC4QnaVTdoLPRV6EiOQFK7mO72C44z/dxVxQaqu28DfnlIz
	 LJ+fgNE1+xZHfi3p16xluTWFChGeebLo5n29EuaHer/bs1QkOQTfY24nTVXZvuWwz4
	 MOE1gqUTkWJPD9uPHSBhWGrFzjZKBBJ+gJqTCgmaGD8EZ3xAERbJkAJO04jdb9zaj+
	 bTMpfACPS9PkUJoORDtiJRu6UOpwBhIUr/PeZmnKAdaBQwYwJ2dsYv8UzSmVqZidq8
	 S8lHXkQ2mFXP26S6WoNh6/11gx1ZGVo470ztRjkfUh7SS+MDMb7GGungPWApvyx2RG
	 Z8DYgYQVgujhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90353CFD30D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 22:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385071358.17303.14956695763557300801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ae2f54acc3730e3e4d6cecd8902bc403f29e972ca4cc141c1f6ce812f9f967
Date: Sat, 22 Nov 2025 22:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763850713
