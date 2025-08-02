Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175FB1917E3
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754153994; cv=none; b=WdXhdXLZx1YrVmKytz2YvkGrqh73eqOYjs6V2S7bBJOrsU7HIVkXjASDX0hiPZW3XelkEHlQw5GEKl7oB2hE8aXMpU4MWrQD3RTbahGsTbbAK0GxaDOSiQBgb4XQorQcjPWe76ZwbKLXCL8ZaIIK5Lznr44+dwMYJKEPBkH2olc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754153994; c=relaxed/simple;
	bh=mNn8v3IBKXYfxpKywIXgrxPjrrRl+eI7APvgVuzWPaY=;
	h=To:Subject:From:Message-Id:Date; b=c1d349Lrk3p4Rp/aOvoSWmSovKH6gO86qL8i3cRtuCAiPHYJXp2KgidmNsUOBrqPEGvngN06KqNelKnElVGZWV1wewgmgWuyf4X28RZ29ChmgCshabGWQtIOIrq8jsa+3wjyAXsiPJ6SYYB8EflDA1BTAbz/BLzVZWUgN+n74vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWybobVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWybobVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD7DC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754153993;
	bh=mNn8v3IBKXYfxpKywIXgrxPjrrRl+eI7APvgVuzWPaY=;
	h=To:Subject:From:Date:From;
	b=CWybobVhVARtosBx6TXgXIh72E/lGvlMrk05xGnD/EzfK8nuJfwFskZxXwUNvVv3b
	 fCl5Ja9zYjQ+9iw44ZOFzcAhLOiYH6HquGZfYhE5lpKZ4dH1o50oV8vvMBl8YvqqBk
	 ugCNzrVCGpzuOFAvXsUFfSkJ5T3A0jVYdqmTmoLDuFcjM2pDpfjkCTAgxMjGGvfYQn
	 uZRXV/PvtGG6r0p0QbcFOu6S4WikvwjdJFsFX0X1ksOuQ+RZbwiIO1ZrVgyY0EVOfF
	 gIskthqufiicMtX4ZWaPIYvBUg+CeRyXQfqsfL7KAwmhigionLpiTp9nW32qwV1w+R
	 Y75/K2TdEzyXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3EDC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415399357.19952.1496624863908210232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22c8add23891a337d1a6678d9580f7fe0d4c737b787c339424756c451b89eac
Date: Sat, 02 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754153993
