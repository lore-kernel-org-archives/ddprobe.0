Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5EE371870
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774254294; cv=none; b=FYoooZ6HYrm7JBo5RqgCy0IruZHWpaFfbwZDgsmQ9fCTQTl2Sr8r7//IIEkMjB/79QFa/IZs6F+GI7OzpB+PGY26eHv3HLHiSuM6urhV5rFDlRcwGIqnhl1jTSXkMGiX7htbXvcttOR6spFSmfqpiei414kpgvPZR/uL1L1cfDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774254294; c=relaxed/simple;
	bh=uo901OXSSzd238d2fdsfAwTH8r5wCIrxKW8xzxCAhNo=;
	h=To:Subject:From:Message-Id:Date; b=g8UcQJbcNOq4EwnpsKfJqNHq/vulA9MMCIFhL27/haDpLU741Kd4DEK1FFp3DKXZgU6SVXUl9hsJ+8dHbD3YEbx+ufcy61rUXchuP4Yuw9NpBrOp5iqEdU5Bh6FDLZc0dxD5L5EDbE5jnLEcdRXSgP2dGn2/O9mswJ+xrdL6PMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXQyQnhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXQyQnhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E977C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774254293;
	bh=uo901OXSSzd238d2fdsfAwTH8r5wCIrxKW8xzxCAhNo=;
	h=To:Subject:From:Date:From;
	b=VXQyQnhlB/QtouNa+94lO9fDN/IOcWDtWMfrGWXAczTI3ODkfsOveusc5FYpSTYDs
	 MwXACWfwnxLoJKDC/WE/uXCOCZ6M8d3mwSRCCk4Z8I37l7NA+UiSfdSYvjk0t0Ji6Z
	 KIqOvEI+1V+cZpv8M+6/P6f6MEVmIRAErW6Hski3wHjQF0Mm1bLPCvfIYyzUsmjrOU
	 NgXJWznbPkJGy4Tx6Ih4ph4TSXGmW2hidurhKoFqJOf6tEQnai91R1G+k1YmVHanvJ
	 mUBb9tMVRhQtGRphGQSghBJuPIp6W15hWWzn2MMk0RXpA+rythC84e41GGhq6KQA1I
	 4RciZGB4dJfhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC8EC01A3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425429358.1909.14201406153669966033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbb92f7be668d4b359507f8ebf4e8b25b5d7a85d5f7eaa1b341cdd9c76ea2b2
Date: Mon, 23 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774254293
