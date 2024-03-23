Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080A47F
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711153097; cv=none; b=XF2aUsUUtlwM2TZyZ0Re5cRYaW795hzo0ROqUeqFYRiAXjy7xwkfGtC0gKiIpTwuqC0ngj3Rld0ixMjeUA23hB88vkclfTnx2lHWsATHJoL7kog4vRJzqy+SKki/XbdCEQN33bb7quERNYOQgEXvDk6zctcgTXo6mFY/nW7cRHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711153097; c=relaxed/simple;
	bh=gJCULy+E5qylhzQuzih4DOEwMsmg4DuYFwQHF/Fbjz4=;
	h=To:Subject:From:Message-Id:Date; b=ttxVxZmhE8CvT7C+vLNNl3qmDtcPm6+ZtqFeuN8vMlB0xRL6g0Pp01JnPYLl7MjvYfFdDgQ1Nqf34FZ8dXO5+k+yYv5YXi2bs89oKGrC5p8tmdqPRWKzdxQUKLK3Pp8tHq/W087QBtX8mcP+nG5pjEFASqsjqT6nPlw8lEhDRlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOiE4/A7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOiE4/A7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 824CFC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711153096;
	bh=gJCULy+E5qylhzQuzih4DOEwMsmg4DuYFwQHF/Fbjz4=;
	h=To:Subject:From:Date:From;
	b=GOiE4/A7C+OKu922ZZzTVn6hy2DHxE2iXtKR087+lLcd0sy2l6RGoOYIIDagS6Abo
	 a/qYe93xQ6zA6XwlQXf/FRVTlXPh7Alt52NcfjScqrgkk6h0FeSJynEpxSIE/YMW8E
	 wTlKuBRaRMjriDgwWGCXC/qBp0oBYL5yZ4Bfn00BdDlbyeSV9vxtDanzHNvp+tsAWR
	 S+8zyjU83b6PsdxVtaQ2zTvreVbvwJhPfN7FrMF2NT0q2n2qrWWvr0fkfRxSZsprYy
	 o1AkOKW5qR2/UOYf/15C50B/zXYqCc/nNm7X4aWnhPPBB5jhgSdXqBWLVyqbEKYdoK
	 +CbSpye7uMTOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DDA8C54E64
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171115309639.30424.11313985082790792630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef51c2777292a73a38f87a6293e84d41d8cc6e23e5b42193a00dcbe702cc1bd
Date: Sat, 23 Mar 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711153096
