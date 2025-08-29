Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E97147F4A
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756462794; cv=none; b=CU9xLdoV4SS7yaHEAdJ/Gc50GZwQaEoTN3KB2iCQLQKaBImI4BbaYHTga7DYH1CVUgWM/7eC863NgKy9yDUQgL2sxnPI5mteNKw2ujmoQ6K+qK5Z9TNh86webwamFfJsCsalJOoGVQFI0Cs/yBvzUn3y+EMNX6moLgeXWIMizr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756462794; c=relaxed/simple;
	bh=T9kCKAPZCTF4MUCPh4ApqsrelKwj4zKAP0TxXO3TIUM=;
	h=To:Subject:From:Message-Id:Date; b=Vb4OQmPI0cX4fu1lSXDgha4pVvzbLwtEKPiMKVvZ3+ObTfUMcc4BydQKRtJGvqFsvqm2AC5aZyYN/SqCSTAKKumSr9aNWo2/8xo76dgqimrpZZ/STknvrBBcSPTzbw8SMZDRf1jC8RXizPCZL5SY8lBrIzidvZ/P2brFjGM/kTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6onIo0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6onIo0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F64AC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756462793;
	bh=T9kCKAPZCTF4MUCPh4ApqsrelKwj4zKAP0TxXO3TIUM=;
	h=To:Subject:From:Date:From;
	b=t6onIo0GV1pdunq2eWg0ZKE0AXCX84qynk4t07H7MouVuPGV3Jd6jK/RdUsihnToZ
	 zFRvbY/yJ0bgFQmKceogNPb89de4+yd/jFRbjjrOVMQSTvIfXXwhcc4FEOKh+FVYk3
	 XrZ+S7aF4/GMpw+dYwS16wMHXKowGcSYobgt/L9+MlUG4OMZOZrCN7nZyhNbyB+OJR
	 fQagtk0vpjqyUh500YE0ZnhQ2sgzGsbSKUhoB22cwZFmUKRV1Q35n3BVPAz9cua0jx
	 IkOJlzsmTPw6hr0bR6ocC/Q36gimz1BpaP10rX3VszFuhQ1o4z17uXQ8hw2x6SXwJp
	 yoh4nLZUC3D9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E354CA0FF7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646279357.10170.4716164230246252046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645d4c360be39558bf826f506021374eb8f98b4b012d8834689b46607f0ace57
Date: Fri, 29 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756462793
