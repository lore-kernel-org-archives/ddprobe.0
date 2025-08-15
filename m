Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E4431770E
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755278993; cv=none; b=dl8Pwh0NvdOekVOVtioAnyYWfW+3EBk1hjbwyfnnxjCenEvizDCGlnzSJX9kNU9K+7tRpNs3xYWzKWHr4TE3TdTqQ1pUFUWYsnage1kQrg8wU90vwjxBjU+CBZWbj7SrvRsT6QQpFsvRypUYuGyYB8yut55+rrORnOvDJU4pCBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755278993; c=relaxed/simple;
	bh=NbZ6THGzWqOYtveA8ufhqqhwfmxzN1W1m1bli2NffqQ=;
	h=To:Subject:From:Message-Id:Date; b=MjAli/RD3o56hJgVwyHPAInCMSsHWORK3tc6hNr4UrN9mvbKTVyGzWzVMHpweks6YZ9G2Hl0krZ4aV8lWF6SgCsPXz5WCsqxHh4nbLU4TS6dju94x9YscO62qb+1vcx8hdEcaFYq6IkWoQrBXAfKTg8Gheaf3sDrb8AWK9Me9Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpsTsYA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpsTsYA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35D6C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755278993;
	bh=NbZ6THGzWqOYtveA8ufhqqhwfmxzN1W1m1bli2NffqQ=;
	h=To:Subject:From:Date:From;
	b=gpsTsYA5qGIEZjIXWlMcCMD891Nkq3hPCV6LNS3MsOiTlarwmgi/j6KZeOAdIYjg7
	 uizQl1dsVN7dguUvN+K24DlhODQq36QMgWQrOovUDOIFI26Ou3OksxpsBS/n2MfoVa
	 Vcos35j5JwBqPy1gqqcGC+SUn9GD+kmbouZaZ6QoGR8wYDvNl2Ug5PzkvriIhH4/Nk
	 oHqCcAHjV3+91uAtd6Iv2h+lG9MTZmq6IiIUjhzbflRdwozK7Vbk692TCF6lbrTX3V
	 S8IFssKXmyyKVuQvazuOWcam3mJcBAzll0Ipcaz7Qf4dxCJxbdqLClZoIEY2xxMzBj
	 SymwyYCp+It+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C7CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527899358.27185.8081136831135437568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a4969bced5aa38942ab68b872eeab2f2c5f861c13d63eabaa1953a6f785a3e
Date: Fri, 15 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755278993
