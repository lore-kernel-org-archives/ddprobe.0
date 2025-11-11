Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F00B281508
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762897194; cv=none; b=KuvVj8RYnTdTNRcf4Z0vNRl2mus1n3NVSkFsQBLWT89QhEzGP/JbHRzgJmiuVnmx2ngheOi07JeD87jzVMF66PJj601H24WnnTFVwOy4EeHIXaTfs7PtbPr4RcxzIYAAldI7B2KBq6ihg5yBAsydh+RqzDCKkvlPmmtWUxaC5D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762897194; c=relaxed/simple;
	bh=EkMOwIELxdG7SMYuZfukYFt5bq8TPI71sY4P+S/bqFM=;
	h=To:Subject:From:Message-Id:Date; b=PgnysMgJn7L2H+rQMbxwX5Eou0vOSSjnHUiNuWSODPXpAgmRfNEafYcAzTowoXs2O416bdfrLw0HxwMjJ5g+/FkG/iGfx7IsZ4x41WKBOuZ6ePAR9xmDRNafvzWwJE6uFZQlMNTypmkueaoHTj7h23pg/WNE7yaRCuMMqaaxSFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jH9bZzNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jH9bZzNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA16C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762897193;
	bh=EkMOwIELxdG7SMYuZfukYFt5bq8TPI71sY4P+S/bqFM=;
	h=To:Subject:From:Date:From;
	b=jH9bZzNVjoxs4HaYW5ou7ZxSSLgUanPkiutfl26Z8zRYJVYc5BQkN0LzaeP6ulamU
	 7Fcg8m/NeYzrWhGDZP+CZht8yMY26Lzd1wxi1g12qhXcCiPwj4ATIXr9zFnE6doszS
	 D/SzCU+VAUBTwarMjthOUKFm+zjPO3OjQygaAGwIpf3HJU5Lc+HXnVf5UA9BUeIOce
	 SVTSlNND4afW2Oe9wtwFY93SNry9U55wZywwb0S4u+HeNDafH6Kwb1bhFJA01SEj7V
	 9UKIGtN1983pk5j8sazvoVLsOcEIIZxliMx6eJnSxgjCaVNNPu885chTwoGSHuFnw8
	 wn/NnQF6riEGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90591CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289719358.4927.15665594770315808243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7dfc0c6e449e478f77594a2d589fa5c1f6b7a5f9bb0b89301c266233cb2db95
Date: Tue, 11 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762897193
