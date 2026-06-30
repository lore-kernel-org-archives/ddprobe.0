Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4585438C41B
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782818914; cv=none; b=qCfKlsnX3mYJwPDWEJlAOY3WMFEOJX6XqQS8KA9r6StMvxPl2uuP/eTBRGonkVYEDVBJhjJB3p1Hmah7Jaa+92Tqv/kAXlrq+rv7BiW6BKd7iLpm7vmqsXYzpAlrLtJ8aKQmEpXQMtHW9tXYjnAWLT6THXmKBB20G2YMvEJK0CI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782818914; c=relaxed/simple;
	bh=6gBk3JEn+uXKx4JINUwhr4SYMtlocUXFEXOZkcO9esw=;
	h=To:Subject:From:Message-Id:Date; b=WkrkPgZjE4Hhg4vduRY0oWmo9TSjiRsGjAXZp9uoTUwc7SpX7OF/lC9E59lxECQNbhXajJXpbNuQ5jAtr2DuYGN9K0jkv/C8tGKEyUiTIl2QWaEz8V/n/csNjr8atbslUfz3LF7kYkbnXpzGfiunjd/JAXpoLivkUaXs5izyYck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMAjHneN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMAjHneN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8291C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782818913;
	bh=6gBk3JEn+uXKx4JINUwhr4SYMtlocUXFEXOZkcO9esw=;
	h=To:Subject:From:Date:From;
	b=bMAjHneNbOwjWfuHB0RRUIaCdD9poCJnTejLdW9bVXRitTUCOtqTYsPx9l1CDltD6
	 iCVgzjFwTOKnDP6VHi/D18jd4+haITSf2KYQ7IaCqLQfFaDmiaPVdSPYChE294j0ul
	 HMcIZEV+ZI21VV2KiQGITex/mlanq6wfU8iDFjwk2VFwHQ6eH2vT4x1yDg75QAzw6b
	 KfO85THFEVyr0z7ynr8blbseR9rN0pI9mu2yzo31ubjLwbaimdF7CkX6XfKofqxxss
	 +6PmqEt0wLH4bsAq7oqQ3hPItoJwNRRYj7/+/0Tluk8dfD+HPwnrJzLyDk0dcdfu54
	 LKxdv6yLkqUVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A864AC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281891368.11540.6212776006034641209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772e34882d411cdc238ec0a91e741067dc9a681b698936e2bd505ffcc8ce29fa
Date: Tue, 30 Jun 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782818913
