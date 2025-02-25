Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501E920DD71
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 20:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740514734; cv=none; b=sdDoAmRhaTiOeUhcxFpliZ5xxllRFskzcNUSOMvZi6+k+oXd461j57b+iz6ssgm9qkbNpbgaXYHTyx3ArrsLuH5cVj85CzvIW1Kh94w7aK4pvUeVKDaycAn5edNIqzWLsPUv1Ws9vyNrbSmmHOEmdhAz/vLOKMNMft3l/0qjIYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740514734; c=relaxed/simple;
	bh=sjUFYsbrRmIgytQv9OZwGVNDeXMkRkRQaVo8xGvDe30=;
	h=To:Subject:From:Message-Id:Date; b=AmPLRKlEbuPepG7GRb1yR0IuDsGZS6CSccJVb46R5Dr2XspB3I3dvvM2BG81ageSGqgiUKTLILMxS7gHHG4QKQs8qnqqsMzUqo0ioz5XKg4jwjtKYmll9kAx5p2y4fDXT0L6WXpwQfJgiubwWg7e5mRIS9jaoCTABl4jYv3lHw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sggItSRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sggItSRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA67AC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 20:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740514733;
	bh=sjUFYsbrRmIgytQv9OZwGVNDeXMkRkRQaVo8xGvDe30=;
	h=To:Subject:From:Date:From;
	b=sggItSRaYa0oXLVsFaIIJVnHqBvFQvdyt5rrgjv6AxL/nYJrQnrVqVcBCFtT8tR1Y
	 5KyZhBpyifqJFZ63SMnL/52/hGqnO8X9aFHx/0rJOhX8g1AWyfIVdGtFJG6Bxx5v/t
	 lgPbP9xg5+28rdOyr1NdiIp/kwis8Mvt0zhJmebO6wN3mJIBxxr0jx99GoecWxrlFp
	 rWL/rWL9YXvF+cUivcEgXyYv6cNf233rsPoIC2E4OrGYI60IMpEzJlAIg4Qzz6wcfI
	 eaP6xYUM42FC/CBbZm4wIu04oYh99ZVMYyw8hMIn3CWnHd4lC8iowUEl6QiP4VwkWT
	 GpSR9lCGELSUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4445C021B8
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 20:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174051473365.12417.9946905366274548753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a43d182eaf74effd0fd3609ed65adb49e52012c61115d57ab93c64c220426f
Date: Tue, 25 Feb 2025 20:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740514733
