Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274F7220F2D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769819034; cv=none; b=i/0G+mA9b9+IQldZzehduRgB7tnKOGP6KAe5n5MaRxjDZRJC1UQu4I3InKdpk5hoV2gClHr3RfvOUlJbJeDz+UF2hUGwfgDcNHjKppHOB+LUtc5qVzTtJa6NeyiflH7C8goBNtalI8w9m5mrlyzziPLBgEv4eCcjKQbY8eT/iZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769819034; c=relaxed/simple;
	bh=USifBbs3HwoEiggOFWO2eQS0O8ZrOP8bnpnkHQsXpBo=;
	h=To:Subject:From:Message-Id:Date; b=EuF8FeEYDuPqpo6Fd0bXa8v9HxJuxFI++ltBQHubbOp8Ju2yjkQWRL2XHgeZ5lnqYWKB7eYvQK3pR069d0PBdBi9PDJWBFLqjb3HZalhgXa7soHN7SDSjJnWmRkysoYhHLz4tqkFXhKu6gUnXt/qHeyP0wFJh/5g1FTuv9MR6q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilXUdIMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilXUdIMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE05EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769819033;
	bh=USifBbs3HwoEiggOFWO2eQS0O8ZrOP8bnpnkHQsXpBo=;
	h=To:Subject:From:Date:From;
	b=ilXUdIMo/S4OD6KX4YyPYp1Nvl7M5z3f45tyQsLzWuBkfPO5AmJHTezQroZPPzQCC
	 ks0XllgW8HczDmLKbuXokGraiWYsDcJjKzXpoIG30yBTKTrp1eFr5X8DNmU1jG5l85
	 WJihPGaqsoeUnsnyW0zbUVASsQtYAWq92jTKAwbxXLGg0V67ePamWltTQzdrQTu7Jk
	 ltKObV/OGm2z132gMzWcs8N6RvHO5/CkN/CjR8CXQOJ8pxkcdtmaFidtwftMrPm3Jc
	 xFuvqKHaP2DVwEgwlPN92ehSOvTHVczwsyisKSPUDlCEuRyTcpztRk/l+r8taUR0v5
	 Ekrr06ZMh0Cew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9C9E6BF3C
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981903357.5333.16106917113087601182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2e61c6fafcb464d983a8e70c73a3029cea80fc9ea318c28dd2fb9e4d9e9023
Date: Sat, 31 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769819033
