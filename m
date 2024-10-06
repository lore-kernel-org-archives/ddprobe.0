Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF982572
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728200154; cv=none; b=NoiQjr7Bl8HYCfWyrEIOcb+IRTT37C01RsWgHv0qwQJ1o4YPvU+FUY+4qUCQmDSmoLRz01cuYpDfqWXJtyds/dB1S2Dw/gM7gE75fL16d62ko9xwp2ny8pArI2G+c22CKjMP3xHtG18L0va+QiWwReRFo8AU5OkhlAw33D1YT64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728200154; c=relaxed/simple;
	bh=V9NUP5xVZNVrP6QYkg86Q8xpAOPR/DqW5J6LupxVxYo=;
	h=To:Subject:From:Message-Id:Date; b=CTW7VWUTPX4R4NWIngPz8ku5eCEJ7Cx1wCGi1jX7KfWAa8de0A9C5DgbUJYqLT1H9EEmwzGtfwwt9E1m6OQdfhlu03XD8urzELKcz308EIbgovBPPRS2R2FmJSXCkuTF3B9mBKN4aDR5SamjJHQ4feZnkJEPoNIBDnUBteI+8Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBCrnY6H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBCrnY6H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5928C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728200153;
	bh=V9NUP5xVZNVrP6QYkg86Q8xpAOPR/DqW5J6LupxVxYo=;
	h=To:Subject:From:Date:From;
	b=kBCrnY6Hp1cjtildLznOgqHOk/trobI1IQIaE7eY5hLMt4tqKKTPIeixZLQ4aM1s2
	 YNDW8UCKniQACPJxt9lFR2R2XNo8wwviu76uGGT/Z8qbvjMWMsct8aAdpPvX6KZOxW
	 gmRqyoyjTe9ShbtLk/Uxu5zRl090b5UDu6u3Cft+LbnqeOaHEIQAuHEFUVB5pghAeO
	 TstOzUgCI387tbYalxlvEdwsUC9Nh8aWCLGMe31PN4vWVKYRzc29oEnf38kJsC6FGL
	 49i8T2g98GqP6YUKRyNN8Vwst4DRCL230S4lHxbxnhXqoWSyF5geKC+0V8/RH3Gk+k
	 cxwR63PjtnArA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB18CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820015361.22960.15922812180086314254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68bbd7c0a32accac1036ffd9bc1d13134a0a6d347b853abc21103d56810631a
Date: Sun, 06 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728200153
