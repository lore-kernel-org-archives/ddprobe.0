Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06ABD23EAA1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769710434; cv=none; b=GNFiwL+2CB+9M3Mu1SbVepIJ5V2zjb9vCYbHchXiYNOf2V4GifHej/2wZ1kSjNGYOZa2Syz1wiTmR25nb6c7AIskpXPYCN6stRk5M2yttMOAhSqhw6lePEA5ZCR9pqnH3fJLLYBfWyzjbNZ0FswQgXpT8pUrlMCT1603J3NpIUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769710434; c=relaxed/simple;
	bh=ycu7v6uDu1RBRjDRTUQABF0z12KvgvJLSYEe3trh+v4=;
	h=To:Subject:From:Message-Id:Date; b=LjgbaafVja1NaIJ0iJo9I4yhH0i+tadS+59RnUZEQDN/ouh6U33ayoSYX83FgbJxc2OYswNXyea25gf1+N5k+L/GPRX+D0HoSjr7DUEfJYbZTVjr/qggeYA2B62x7Sa8dtxY6mhbV0xtqUf92JBVUFh5Cm/LEaDHEx+XkDGZl+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRlSYajc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRlSYajc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BECC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769710433;
	bh=ycu7v6uDu1RBRjDRTUQABF0z12KvgvJLSYEe3trh+v4=;
	h=To:Subject:From:Date:From;
	b=KRlSYajcQ+SdmIAsAyx79tKTiqRZBh8jcJtL29DInIyANX1GOVNUWKzfGII8Re67N
	 7g6kDVwiDvWnVyifbaLetDO1ZrocyFnYLeVOpbeH/3YkjBehLlW9Fovhi6Cpr76skw
	 nRAWyd6O4L0T1RdEaOURPP9UZPmeY1I/djk6i3lS8uXDfYX/IkXQp/KOcAFMhbeQrJ
	 Hj3m14swABkVEukJAD+92FN1d6KB9eiMAIf9xxhUBV0okyxqaA91IMB/zTA9wzhHpp
	 CceXOd5vUCMYZH+7jyFYsK0hiQEBY0O2gX5kRfRfV4N5kbeXeft5gIwZCEFsRCOkrr
	 2MgFznAnm5/vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924DCD73E84
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971043357.31666.12305321786830668890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb7185fcea8b5943d009f7aa00d6c89d8183881d84d67ce8cf5c5478813d3dd
Date: Thu, 29 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769710433
