Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCEB1758B
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715368943; cv=none; b=QJWhqer5KJu6qm/6DpbG1r51Gmm/i/U4E5i4Og4tnU64DT6vWGZO/JlE2OIemhssalZrwZCeOlKlzpq7ID4OulnPUlrPdNdk7ly7FyZuWgK+VZBgU5bSGsRDl6ClJ38qMMOt3bDhIaHmOFvFkBf3+OGo1rAulguL2VvOJOQvdyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715368943; c=relaxed/simple;
	bh=8F6EnMCT6Cd+WAB+zZRI8kJ2v6fkkXOhdkDDo/CTVZ4=;
	h=To:Subject:From:Message-Id:Date; b=suERUok3vO7H3bFnvYBgudfuQm47YQDboFn6kxEVsqd28RFC/FLZJf5Los5LyB435Ax/i7cSfeY6FOuf/YPrXUwsubWvD4NVmawcpF91DW22fMb57dyDtQg4xskTOHRMdQ6YkHhOADiQDR272Uly+lbSlxKhH+hE4HrPDv5OQoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4xN7Fz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4xN7Fz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFA8C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715368942;
	bh=8F6EnMCT6Cd+WAB+zZRI8kJ2v6fkkXOhdkDDo/CTVZ4=;
	h=To:Subject:From:Date:From;
	b=O4xN7Fz3Jeza4qOotJVZIbxgR220+6vKSOLN40CkiJTGKOKp+N6Anh8oXQWjJ9y2Q
	 1uQrnr0+Yn85nchczbhrDf3ar5GOcXeNGpHoNokZOzfLycTyVFminX/8h4LJ7dPlK/
	 4dWrggtv6SrC8pAor3ByumvGCWOYLoX94V3fLKIl+5DD19NPuIRMRZT5fr/hDZztCz
	 dBk1RTvirrXoXxtSeHyK77nq1iDAuKuitqyBgKEVxMq6rh+8P25G7hOHW8lEWiXOkG
	 bVLQRzKzdLusvi3f3uBOeQYjaiWhYjG9FcKwwBQBaMTz35g70SIu1p6RPepqW7cx0v
	 jLHKSanP7e/kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6776C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171536894278.13303.11793685099856489447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e2523ef7b96a9493912b90aa4232d3e59b7911acc555e28d6da4b61b84aac5
Date: Fri, 10 May 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715368942
