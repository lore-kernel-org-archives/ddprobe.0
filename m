Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA9C3093B5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766035434; cv=none; b=eSuZRZCpOASpc0nv76DVbrEdcbvd6elgT4bJOkkAHK9rsQdgd0stmhoeIef1FTSgW77+gr/ReNJZ9ZyoHQAxq/zyPN9mSaUKY0tNx7Hl4S9onem857Y+80o6vuWykiZK6ueqkfeaPoEwVY1FpFG4bCHDdJzhUeeGkrws+6ZEGro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766035434; c=relaxed/simple;
	bh=IG1uc+tOdAYpFU7ToLxuzmDFVQxEhNO52d4ipICTbSQ=;
	h=To:Subject:From:Message-Id:Date; b=JwCcFIFBZFCacz0DNPEUQv4EKz2mptKAaxJIIbYsKCVxgvVlsnF0LzfFNJv4PK/BHLbJKE5aUukiWoKvWJQtsr1bozdOhj0jESjgbHFIIZwqhtccxgfPltdAxAxQDzm0lsAZSHAnACjjqPVuNJArpBFKC24ULWRhY/hlQCzfNdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3VFpL1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3VFpL1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9901C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766035433;
	bh=IG1uc+tOdAYpFU7ToLxuzmDFVQxEhNO52d4ipICTbSQ=;
	h=To:Subject:From:Date:From;
	b=S3VFpL1tWo114vqcYXcEfvY9cY0w1FA4PrV58DVHSTHfhMnUbvfy3iH7zSi3C9+59
	 do6XnVa1Hy33ayNWNTOuaJgs2dVCc9VJ+G8JNKjqW9Tx0K1pCohOstbh+e1CKbGMTf
	 ppXgXN52kS9Pi02qizxPyEilTUBeFihGGmXNzqijxqMHzwrTFX0XE82jT2Q9Kfvdn0
	 hfReGmv+/FhmRK2OD/cxjNMzhg0lziBYGyId7Nvntvjma9K5s4OQncGjcvo3/p+zXl
	 gBzfyoFGX9QVehwD1ONXRRwJykRG30MmDQs09pkL7ssfsblzZanZc3dgbc/2nFPtUS
	 HNwa2y8FIEVSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933AFD68BDD
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603543358.2783.12614157263804820513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83157d9413a82c4619eea725562d301b53f22a06551935bb90ff5d8cf448f5a
Date: Thu, 18 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766035433
