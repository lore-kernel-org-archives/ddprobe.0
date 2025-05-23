Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A474C2E0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747990794; cv=none; b=MXj7Iijv2ZCVNh+ReUViK5+d4TCZ0HEDEw5G2SBRPP8/P8tya168qFrgbQpewkuYtwud8WQRFb2bEBKua0k2eCULKsQJ3FJtWrny61p62ggUcSqwkArf9dtsw4LnhXMXQcYgWPLIHWaJIFWoCXbI+4uXL9uD7+sBqnnTmhACW+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747990794; c=relaxed/simple;
	bh=6TXw4Y2sG2rdBZBrhkgWzJXBigf0y8tkbHXb4znX9NI=;
	h=To:Subject:From:Message-Id:Date; b=brYKRPX6iMdfLPMXmMJC6fE0DLP3gbZfXWKwbf0m+HQfDw+xWPhCtv/nKVSMqEsGGPiRhi33nv4aumpU57PC/skiagEk9ERxbvQE8yq4lFrrkchuxYkWlA+DshZt9To1luz3pY21tZb7hTgqWMck0hK6Mo/0MbrQgmwCJ9cYCP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AViSKgRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AViSKgRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B85C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747990793;
	bh=6TXw4Y2sG2rdBZBrhkgWzJXBigf0y8tkbHXb4znX9NI=;
	h=To:Subject:From:Date:From;
	b=AViSKgRJKngRGc+25B+lejT6GfK3wgb5VA8KgQ4XlfwImhdTrGxeGm9g9vnrmROUM
	 oJHB8f1VO1jRydaft3LtBbQ82NgkoCatqSPkTsPC4fexcHpyGdUc/OwPdclUDqLeEb
	 P8dPdzS8q6quq5KIgP3pbvlc9AaBMm/3+IXEt+1NQDqAwCiwQE+F+mrEtqugHfKF9w
	 B7RcIShA7gDsw3x9lgN81cHTRQG8NiEEr/4cz9Tt0pB9EemLRPOs4iqWFRs6KYBOhE
	 XKSKREhKIXV9Fu7RAK9QceBZU3aZgutYLUPPdNIZwsCqX240VGNSNHKzQGcoN7wXWf
	 9Ia807wivsNew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F641C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799079357.5620.3971938692917774018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95fed10d7998c5b48844dc5144cc6aa7b0075668dd54eb9ba88a74db593f8c84
Date: Fri, 23 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747990793
