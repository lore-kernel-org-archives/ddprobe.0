Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3149550097D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768158234; cv=none; b=XdNzD0Sf7sRz7rY6HGql41AbP3bq4o5ADqjdPbYAPRkQbePGothnGvAbAYO14TVQL2HSF7edxfR/Jl+MEU/lQz3i3otJgH23pspUqLcduMEAKgyEj1kBadPiDdhYSZzmjMwNU3ZITDHzzU+Henrg9GWK2eaunevCP3Wg39MFw5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768158234; c=relaxed/simple;
	bh=rii5Qvh4oV5DleRtrOHROZ3ZKVWqYf0N0PNRxHGLPso=;
	h=To:Subject:From:Message-Id:Date; b=ta9yUT/4L6Tg1ZmXWEUtDCwlJUnSnN6phe+0Fw2Q+u6Gyyc+td/UAoFvMa96YrtGkwBtrhibMY0dYdmG30qQNp2dN8Yv/WJCsT/7MoYWJWLJ6OqQg9YFgHobXTR6aBTFrMdXVbjPBMj2sA53MvCGlm4Y9VA9op0Q42MG2vWLnuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l51sdyt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l51sdyt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4D6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768158233;
	bh=rii5Qvh4oV5DleRtrOHROZ3ZKVWqYf0N0PNRxHGLPso=;
	h=To:Subject:From:Date:From;
	b=l51sdyt+02+st19WYpYmjXKKjUCexn0vJC5a3F32peTwP72FVt/qBKzt8ft0nW+de
	 hsP6rNlzkHWZor41v3Eqx3O29uCPQNKylTMSahXV7vaTyJCBU307snz7iIGgG7UFKA
	 A2Nog+scdVPH8qQkg/8xnaWR9amLTYa7VH1ZpZ8Eg3Vn9f7p4KwDnyyk37n89iX5GG
	 pfdRTQPDTR1GV6GicccNS9P5qoWAHa23+xJc340QpGc1Wwh7SF7aL4HfkMJxOctCFj
	 U9OixMYq7zuqwQLrJW7kv9C+osk5M3xyR8iZYKO+dYUq4ngB8dzTFMIJJhpnY+hZvm
	 fotlp1cmveT6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A62D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815823358.2663.17998967224735038826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3809f77b8f743e74cb7338dbe8b55c2d46291f7e4af4c0017e02f7f0064ffd28
Date: Sun, 11 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768158233
