Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2719615749A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724876754; cv=none; b=qbBKtbu+mevQvHuOy4n0K1oCXnV+i7Ukt6UAhoobkKYRHn0cCqDK/tlY/nFzERxX9LjtEomJ+p3zfGx6Ni6qd8d0UuWdAo0BlG+k7U05sG2pWB4/QTbYC46sF5FaMcYIARNqdQpfhmI31AOfHVkyv52pKEdF7G60uQ8FAm5o+Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724876754; c=relaxed/simple;
	bh=lHmtSU1/QwFXWetbOG799UyqNUIJNnkCn+OFctIThTk=;
	h=To:Subject:From:Message-Id:Date; b=HtQLTUEYTGgXdLxoJ3EcbhAO7PhJflLVdwKnG4e8FckC+Q1PvlJjzhvihNqjq6WOopre2kTboiAfqkfg0x4HJ+V6qo26udrQz8O7Iu+Qo2UndLs8ykV8DYfUdJEUUfJmnSKTEw6Um/xd/++9gTKkHHhT/imhiBnUSKFPR9kCE+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiE5L0K2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiE5L0K2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF742C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724876753;
	bh=lHmtSU1/QwFXWetbOG799UyqNUIJNnkCn+OFctIThTk=;
	h=To:Subject:From:Date:From;
	b=RiE5L0K2/PhhNnAWu9Ij81aZgUpFuZS8294MNVejKRYcotgB+VCeROEs77mbYD86p
	 w4g6/Ek4lvudUBf2bllGacA/qD4RGS8vO2h7s3tXaqZUruyRu05Dup/Y6ELESt7D9K
	 uGYbu4WSAozdkSRBujv3or1fPSjeSvlh/CDv6uoY3zUdSKrVYv+vVQQqEegohA2kiu
	 9zEnMb8anWpBZMLoq/Bo/LSqexkVvPLZf1Ty5T4MfUoYPZDacMvgvBKAIoFw4pP1ei
	 EWiXqlRdD+kDXWYrHazQd69JzwnyUMucEZdapYKVHOtIlmWGjRouKMTxkqjm8Ke2PB
	 ZKcogd2VhPkeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C335C71121
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172487675362.21946.3226576468931280166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39c0475f51b60588bef82703141a47a1bd2702eda5596e512e5ac4a09fd11c9
Date: Wed, 28 Aug 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724876753
