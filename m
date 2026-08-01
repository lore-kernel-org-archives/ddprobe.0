Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97BA1345EB1
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785561634; cv=none; b=PgJrgUHivoFdXqPYcpY//TLTsH96B3tTSEjr4bPuobhyRFa6qCAhX24TYbI6JFOYGmk82OxKdkIinFWrUH6MbbdrN/hRpvp5K4eD/4rtRfHcja8rEJHpHTnUJ8lm3u9g/nTKRaXO1Plw+XQ1+WfFi9GGOCIF9CQlcKttJZPLd7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785561634; c=relaxed/simple;
	bh=RMDE1xOHC4RqsWoGbWo31XM0XRYJ6Yh9PDmVElc25hs=;
	h=To:Subject:From:Message-Id:Date; b=goSrX5LXTxdi45SAk5jJUf5Q1UEiT6R05i7Agt3FONiW1+siaLSDLfpwsKBlvntKdVGKFq0rN6zknWk9U1BpXQZHqnOB0/TC2rzFieWvIGrQk8vKI9udSycU9li369LTVENPYsTcVxN22Sv5P4spctjWCetH1ujVBbWi8/kSvJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9j4XvWW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9j4XvWW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1431C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785561633;
	bh=RMDE1xOHC4RqsWoGbWo31XM0XRYJ6Yh9PDmVElc25hs=;
	h=To:Subject:From:Date:From;
	b=k9j4XvWW0br7SmqbDftX6LXE64jAgNtbOCBROoMNMsXzR1yEHWc3LZHRv7wUlQPB2
	 pc7gkytX4Jf+rBGmNfFAt3ectf/kp10dF3rJ2NvFo+qImE6xNgKEZ86jdp6aIxC0JN
	 6hpc6uhD6jbsRJPAK7Hl5ao52uXwZFpl90xmWz5QA5BPWTIDV1MXpd8H0WJ316yWxY
	 J2H3MVSuCL4ofnChVPtbHytM/uWPEPcVPrnBS6FH6+gpExKd53fUHTxdPHyiKttYvh
	 SMmr0jVOGQVxH52kFhgt6ZkHBFksQ/mXmlD5pI8+GC4aVfQKGVSCJ2Cr1qNzdcaGcR
	 a/Ec/SU0qfBpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB061C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556163368.25654.11101023300498736673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7b159395ff70e84d09190bc3f19103f37feb7b8d38bfbe8da5c33d15dd8fe0
Date: Sat, 01 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785561633
