Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8E9182BD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743825594; cv=none; b=lCu8WYjAPvg5qQYlfMUkEuAfr4/3TEyROHbh/hHVzFsEENwJB+pL4FlMdfJfxqN+Nn7esH0vXPHNKLZd04jrCvGVFqw4O/Vdnh1qMer0ZEmh3QYA9ZiRGUojE4QxYCFHE5ukmaZOQ/5cJVaR4ZO/LqhhZBN4FZNagaHLaV+Qolo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743825594; c=relaxed/simple;
	bh=7uH1lPjqSiLTXlbjl+OjYETJYrSKGwI2mFD8L1YxXhI=;
	h=To:Subject:From:Message-Id:Date; b=t3wy2nZiGc/ymU455hrMzRaSuEKI632lhav8H/wUqU8SGBPmkK6/EKaOMonT/0zkqQ+SWgbpFv3E/etscG/XzV5ckyMXVCL8XQ7qHtlqHGIFTMiUMnvwDNn8zYibOwVI8e67FX1oLIumLMUvS2vgCo4FIrWNZ96hPecJi+aeMv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIVMc7W4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIVMc7W4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E6BC4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743825593;
	bh=7uH1lPjqSiLTXlbjl+OjYETJYrSKGwI2mFD8L1YxXhI=;
	h=To:Subject:From:Date:From;
	b=TIVMc7W4GNkaQ2je0PcEWEBdatqwoIOmyyw44kzU4RGB/QAYzNftFgmiezE24gQkO
	 hpog2QyJaSp8ltm9LXjFQMdf8pa8fKF0K00yRHCTmZJ9di33yPazmjkZ5nk6gzGqTC
	 hSUGv2F6h+3jvAoIqfJba5X+kawf54TX4i3SCJSapHGTkGoeZgNEoXpKY0ukTKb++V
	 Psp/Uj+iP4G47B+cA8xj7gIZi0000ZGRoJYhKh4X+aBH5qOYy+SUzWBa3YB0PNflhy
	 3GQB8fYxBuZHraaL+Aj2fB4A5thNhhZ9+akB5FFl82xPR3xk8kJRZupxoxgrjq9Vh/
	 e3Je+NVA+PXag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F97EC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174382559361.28010.4746922226318794313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2ff9154c33218f03dd32c29f5d1f6a5a89b4f785c9ddb1e4b2deebb0406b57
Date: Sat, 05 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743825593
