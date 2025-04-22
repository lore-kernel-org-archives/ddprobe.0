Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4780214BFA2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745327996; cv=none; b=BBZrgqw9GCot656bDWxATgovazhCUoeztAZzKlBD9+WstM6lLxf2sdWU6GO8iaRGVdn5qZUityqPAnJTPGqYjQHhNNyc3jECxmXISX47+630mhtrjN9aBiGrNzkyL6KM9gWHfDDhjGvBvgPDKyKeGNM9vfaxyy/Fs5b48BBcd+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745327996; c=relaxed/simple;
	bh=Kd05NUXzIlx8FZz9feX9p/VlafdC1LHaP0ZWFPkT8Zs=;
	h=To:Subject:From:Message-Id:Date; b=XAz2H7aXOtF8y0zSZrUNkS9atw61J8LculPi+LmgTxSQJQ3G+IjbfXbYBlrQXaYWXOSolRzvSBAP4oj5tK71uWsHhg9NQQnURhz1YnbvZ4nuRpKsEFUqahTPx3U9yUJwghuIIWoB31dEiHZRm4t03NiXYhnr1F6eCwZ5vKgL5KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnV0zqgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnV0zqgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B067FC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745327993;
	bh=Kd05NUXzIlx8FZz9feX9p/VlafdC1LHaP0ZWFPkT8Zs=;
	h=To:Subject:From:Date:From;
	b=DnV0zqgQwKs5npV4YBdVEy2RRR1zb1n/klAvj9KZ0T61GgersWo9VkZrLmtYDpttR
	 COzlQGlVkSEyZrsDZwIzqCIm790ZWX2OX+L9TFDVnMmIMSOSR8yLakQ9paOAiKA/HC
	 SFtMieHawz26Z+novOobnjoqFZc+YNPUd61JSgEa+i7SbZ1kHEwqa4GSYR9VoRFqSw
	 /qmUOwaON0bkq/QDZ3KLvpHbhQrrNpdPv6Xc6w9QsF1n4DcbeduAxgkY1PVVwyU1fB
	 xlTaX6KvQupBW7WqgjT0lWegSiIhniYdHpaBu4LcbCoTmNaBQ+Xe++pz2EoYd6yD+m
	 aU9np/ljAsplw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0E9C369D3
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532799362.9373.105089984823372188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384d12e024fa5f314bb1b5d1175b0718ea40ac7606647686156f46ca4d5065e0
Date: Tue, 22 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745327993
