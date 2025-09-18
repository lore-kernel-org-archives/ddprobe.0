Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217DB30CB5E
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758215394; cv=none; b=Kgu+k/joH3Y7d5cW75FAVIj3JXbWzzlegx2rcpCP7hD66osX49cVJRtbVhoX9TcK1UimEPW4KSFOhFRY/1b0XqJNFsH+Ob+OC9foK5VO2VnuqjDvZqYnxIDYNnbMgwBDlOu8BPWWVHVH6ML9ZwLVaFnPUb2C8bWwLnpS47QraYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758215394; c=relaxed/simple;
	bh=0n48GyQjleoBR6ComF3UlM5Rw3Rbl/cp5wm7ME7COsQ=;
	h=To:Subject:From:Message-Id:Date; b=utrXCMV5JeHmI4+5ZdAjgJgxzTUrj1QkGdTsyBqtwHLEp5vw9WHCMheX6TW0P+8skVOsA2lZC7RFJaGO+JL/oerTHHbhrcpnDkvcT4mf7NBZfp9ChQWoIzeyxJjQz6Be/J4L1ae9EaN3H5rMKYTyewrI1bG8ZDlfBGyHLIjYChU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIqBiQUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIqBiQUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EA8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758215393;
	bh=0n48GyQjleoBR6ComF3UlM5Rw3Rbl/cp5wm7ME7COsQ=;
	h=To:Subject:From:Date:From;
	b=rIqBiQUheGoKgXRLIkJaxMiTWO/wkk4atYWzDb0TKzVOv5RaKhB0KQ6RVQMTYjZ89
	 ZiD2gSVGDjyylgfCKsYV+PrtpbOrApc6EBXqDWHlH1M92GbDI43arswnwL2i7WY9eZ
	 Cyv1ibugrFMYt+JuUXcE8YfyXlJLdEX5wNauzOMNubyWldCv9dwDJx0mz8wqHY9l03
	 dCrnMrxZwvWd9II6027Nqnu+DYVTLRswVOrpS1noWOaHVyJQkeBbTjxt6RrPjRP6e5
	 aWtXk0eBlNN3RQ/z146M6o5g66Rp33O5Yq1yiCSD+1Op1Wv41+AC13ZpPiksO/2H6B
	 9IBh3H1IH+Cng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94001CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821539358.2421.7977652650480792465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6096f14011aa3e4bf0e7ea6dca0f14e2489354eaaeecccff86b87738ece51c
Date: Thu, 18 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758215393
