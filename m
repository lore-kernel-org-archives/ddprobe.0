Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572A0610D
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720846163; cv=none; b=p5olJFiCqK6HtBH2Hu58rn9IzIrp420hiHxSyd7QqEuYEzlBbqr9CP+wzVe3JAqQ9eGFuWwF/5zhG+AmeGzInScf/BY7BZ+L6OVRM6PxLSrX1XB6pwtnoK9Pav8ejVd8/GxeYvohtqKRmy21jb6XTWv6wiRiCujO/WWsM+svyL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720846163; c=relaxed/simple;
	bh=LYy6GqAUhOyDSnmDse69/wQLhjWvyuqhSBXgEZ3shIA=;
	h=To:Subject:From:Message-Id:Date; b=gpJ9SqN6zSyihZXg7/M30uQ8830T73oSCLtfebCe6RZzxJ5VVv5ObVMgV+2IPEuCLmWDHFIsDrsTss3rof6n0OXDHrKTgbS9y7NMkUEUh2YW9aq0QybibX1KK1rf0G3ScZIpt1MQecvgmUIbzrYsqHx4hrVhCDRqAxPjPi2iDMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7erulAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7erulAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96A8C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720846162;
	bh=LYy6GqAUhOyDSnmDse69/wQLhjWvyuqhSBXgEZ3shIA=;
	h=To:Subject:From:Date:From;
	b=A7erulAkwkKrq1s9kjxn8MUcY5N1/QjoJIwHhHypdHzbKuzXddly8j+hgmAfWf82r
	 Q4XwaYNsKdjGgQSsGSwHiMyMCnVkVHxueLQEW9zs57VD7RkB/7nmNzSgFwuvR43tz5
	 TB47soUEeThJpxyPxAMbYtcjfXUwbfnqqljFv1O38KKdEtD+iecMsOeoHLcEqtbEFM
	 3bGF3b41aAdiW/I6Ux4cE32OaDy6WLshCkI73UDg590EbpWY8cukdV07UCcnn6DfzN
	 6p2/CsECvbyKGIK+qcHUYw1VlWhnkyWnPjIlXlFlMSSMOsgXnOVep4pkBaVCB+HbCT
	 mIapfik6IS7Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA1EC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172084616276.28746.2860190442695837923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef001afb2dff20d2b8f345dc7c2918e9e9c5307e4de67cc36272cfe4cf2c891
Date: Sat, 13 Jul 2024 04:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720846162
