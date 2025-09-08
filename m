Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB4E30749E
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757336395; cv=none; b=TuoaQ63RNXa5lQ8MkGhB2NE5gUh5lza7g8zuHEe/O5xLrBPjj36ScM5CVbUf7TCVzybcjAZWPPkmr9nkI/68EOVv5xDjXYkJrI13dvghS+2mCnzwvIomkdIf9cbPF2eiO82yPhuMfbZayuXzLMiWNYbMuucdCme6JBmAiADOQhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757336395; c=relaxed/simple;
	bh=7kMRQ26/SlV0509FR0kIPRhdhJNF5Cz/o/C8c13BVZk=;
	h=To:Subject:From:Message-Id:Date; b=Wyyd6SqZ5+ae2TShABgpvYq7FXv4nOMOlP/bx7iScAmLoQfypYmnE7/DRcxrrd0VLLyMSnoy2bCTikKcbg7AatcYR2+33o5nMH0cmAPWpnxiY3/YtMoHCYQOkwnDkO6bhZDGVXq/u0zbUzOyeR4Bq+l/dsoqgQW41Ncy7VDl550=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEEMJWKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEEMJWKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF42C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757336393;
	bh=7kMRQ26/SlV0509FR0kIPRhdhJNF5Cz/o/C8c13BVZk=;
	h=To:Subject:From:Date:From;
	b=UEEMJWKY8sUPGCDoOAh4q2uNCH3VsEp8o9o+AF/F7tzI9VTx4nbdlnyNpWS/6DhEe
	 QUQ0/hFlLbcrXwyopctpxi201DlqvTct1uU17F5HJYfSJwGtlxUas/5Ya6AG6UcXPd
	 hdcZDKUjM4uNQEWRkZAj+tSYZs54eNrj+xkt+tSRUJYAuinijbO6bcyb7AF4Xj70aH
	 1anHyG8wTzyaiXjMk2W8ZHgJXM9UiLwE6IsJSnPMw7YFBa6bk3qKYwXIBf9K+34ZNe
	 wY9WBhEn6sNcEL31LLUFHYDRQFAXBOroxZs3rWQMUN0JZy6P39rgyavBVWIkcpqAhS
	 nqVmsAIJWkAFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9081BCAC588
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733639358.27820.13957269560672676738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60faf9141414cfb64f9f75aaee93204ca2e511809d8bf9bc1e2b30e8a6953c62
Date: Mon, 08 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757336393
