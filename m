Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9D71FDE31
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774740294; cv=none; b=R2+NtqhU0wnzfbj9JiuY1q39bkcDehgx2ddDT0PdOsfDsPTpImlYjpfClh6pb2Ln/7F+Us1eJv8UuinFuvc0olxvujM/0w/D5cn/DGr7UxxMU1PmMzrukP8uOXR9khORQ9rhv4IesYDBVwNRbFLUGsNEVFZZYo7kIGT3UhnStTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774740294; c=relaxed/simple;
	bh=ClvUnXg7KyzN7siwLgPN4nZaQ9/Er8VYBjEmZTlxE2c=;
	h=To:Subject:From:Message-Id:Date; b=m7yWjcYmDY9rSQF9lS4hoAhATo904ziyQCYLL7jYivmdwCEH4kuM/w567AfIOoI7AT/CPXs1smB8QvFux8OeGkZCCe5xdCSxnBxMifdRwyJ8/ypO9MtYamGWEC9UfbNWMXgCGBXPHI7pQnyDUsqQsj1r6Fxo7NOmbF2yRsuXLqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh9bdTzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh9bdTzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A906CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774740293;
	bh=ClvUnXg7KyzN7siwLgPN4nZaQ9/Er8VYBjEmZTlxE2c=;
	h=To:Subject:From:Date:From;
	b=Oh9bdTzRdfeZcw4i/RLAZokCIq2bBRfaB3bDV04u0cqgyqUsbVfJBQxQEdYOZDD5o
	 UxlkAgLNscbvK3Nrl69/kfHvmv0C9EWAfar6/E9hOmrs9ZcFcJONSHzmOQeA/XTZW4
	 94JzyCs3AgPc+CCElLK/mdenyFosIBjv/4yRBQW5S6uPMfRlqphmRZZtDnYNxbEma0
	 xYqYz35Nx69QCF9V9HZYlHvl/b0XCEWArHrWv0ii91zvn2uvcribyBFEjnY4H7oJHY
	 Bl4McBB244VmB8LLAY0lVioxSVVYc0k+Z2YR244Aunw4P6dmoYhEHePw9QjTWG+gu5
	 mFw8PFmyCh2LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AAD10D1489
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474029358.1788.12607941345138383179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81566a7cec48d20fee365e861ace49b61f605e643358e25371305de11102a18
Date: Sat, 28 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774740293
