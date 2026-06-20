Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7AD22579E
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781952994; cv=none; b=hu5Jj+ghelDc69b8yPgQZMbDFatRoLl/ivn+eeHLfosi/9IvjNpnNN+bPSryD+NDpmUfzQTtktmXFUygZcKDmKr6R06SdRaIgUsL9jymyLVcu0yqrYc6kaba+FXZoW/pQaBGE0MtD0KAwMsId/UwHxi2faJLk7CgCokZ3ohAbMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781952994; c=relaxed/simple;
	bh=BTufw3fKDJhsYk+ZIXq1qYX7P1uUtCE2J3OGCPChubE=;
	h=To:Subject:From:Message-Id:Date; b=SN9hif++14IQVf98xDrYKSlqU73eNSCx83/baIjkHe/68qYNFuw6No5QVoPXzWymX+uEH9ERmeFAIl2gqKY4DcuYihuzntzJvKH+Fz2YM3PBS8q9WPvfxdoaLqlgIfOUaHG9G+tq5DTCjL4dsCMcpt/MGspjx7WjGxk+l3UZki4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgmUYaUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgmUYaUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9A3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781952993;
	bh=BTufw3fKDJhsYk+ZIXq1qYX7P1uUtCE2J3OGCPChubE=;
	h=To:Subject:From:Date:From;
	b=fgmUYaUYJ1heQoQZzByvtAPi1PA58q6J0kBZIhLcA8zFXf0c7Y7fQ88nWTt3VPTZu
	 WaAngTjJIVZYMtqXIUXYxoHAW212pvryOHn5aBkED9fRccbzf6Lu3CaaBAxG1rxqhi
	 Co24RuXbjb/BZLe6jQJlE+KQczPvUsuraez4q+8QyVvRpxouBQGB544TX33K2c0TKn
	 Av1xWbJtvxRl7iwF1k2RND2oEdsXipbAfyFbAR7BzVSfGT6bDqlTeUaYwKabdWUaXf
	 0OjD8AjUnl6KTn6if71B+mz0jRtM6zbk4iKRO/nZHNTeqnf8OJCDJIhFNXAETNQ6d8
	 QV0AoqwfmL/NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D1DCD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 10:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178195299371.14163.5221445391388994156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3307f487ac9285ecaf4f145855cf0d48b73eca3f9527168c28f628e7a44dfad
Date: Sat, 20 Jun 2026 10:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781952993
