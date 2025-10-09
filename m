Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2182E0B77
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760011194; cv=none; b=EMuRg1KUZ86DtW1Mt1fmoE6cc9lBTFftjZqaAsDi7oo7nUAnv3OvEO3DZKxNEOUd+LByu34d6B8yhHHjFzzpNjrx9pmk15INMCH00nq+Tyt1l6lt7TegzkAfHpKz+h1h/YtnqPYc/jF2Xnx5bpA2koJvRd33m3Z2rMsfMHAHIQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760011194; c=relaxed/simple;
	bh=I9eiyVomB13+12NQjSm8cDT65uHppDFwqCELhfaeLVM=;
	h=To:Subject:From:Message-Id:Date; b=rpak393+PbJoLoh/mzOG8Lk5Dvdvvw8JhnHtWxbJ3/ngQy8wITUIqchRrm/OAK1OUH6KB3FiuqGwvsYaVax1r6R040wt2z6U6h6a0J3lxd4vIrNDdQvI+f+DzYPn0TntB6arjR/qRcjXiZlfBwtsPqnha/AJdcxmFdLGX7eTaIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNq/JoHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNq/JoHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1758C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760011193;
	bh=I9eiyVomB13+12NQjSm8cDT65uHppDFwqCELhfaeLVM=;
	h=To:Subject:From:Date:From;
	b=kNq/JoHYcJTXtj+HVaMn/zSOB1NyZjT5huXya+CdQtLBHvMhWjVLN8j35llCx+hFt
	 uoYJkZ9Q/WVtKDaCyuR32+fL5+sM2P5Ca1fNUEwJpX5kRW8xOG4grnnqeWaUH9CXS2
	 +mY5+Ok7B7YS1hoT7es/GOl0ZjZgW1BKpqNKF4YAqxsZR5WUJCm0DZMJMixfUk9wHh
	 15ccGPFbynrY3FuVcLBBlNBSgZTmQZk8tYkvc+ZyGEjrAUOpFQnRB1ha4VDA+Pzlgw
	 3r8eL6bLZdz2EhB6SdvpM9O0MS52/Mjn4cTJraR0yxxQZNmH2wwT52XE7dQCxS1a6O
	 8kHmm9z5tmDYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F6CCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001119358.11212.18255328490228192810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae3ded8ba534c6250df609b5fc2b353100d9d7cd39a7a1c813269eba8c5df4c
Date: Thu, 09 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760011193
