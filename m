Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2FF1862
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765589574; cv=none; b=T6xkS+6bwFQAlBR4mzcKDFQHSCQk9CF4P8gqDU7GtrN7b7d4IxYf5sGIgGmgH1V6cY86wcbJ8fVHERqznlxhPrfzBRw1D6H5w0lWSskryqTcsjfW6ka5+gGbska4/Z7fhKP7+Fgbom2HMw0FHE51n9PmXnoMxx53hcJ4L94nUQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765589574; c=relaxed/simple;
	bh=leHsLbKbLpqS7F2wD8WKqBmeQHqW+Sm0ebUThDbzBK0=;
	h=To:Subject:From:Message-Id:Date; b=VqSqKCEZE6BkvkrKq8YT9KNduxQwqFeYIf+zW1l++etj9Jtng2fyonr4IPZB5SlR+dBaOAY0Rd2qwiHLBMZzlRix9RD2lkMCu348KXYnvioxCWsRT/MPeHki6PVI/VfeohUqKWSAzK57Zg+MujLJVZX+6xd5++eEEZ/CsHjekLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6HOsjxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6HOsjxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E75C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765589573;
	bh=leHsLbKbLpqS7F2wD8WKqBmeQHqW+Sm0ebUThDbzBK0=;
	h=To:Subject:From:Date:From;
	b=V6HOsjxcpyQivdl6+sZJYvFhNtIXiNHRooKQ9BoxnOCh/dk0FOBvSuYhpNiX0M1Vg
	 0Zkn3foVHiA9FlDllP9ukCkUx9Eb2JHChH2mDdhMeH3G1UlQjLRSa9eKvcMrrRX63g
	 ESaSXIvZdLcHnfDoLvYINCprZ/HnTC+G2YUGqPZyOCYjUkKqwHQqejE6wmCEup5KUH
	 0CDRJMdKRPgpJzNpTcPWWADZlkjIZDdTtYhMQvE39fPcj6hrxuJMrdBYJKnNEEus0r
	 dTgL+r5IMmBMh1PYZWCvdbI19Nkgea1kbBNftPaI7sIltgUipn2/bpN+GQNKGWr8Dw
	 GyVrUlDZSQFQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C7D59F60
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558957358.15484.720511816610481929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c96810a5b3e9242d48f9c794ee951bf3e7867ed4b0de2e06c0f88deb8aa3a6
Date: Sat, 13 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765589573
