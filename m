Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C02221FB2
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756311594; cv=none; b=NMhqzXlQNFN46+Q52arwKc0dnJ0poEmcWjOxN+4G50HmypmaFy50QyIcdE6Be6rPhuW/9K+zYMdKhayT9EUhnNpC/RK3YXEgaThKXMtJY/MAoRZa58GfFIDI84G4en5OrNAgTQ5FdCL1prCCNa7Xzwob4cfskw9wc4mIDT9//qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756311594; c=relaxed/simple;
	bh=9wViJjX+EPVCB7K2fhaadMkO/RizB/edf/W6KOrWjns=;
	h=To:Subject:From:Message-Id:Date; b=n7h7T0OoMRfcZxIJYL9rt6d+rceVUrnPugebkWDCgZzEiObgwHIwDtvrFfnkU0E/nKs+i1Wjy7P75ZJ0sKG5FtqEVhDoLw5qbfkn9bzTEli1zYVtu0PYFCMFBZsfU2SuT3mkvssjNuTgji8BgOreaAI0MVztLBS/WT5eUYVbONo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TepqhOis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TepqhOis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDB3C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756311593;
	bh=9wViJjX+EPVCB7K2fhaadMkO/RizB/edf/W6KOrWjns=;
	h=To:Subject:From:Date:From;
	b=TepqhOisZOeMsM72Ik7VCW1sjkFjsIXto5Y51VJK7Kf0oF1vC8NR5E8/jG+H0CFa5
	 63V4wDiALjG09U6Vo0CeSMkEqzhmA9KtBmL1u2+985mzC5HmPdhwb081ymXYTNTq/B
	 l7q7bcwn+lTDxDlx+BtIAA4Bt1+JDPiTXdJlCxfhkkFhQAyNHEhGe8Cc8xfdjIM2+l
	 XdBmCfmlhXP1CN9DCT+wCuTbm8/aPvioJU1nd+qTp/aPQpqA9T/6k6Xv7VTJMl85E6
	 hvobdt16n99J5t4PJm1C/LtcUhQUwETUzzuDHSFi8YGMqshWnH/3COVgPs5y1Y3j75
	 K52WwWrAdBvJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90703CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631159358.821.7728897401070051246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1518047ee91bd3ee1196ed3d4e878fd24c12fd3e4a331a442098443e47cba7fb
Date: Wed, 27 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756311593
