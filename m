Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CD83672AE
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791408634; cv=none; b=eQS5L4uaKEKCIM3b13HdO2QiEEpUKRwiGScWYIJuKGbCEOXlEf6cdzUbzWSYXR3PVRoUDK9EBN8dkqwD0R4x4/jSU8FRwqhsWkvt1hvWoTSRavumnQ/ZQn4n/oS1K9P6FnW+/ZWSs7lSfh3pesIl8l9ZfWlaSkl1Yk9kNab5oak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791408634; c=relaxed/simple;
	bh=whRqp+2mvGiDGnfvn5cuj/737TX8hHaN7cRb0KFRe5Q=;
	h=To:Subject:From:Message-Id:Date; b=i5fFku9fli2SC/wXQaKtg/RkCJ7IYr0YzhcuGivtAI6tPEBcb3Zl7TbNTrCsrdIVeJygtm5rXbtlpLmp40/oVPLFfwD4U6RXZZcdYBWwjRascZxWJx5teJiiUufXkCdLnvGGv7LdAiZ+QMIDmrjG7oyhdXSKsdTAVlbLQ71s4ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVu0VMi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVu0VMi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B0CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791408633;
	bh=whRqp+2mvGiDGnfvn5cuj/737TX8hHaN7cRb0KFRe5Q=;
	h=To:Subject:From:Date:From;
	b=MVu0VMi6Ab9hlToJ067HDbw4nLuY4+QQo6Ek9g9tSQ8BRgyUvH2IRiZHlgJufQscK
	 izCvrTx4rnt5Rmh6TerJbl3jVrdhVdpQyVzU7sfD79/z67u7Bhas4VtHbvvnJpFW6H
	 C0hQKjCkWzZDKQ928FcJvtISWTkw5O9nCmFMGp8H+Ud5GtvxprdHhwHAGM8sMi26Iw
	 kteFR7CFRFxErrU5uJti/ZlIiPFunMR3r1kgdJIMML+TQnTOTacyyRBhA93fIgZn8e
	 wcflzzOIf1NQNAHwZ1VBV7JR4/pyLvcSQ6krPcYiToXcTsvGmjcTIZqvxPaHztXSSU
	 T1tg5DS8u/o0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E52CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140863368.29925.92949621356581018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e4b63408d5e939c2bdc55c7c97670826b0ba04411dfd8ceb5fd9f73f84a390
Date: Wed, 07 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791408633
