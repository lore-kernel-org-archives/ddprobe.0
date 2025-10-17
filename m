Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9BB192D68
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760689793; cv=none; b=Qa64kqJDdmuU8ieUhHx/F5yqvX7rv2TQX7j6O6TCHsJ4Ubz2SWbkZxsdsMCStRbEbSUDnA2Yt/EgXi5StiwUsmAhOzHzookLLkG6I8+FLuX1hTVtFCrwErgpw5mC9uo1glUv6gClCcvTfa/hiszRuqsyRaz3tlbT2KHu8dg+P2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760689793; c=relaxed/simple;
	bh=ukHtYTYPBaUZRrKC7PmrdcM/ALr/d8cnLF9MYyirQsw=;
	h=To:Subject:From:Message-Id:Date; b=D7YqXDzzxy5/YHOyUkJ7KRVWOuI/mfXgViQ7Cyd8QHKqfL0qti4WcUMg1W4SXx0Z2KLTiELMVoTJcJRqYF7cqgcAA1/7hileLiLrg6LjkfPxQNp79vJvFnqD/qIY0K9R1LE2TQQfRWmTU/Vw4FuRh8YqgQFNzBPEtsco5/x315k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDgGq3qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDgGq3qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B08C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760689793;
	bh=ukHtYTYPBaUZRrKC7PmrdcM/ALr/d8cnLF9MYyirQsw=;
	h=To:Subject:From:Date:From;
	b=DDgGq3qrkDGbwIDNNQgOaks9AdQkMyWlQcF+NVKg90AiYZZYlv0jwhjVpnjXOLYtq
	 um/hsoErSlaW+V0qRfWH9hA6VRrZSCxSYwxN6/BY+adiMynez3bHK1OlkYyTa4KiJN
	 R/Y/f4y9dPszdy316P0MMi4KW69J3ovYklO9WW8mxqrxwFTIoqmWuiXgU96bPQ1LYw
	 /sjiQU3Nk6DHk1uuvwgKy2pXnQxI5NN1sHCWUpoKmUC1fCy2RZwVApG2asH6G5GrZL
	 HnXBYefGYh+rTeiIgNQWIm8YLcJM1PlWy7fKp7ILsrbyZ16m2CCb5VPOaliyyJFKNB
	 zHSpLMwIFkoeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F0CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068979357.26121.12955458889523078541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cefcfaf1fce4c8d78c813195d03a2ea79f94d5ae59abd4e8c055063ac0cb2881
Date: Fri, 17 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760689793
