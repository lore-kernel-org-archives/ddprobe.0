Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DE23074AC
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760416794; cv=none; b=phJVACaYL0v0Qjmf1k6dwp0IVHm/fJEmsULTUve9xi9X32eKEwyCAdlQzzx5puTkypH3jkNVn4Lks9mbb/gDYxKjRpt0Ar+KSDTeDX0UMF0I9uVhaeB3KkNJozH0P0bO7ksuJ2ZmjJXEPy8MxPJjQ36lK0HPqNFi17QAm3JHw90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760416794; c=relaxed/simple;
	bh=/R8D7Io1Tx39J0OhQ2dsMGQ7GcvbCOh6jE2woa7qDW4=;
	h=To:Subject:From:Message-Id:Date; b=piKdJ7VFDwUYZ6duGJRlozXMDqCpJ8Rt/t/1gnSh69jVh05nA2O11VZUIjxUBLtQ+2c4Qk+t9kLWTy3Bx4Mr7XSMlZKvnmJc5LI27gC8Xgk1QZmrKj/KtnR4NJ4DxAZuSORo1HsiWN2Wf2PzLltCX6ew1nBMFKX408BmiQfmEzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPbd3ruw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPbd3ruw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760416793;
	bh=/R8D7Io1Tx39J0OhQ2dsMGQ7GcvbCOh6jE2woa7qDW4=;
	h=To:Subject:From:Date:From;
	b=jPbd3ruwt+w1BEDxunjUw9gXhdRYwI4fb7r7sdB3x85O0ZRMkWJhKam+73Zkh/OE8
	 z+bvfVbLoKOe9uGc2T1Ph3E3SFeF2HYZMoqQROGPRPypdKdjJIPRroHZCLc6sl4gaz
	 OuE+jnPSTyv+cW1Gd1Wm/Vv47Nrj4vdEKEzywZDZu9o2+OfAXNgPpkYn3st3WiPczr
	 qsYP2mI1O0lMfqYt+nmjikmVGss7Ml1ZBDHb84kvhnFl9kkxAZpe+Bpjy0tRCarxXX
	 1CM+ctt3nvMxKOvFwN9E+Sv18d/hO72tyqcszY3//l6F/hb6DZDaKmBO6vT45/efqN
	 WaajFbKfgDcng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9FACCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041679358.17558.12226222768230343018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8efdf625465d110fed4ced8521b8e9fa11a0dd8c6ddc5299802f76e04f9e5d7e
Date: Tue, 14 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760416793
