Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2E81CD2B
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714914743; cv=none; b=hQ11M0UOOr5Nlfl4W54Atr5lZekyOyHJPVIF47q7QkJLQWgot4x/XoZTyBQTcqM1xRo31D1z4wC9U0oqb/JGu5IAfiKa6Axx9UPJvpRDgXahrBjyU7WD+1x8qpCkwLyNP50esoQ8vBgLtRNWFlw2fH8JZKW6qhmIsq3PG4Kj0vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714914743; c=relaxed/simple;
	bh=PVpeLYe9Y/0yetSkfUobssgYkOyiZHvtdrraAG22lLs=;
	h=To:Subject:From:Message-Id:Date; b=BiDXksLCiAcDQAFi0BNp8zSzcJR9mUHeQ2vSdhi9Vd/xUTvVWUmYX7oNoK+DL3fbwqkkvG6OlAMhev/m8czU3dehrjXMz/kA1YR1fza0N3fEWE3KDSWmCck9xjmqICEuJMCv86nuMUJxM0EBa5HO8SaIUAddsUIqukeVz4wIduo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f93QzwTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f93QzwTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51F0C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714914742;
	bh=PVpeLYe9Y/0yetSkfUobssgYkOyiZHvtdrraAG22lLs=;
	h=To:Subject:From:Date:From;
	b=f93QzwTPnmTOqDlKTOMu0Nj8vB04RuNQ3oSfjbkrddBsguUucDE6CS5xzVn8t+h7x
	 IjqMdpg1pBZmDc3Hyi1kZ2TTfdv6A21tOvhg/0OtIPHv39Pas8cC1SCHtxPng6c1Hl
	 eiUDk4nyMjILYS/BrjiuJC8QzIXaXEAdYybUK35rD/SWQhKnjWHnwUstWqT1D56MXa
	 MWEhyrYgvOuuRI96GWVFzevYjQNF/hOSKDmiW5XdO2kp2l1GGnBoJTikg9zo57ycbS
	 y9M1eDJLYl+xZZtRg9DlmRGobOHJPqBwbOy0Qcvt8pVXj77ch6gwUanxuxVWUssSsE
	 R8BJHpliGB+iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D89C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171491474277.914.12808516906140960508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e640de52dd89ba61957ab00abaa30500229ff32fe565db24fc68de31869f4551
Date: Sun, 05 May 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714914742
