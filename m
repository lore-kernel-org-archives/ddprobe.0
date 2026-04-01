Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DF22135AD
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775043934; cv=none; b=u29OQ0Yhewd9MOfM4Ppejp0GxXXxsdenXR1a7T3SRIG4n7Xf2dB/gPKYuXTS+LevKWiAWEvKvjetzTU+t1s23vpljJdit544nvBKPNZSSwyRNCeZ1V9TIAtSnBSWeKbZfa2WwjIossnHGD6MfM8DfLSIM2LiZpn0yY69UoBr5vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775043934; c=relaxed/simple;
	bh=v8WzyrTwszB4CMPd9ch9KHz8yrajNCBe7ThmrvZv7lQ=;
	h=To:Subject:From:Message-Id:Date; b=WN89eTWyVXaqwKIsby9i95hcmyH1xlYuaDt4XNvyLsWgMiF6OzJo7SBw2z+0kdmt6JVYypa6Wg7URImtZqBr/NyAezVWd049Mw9gDW95FmXZcz656nC1oZCJBGcZdL21/abYPEQ1TPt3fJA4UrpOZdT2M3S44rU4D/uVyRhwock=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYecGF9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYecGF9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13F1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775043933;
	bh=v8WzyrTwszB4CMPd9ch9KHz8yrajNCBe7ThmrvZv7lQ=;
	h=To:Subject:From:Date:From;
	b=rYecGF9gF3v6ky8ayAmu0oLgYWy0o9VeSKKRMEmMqsR99amSw6trU0IwxDKLZG3Ob
	 cCvHT3JUw5J1MuFHSHIz21b5gvHI5GwbikNb52vFgRci6i4Bv6/kwl2bNKmYTt8WaN
	 Ik/wLn8TZQqsznDz2Ms9AokNxCjMjs4ouf0zq4niwY03OlT+FZlU+0e4rbaO+U+4a6
	 vUuP4bJ6ZUyjgR49r0jlhQHVfKgPfdXGbzaJRdoizKIF/vKzPlaChb456jHz0+pX6Y
	 OVly5fPwnp+jPVtQ/6SlzPC7EgQQPVYnQQdlL1Fc8m+b8qcgfaF+D9HLtL5uUtOv4s
	 qAZ8LPiEnNKVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1094D35162
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504393371.14928.8424462922207870246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b492aa77a82feb7948dde8338e99c8456bcc998477587466589669c9533df90
Date: Wed, 01 Apr 2026 11:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775043933
