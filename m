Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358F3211497
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749614994; cv=none; b=MKDcvjWTlk0ABWNgt4Z3uYXvM/3XLda/uCw116ZmOxXgUxTIHk+GE8NGUktqmBsPKfBcmwqdqFk9R+i7m2ikBV5nzOob0gC+3bmDqe8BXfq5ECRd12Tbvh2XvE7jfvTXBtM2iDREobPpZr0CiK5PK97TPMnaVZGzkzfysWAGBMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749614994; c=relaxed/simple;
	bh=g6M71SfYIifYyqEKlclMOPuzLPLKdUvL4kKu2h+taXM=;
	h=To:Subject:From:Message-Id:Date; b=WKqi5PXOH2yNmHUov4SblHfSPEK6i+Vh5Y6pAZOT0eQJtZ9NKVO+xO1Rq/A34eBTaFdoKgdJ09rrwTrD+GEb3sdPSpUZDD0MeajKr9KOr2cndQEC5ZWGX3UjWZWPVsOvrmaW63DCYKjA8YArqTuZZd2+Jy6pJdx9nA89kmRKPgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqPWum9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqPWum9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF04CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749614993;
	bh=g6M71SfYIifYyqEKlclMOPuzLPLKdUvL4kKu2h+taXM=;
	h=To:Subject:From:Date:From;
	b=KqPWum9YeCznVu/h6mtoi+vkFATS91A6odjlKWpQ3bMWT1VbD9WCgOZ5oyFd2FTdX
	 9783pnmtBcn71MHovDeHcTQd3Rcw1/IzNbddA7msNAPxoDxGBKxcliOoBK9ZqL4T6s
	 FFEUjv5K1ZyKPxqjpNmCw+Df90eMUSIJdKgtx3ZPmP2szgztEBQODfa0FfhLllF9vc
	 gZyFSzycwOqcs7295Rya4OR0iNAoUbImlt/frzCRD/mZOhR5qo1tGFL4fYrOqFoiMd
	 JHgihppkZQv4UW2anfoGah6ziqTJaKhqnG4Z+oJwScatJmIEsY7q8MZ14IeltadV1X
	 ENIJdrSLxMctw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE17C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961499363.26102.6254513072454573625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe938d1ae9797676b316404fad2a3a77718b95126d3448b1001ae9527bf909b8
Date: Wed, 11 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749614993
