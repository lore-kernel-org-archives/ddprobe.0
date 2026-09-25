Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5160F33C1B4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790310634; cv=none; b=Kf4cBY7wxtAARR0zsNX1z9QRUg9LdewbLxB6HMoguNhMu94/Qa7WgKc1oQ00RvLMdfLz94S5onNu8DH66NOeWYg+gQ4dvG69WezpV9t0d16LPmm+Vqou73JAaG0mWId0+b4qDywjA7QQwtu+J/a2t+s9SnZ1XlKBCs5QfRao/vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790310634; c=relaxed/simple;
	bh=Xj6gNtXdfQUb5oHCqsZrwq5qHPPtVwwao0d+FBkHU3U=;
	h=To:Subject:From:Message-Id:Date; b=Rvu2nuw7pW9Eti9IAAmXX0eirtB6QI9hHyJoLeShwtnPF1qeKrnIbYqh8McosCFye6L27N7k4I3LmuUg+NxrSKEehOxwwub54rMNQCK3zt9H9YhNdL9iJgYucjt3uMWDxCiXd0YUPsgjV1rltRNd33y2LXydiHywskyS+5W58No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Csm7PvHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Csm7PvHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FAAC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790310633;
	bh=Xj6gNtXdfQUb5oHCqsZrwq5qHPPtVwwao0d+FBkHU3U=;
	h=To:Subject:From:Date:From;
	b=Csm7PvHqVKYFyfpl/ejYTnvxKnF+w3tZV082XR27aPWKeBgIgdjHkqM9/3Vv40f14
	 1EN0O0wqU4vfjWVvT0w9naoREySYWfDHxiB2eQRK5S/b8yElEceCGwE5PBWvccIhVg
	 DT/Z1C2/IvbTnHROahNU3cJiS3nTkL5u8SNcZwzCDAC6xX+0KKQJkIHtx/dIE8J+vB
	 ToqCXZi+r6iXnWpl4xnyBLmk/87I4nzRXgFbcLN/sB7BxSgeNeYloCDP/uj8hNGTEk
	 c+UKVFFwGCr+x2O1aJP3ZD7N6DK+pCYR9uFs2Md543lSzqZ3jn1x8rnT82pGOa+/c3
	 2ns2dKgkHIFvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF021C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031063370.14931.9383176335932421745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7687af3f5a088f7f96d97c1935659a285feaa41e0742a4b2e2492dc3dfbd3019
Date: Fri, 25 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790310633
