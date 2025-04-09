Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4719D19ADA4
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744241994; cv=none; b=NWWKBZ6a7jiZajSuMfa9uXelQJsdHI+UIO84E0ih0FYfRdb+DiWm5SvJj39764ffJT8Ur4l0hHA38We82k3f1khNAmqPsg6bq8d0aCZkuee7ePaeHebnKmsEk9/mqxpF5ccNwe+qRT1gAr3QR1+SrYi9cmiBRED1Zk2CtLh11W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744241994; c=relaxed/simple;
	bh=naMyNeJeuuCV4vZucXjOYvUavHEMvoy3aVwvEV6BMcM=;
	h=To:Subject:From:Message-Id:Date; b=RCjhRYs7n3zqcn5dBlaqjNzpHfe5EpmE53hVy0OkkW6oi58ABb9xrJOF4/sngeK5tLWYsLvCPlv/B5NaCoWR+d90qa1FxugfVILVJagbaKxH8OGBd9RIMeGVsgsM0cmT8tLiEOWHa/StcCjWtmARAYiTtx8RuP5OYpdGU42n30U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XheFUNFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XheFUNFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B7BC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744241993;
	bh=naMyNeJeuuCV4vZucXjOYvUavHEMvoy3aVwvEV6BMcM=;
	h=To:Subject:From:Date:From;
	b=XheFUNFhvcEnQ9zlBtKRqegEwd2jCXuqefb0qyAlqMBVkbvUPT32QLQ16O1jl/DC2
	 YqxPLEGqP00sBy1l1KF+8ILNGBTrI0h7E5y02iSbrZbfF6X1JgoA9bj3rLKUiNF4SS
	 TxrZ7g9Cda2xy0KojklpNdABx450VJ3NECSVVWcJ3WNtX4sVfNmx39RLLxMDTcz7eX
	 rsRW+j2acVDx0OyJpyrLFqkj8+ZViu+eeU+S0KsAKqNQIL20S4wyedF9wXywSJXbJA
	 z3j4TKmgV/5hg9JsEXCTnndqLjmzrtHOT10W5xBPdSyudnoyN5m6YwqAu2wg9Dbcmk
	 5hNHXKdrtgCBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93938C369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174424199359.8553.1241076659966677172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58fe7b9adced67871be0b4df38f991b5b196f92e0feb27a87a0ca56d64d6cd6
Date: Wed, 09 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744241993
