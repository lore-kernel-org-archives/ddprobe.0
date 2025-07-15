Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEBB80B
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752549594; cv=none; b=OxCqjyymDz8YNUb/jF1YEuMO1edk+dBMa4gTfMxyZC63yFTAuImZ2pmWnmYDejId3zmTcQqitYIOfyQgzUyukbuFIxDWsNrJoB1ws3LIxk3Jis3ut4d2+3jXcq18hMf/vKJ1VRC+588yTYSAOKaqzKjxqFMo8RYw5NTv7SkDUcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752549594; c=relaxed/simple;
	bh=A9kM7EsBJJzTXJvzPORvmUBgret9/bJXjCWvoSqnRlk=;
	h=To:Subject:From:Message-Id:Date; b=rKPrAiOWP/pJ7YlqVvqj+g9uDvKnyceLddVNHPKqI2NoZPvPlb4D0kwghvS+jg5VJJlCJXx+cDVuddKdqu4M3T8ZkpLTQw28LPLzIg9yTN/us24RH4s9+7oq6CDr2NM8X9kyvlzJsgNMh8CSJrI+kVAQZrbaBWypml1mkDVyYvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2kINvzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2kINvzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4803C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752549593;
	bh=A9kM7EsBJJzTXJvzPORvmUBgret9/bJXjCWvoSqnRlk=;
	h=To:Subject:From:Date:From;
	b=F2kINvzlR+Q/CyzPK7Oj9ROtd15eXLa7ObHwYvJarX21nlh9/eevkavfE1omTb2fK
	 mMI5qH9r5dsyo0iRBD5KhtRIKf0K3OGgBobzzE3Q2y5XpyB2QZfCJ2KM9rTeC6R4GJ
	 44fi4Eq80JCSH73vqAOthcTza27/W/Z7wZdh5l2scvQV1RIHObV4RHW+21J2YqDhFF
	 PYkbDzUwpXpTjTcaFcOtyuZBOtecizSxsh6+nq89kui4osm8tHwKHkwo9mhXQjLxRe
	 p+8bnMv+qpc3NDUrd1N4ZriD8HK0vBT2TkvqBvZdwW1jTw/AktrdJSuaelYJ5Fbxac
	 gI1lyYoBKbg1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F0C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254959357.4673.5842743344500443918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ee392a5033cb622e1da111f8c90549ea602745491d9e7dcda9ec2c8b32edf1
Date: Tue, 15 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752549593
