Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02ED617B418
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754258994; cv=none; b=jbksDwuD24pHJvZyPyFbdEQNssZPAajjerHdM+9TzN7Eg/kSOp82RGd/1HMbVWDEwItIWIErlGmIQbx2qiEJBhAVd91iXpg9oR+yVmU5y6S3hwZ/i5cEYlILV7A/ZsyvD7jVMp/oULzcwnTd95J4P6cq9DqK9igp1aief83kNAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754258994; c=relaxed/simple;
	bh=ZYDD+NHRJeHpnX4d+ObG9blelENaYbAydcaBGtDC5gg=;
	h=To:Subject:From:Message-Id:Date; b=RiKnAWwQ3eUSv2adt4KN2P7M31Im5/bvnbzZkb/ggxhNfkpVe1iHBGqofmpHjRQrPfxc4hSJpige2VuDw0P/x1ZI2Xa53QId6proz86KtRp+/jnhXoeLesyWO6hDrII7OI4raHxNzsjwHm1vQidJ8K0sOT53M/tSXkUAylr5xqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mb4B6iZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mb4B6iZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC320C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754258993;
	bh=ZYDD+NHRJeHpnX4d+ObG9blelENaYbAydcaBGtDC5gg=;
	h=To:Subject:From:Date:From;
	b=mb4B6iZ2yJxE4KBRQK1gGyIQI/cVVB3oWh/gjigxCIwvpP0M8vOmSTOOh1XiLfzdD
	 uLBl/9pju14vN5R0WzkE7KWBZgxdZBrsJARJrK8YTgD2Y2n21HjPxe2P0W6f34wCaq
	 kCBTB3ojr7UbvNPRbPmVfJzkA5rMlSldu7p8fEKvlZ+4qW8xxFMqNUv45rEIRSBRYa
	 9MGWq3ek50I+Bel3HFmh2CIxkiMFM56kZaVegdOEIvz3mENaD8pC/VymNKCg0IV/Va
	 8VAIQ6gwe8llSLubpouMcr3Hc7XlkPtXWfFrabS8vqZUkORe+OFho+7FDlOl566a7t
	 bAxZtEas7Y22g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95870C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175425899359.11376.2750692036914862581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63899bc94c16e596d3df96a139e0454ebf8dda91dbe25a57dc2da24900d8a4e3
Date: Sun, 03 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754258993
