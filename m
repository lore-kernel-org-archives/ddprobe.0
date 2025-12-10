Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5DE1F5851
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765402374; cv=none; b=Y7ESkcnzDBClY9a1v+Qf9+z6DSO9JKmIRMBFKlxnHrcHIam685EtbVu8J4GOgLQ/nQj0oZDWsdbf+ejGuYhpCvVKKHFqn9cGtGbNZNNRsN+YtD3yC9tuw+UHqT74q6SHLdde3tO3VLJcTB+3/gobn6D7ZRQ6hroQtiRdCYD3sJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765402374; c=relaxed/simple;
	bh=g7PTYEY1L2UTZjN9rrchiMdigyRORv2Wgt8RiTLBp0Y=;
	h=To:Subject:From:Message-Id:Date; b=U/f09fmpneCt6RSgbTk6TzjkP64G3fFaGi6mSDA8ftL9mLZLJC1JRpd/8mkpme5BH2yHOZA5pWwfsIduAjYaZgmSkn6RATpbX3hg8Vqa+mbkBj7AA7kFDBKm7TQnilJp5ksG2VP03oL6KD+w0Q/WJmYZ+aqsXqOewCbEKIk88XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0RsL9ut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0RsL9ut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF31DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765402373;
	bh=g7PTYEY1L2UTZjN9rrchiMdigyRORv2Wgt8RiTLBp0Y=;
	h=To:Subject:From:Date:From;
	b=G0RsL9utflN6DDMYdFgPx/Vs+Ly/C1GExFRkZxu+6XpL1VvR4tH++rMFHTJDPibrH
	 2aGAuEmLANM8KogBUEnGXQkBgjFyo+7uBwqxA5PZpfjCHWsUlgR5YxuY0dDO864eN+
	 80GVtWEkL6fgIpg0aqbwDj03ld3T6FoGdy/eP2MSFS2L4yWPfbs1zQWhIzyd8rSIah
	 mKC8EmoBzLscHGyFO0KojdLHGw0iYxGXk7pqLOCdNGiupbH0BNx9J9AglbqYfTVT8+
	 +jb2EmqKUgn616tFygwMW/EyidXr0ERlSvj+9nyE839KZHoT0YUcXFJmAOoKoIBoPP
	 s+J8M5qiYMUhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96773D3E77D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540237359.7293.14977638430441090275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7464a54dcffd537c60b18d43b8a2f1e6a672dee2010f990a670975d1c9195c91
Date: Wed, 10 Dec 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765402373
