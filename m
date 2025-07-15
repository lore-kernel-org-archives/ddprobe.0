Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC912CCC5
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752547194; cv=none; b=E07Kf0Z7Jn0u5JIHAXeqWQzrRaLz5GqWx1ml+iYTX/YhWFdfcAhvxBQ7q8uxkevMYbNsrDRKkWgilo6b8UPNzGOy8uXn2Iafgy2CrLBsxWw0scOJAnoR9MuEhXxnoRnvgUCwBeXNEWcvjzWpWKpb/9tqQ4xOoOsAo8GrCpWs5k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752547194; c=relaxed/simple;
	bh=h2KHc2V7iO4ukteMJGujHFs9Opzm3tDh3r5UiYL+dW0=;
	h=To:Subject:From:Message-Id:Date; b=XUWzXL5i9Dv5W6ppoxKkIyhdmGZ7tdHoQotq03CRTmcF2K+6nbboMCUTpYFPP4H8/w4Q7Ce2SBxuukQ8vFRrBFNOWFWDhhjxzVC1jIAicuYkFO9hpBsn38Rq+IofruRt2Rrab2b6TXKp5sbgg9vmZ4DvFF5bMhu4BKieGxKDQbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cotSoYKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cotSoYKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72A5C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752547193;
	bh=h2KHc2V7iO4ukteMJGujHFs9Opzm3tDh3r5UiYL+dW0=;
	h=To:Subject:From:Date:From;
	b=cotSoYKrW9Bb6mBn/VkDojA13ltI1cTrOJCkkDRBRjyrQOE0rjzDMQjWgMOk6N8tA
	 2Bo8EQkJItPGry9V1nF3NycHyNkA1qq8KgAWc6a2PQcTGVk/onETDEnwKgDtxCmVRJ
	 dm+I6jVtFt1p4CuGMQ/nyEfTM3NuuGQTzZsYM9GOY+liMxxfp2B7cyF2I3i3yCD99l
	 Wz+GQctf9pcHX9fAszrfUPAS0a8TiEAyV9B74VXmNxg89LAGdG3rJwRT/5XjDMVRZD
	 gr/uYIppc0RxNPkcAYznObj8OJKlQDNF8EpQdU/JBXt/JUC08DS2zu/IpDX5HuQcTc
	 xgR03oYJjZBkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94516C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254719360.9327.12017578158855113404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa75d8e67bceeb565fbcb4043baa027a7ad10998c0e1f227c394b5cb809c117c
Date: Tue, 15 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752547193
