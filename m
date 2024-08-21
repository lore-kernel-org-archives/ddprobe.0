Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372581BF7F3
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724228154; cv=none; b=TfAcFOaahq7JhAHLLFdT9+KObLumxRFzxSNNYTPp2oqO1jtb6crRVFZ1ZeG/szr3jpQ9vCrwczYzgXDQ654ZcWuwppFNmRiu4i7P6Su35bzOPkrSZL4CGv4c+WPG5fiKKXkLANESN657YXPsDGpKScJkw/Rf5B/4W0APVsBUsTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724228154; c=relaxed/simple;
	bh=BQBDarPKBj0zZ7L3ZkVZNqHvlijaIMgw/P+Diw/lHzg=;
	h=To:Subject:From:Message-Id:Date; b=f8bRneUDi37XmxqXWgGHax3zgbNwvPI+Q+jJ1KiEG+BNp6XHUrW77q6DHU8sjzdXfJwEJgTuYwqaLBjQh4rbexmOiZzq0Z93mFKj/o0dP9T2oZYAY9IxhNPsv9Qhkak/VfK2N9sqtMHfpYl4xx/TqFN6URC/v31SJa9XbVXqvx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJhDkRhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJhDkRhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6A5C32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724228153;
	bh=BQBDarPKBj0zZ7L3ZkVZNqHvlijaIMgw/P+Diw/lHzg=;
	h=To:Subject:From:Date:From;
	b=gJhDkRhKb1CWRogz3rV2FJLoPtey5AgxqQ3bH4f8+9tldC0k/3Xware0zvdcanZGb
	 tupGb/Ricf5O6PLeRMtNwsSVpcbdFff1Clf/D3CjMryUSIFmW7wZQXAKBTL1ZGiDhf
	 C+pea7Y5sq2PmH742uS5J9IHT1w2fKwDbWG/RJ3ATi9IRrMNPqGoP91xT5nr17Aq34
	 xlUF518/qaMHDerSjqv7u1vxQMDsaurPI8fLXk0gkykCqqsQAMqWjjdEl3THPHiY4w
	 IZ1yqdpGdW42rBM86mclLZEtNDW2jFC0ZgRlWoGk/a5UfJsPCFgwCjuJ96a7247cGt
	 W4LEt35iHLrMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE3BC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172422815364.3926.9144668328506863919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1200e12b493fe175b14d411b0e945b1800ebca560098c63c50b225da9a418b
Date: Wed, 21 Aug 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724228153
