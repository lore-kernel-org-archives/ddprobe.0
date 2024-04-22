Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB0F14F9C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 13:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713792623; cv=none; b=If85iEZ+g2g9O8dPwh/vqDDuSmyKghpKoTsgqCohE2TO1rZmwsn5HEpSg95CTGhretP5hwd24VTLrEnciQoDNWBKTRBMJQoFAOoaP5b4Caam5VFldGXn3My1AywNW/JHaHiq41syD5X5reOERbKAqHwSVRxJNaDbENsAHAf0NDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713792623; c=relaxed/simple;
	bh=QWpR3j/Xax91wtGni1GXJQWWlnHnr8OR7nZsZpu3IV0=;
	h=To:Subject:From:Message-Id:Date; b=rbjc0cwvGCWqx1NSiiUBp/U3u9K4nVq03/psN6Gb3FLQVXcUlsXEYceHtdYxquaQFCXpQaMayFZ7R/oZtalTUFkORwOCMJYjR/did1dFphkyUSUf/lXp/W2jyfkofdOyhTnNaSdKtJhsYUqZR0WEbAyT7EP18FDLrbJBut98EDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQXHjctm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQXHjctm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE51C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 13:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713792622;
	bh=QWpR3j/Xax91wtGni1GXJQWWlnHnr8OR7nZsZpu3IV0=;
	h=To:Subject:From:Date:From;
	b=eQXHjctmc2p5snXlY7gU4i4FTiKjssHy9S0OQTteaMjmX4TWzoNTjoqM6diDzMU2C
	 4wfaPLSQQA7RrOIIbYZ6jBsJFQ4ue6BIOqecq86a/mYwUIaXg+EKkqz0VwzMJ+mt+n
	 6iIatUPRsbTW7+1pED79KEPj8/UzgutQF5oUF9IlGIg2ijRMTQNIixNyOcfJ6P6jN3
	 2HQ+whYvtH9jCjrbFK9fteiC6npw48aKTJMMtww5C9kwjvIBDZu7to4VolbPZs93MQ
	 ZzNsuIr2d4hUaftOTEAYSe87uiWKdtTwMpVPOZXIg+Sc1EvpxaedqsjOuOYX9UzQUD
	 KJIx/+omueGRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7ACC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 13:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171379262282.3848.11836797536092025390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6125bad0e8a160ed3fd67fc8750ee98b9ca796de1d380ae666aca7d32874e36
Date: Mon, 22 Apr 2024 13:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713792622
