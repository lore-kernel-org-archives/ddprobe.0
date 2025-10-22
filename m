Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7B8283CB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761125394; cv=none; b=l6lHD4hubV+/vs6ySI3YC1YCfO0bwasdjeUwB90cdnA44BKDxmS2NFhk2xWEkc/h/YCx/3gX9iOH629GId6jJH8NX8GeJwnfKObmxHNRA9h/Id3UsFXLjNAgnQO6RIq4n7zEplL+U4eaRaU67iV/t+8BcJEPEnCPSjh4DEAUg9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761125394; c=relaxed/simple;
	bh=z+7JXVdN50OEbgCackpYf6yIpkVDy6epz1G8kncXmPo=;
	h=To:Subject:From:Message-Id:Date; b=trJBXPr6YQLc+t9H7w+0JT+7hRS63O5m+w/DQCQxoRHZ1bXjjFSJubj0Kd43NJoLcATIHkVIopQN7Wluo6Hy/Kewkt8lmaw4qUKOAs4UdT7bbbOIrMkSkVFiKXhd1IA4hMD+9OK0G7Wxt4CWdB58hjKTYgo205503SlAILyMW8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCANMQki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCANMQki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E542C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761125393;
	bh=z+7JXVdN50OEbgCackpYf6yIpkVDy6epz1G8kncXmPo=;
	h=To:Subject:From:Date:From;
	b=uCANMQkip3bnS8CvyUWivkC7k2Fncwh6PxcZZViqm0FTRFhTSrJr1raIqU0D2Y3zN
	 MA2sTuxYOnS5MRqWgHEUV0TSZWQSftiw6f2+ESduEmlu76WPA7fg2AkFG8No07e6jt
	 725ATzYvusAJWPLMEoXXVRLbcnVYLURIQUoPhnAjq7ygyE1oP9Yg6dLgGoPne9lrXd
	 zwZCfIbedP+xxEMCCunNasKfPuhwVEghQ79oBXGtOHyPN2+c/gB0vyeGE6RhNOSSqK
	 PbUuzIWNX712aGuuUmMPgqqxODH3iJx1PM3BekKTcz8fqCllBw7iUavGjgJWAewCui
	 uvRADqXdneYEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F210CCD195
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112539357.29143.2018873601327540496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ccb5a8159cc4df6461151166c40bf6acf11d9797acc83310a3550a0fc711016
Date: Wed, 22 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761125393
