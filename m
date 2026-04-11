Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201BE31619D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775893054; cv=none; b=F5bHZ/sAP36khPtuf76LLsxZEKFBC+PL5bb3IoMcyCONqfPzJDih5cO2EEdOQqLIlMR1BA+mUIM669f5jEb8VVLPQmlV5CSScMa/lWTp6AM3SGfRW4RlOtz5HqENn4ag9+zonSLNTNiAJC+OC6adhh/q5nUAiIlMf2KYlgNwLSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775893054; c=relaxed/simple;
	bh=oiTrOhQqYNhjmigPOYHywaFz/ly1kHzeC/0rA6woQbw=;
	h=To:Subject:From:Message-Id:Date; b=nHi7CIC1VdUGulxwHcbeeOOkPhp8uzhlbRUsYAWeKL0twD6F4nCvLbngYFCWRDnZxY1xjOj3zTa3WZlacH9N0/rnUHvKcTPaasAFyCGqx7+zbKaejyOfDIKFmDYKOhqQMGaN0BE2AJHtlmj5sOK7T/QJd6C8MfvlIBL9uwrWSm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFJl+/Wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFJl+/Wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD361C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775893053;
	bh=oiTrOhQqYNhjmigPOYHywaFz/ly1kHzeC/0rA6woQbw=;
	h=To:Subject:From:Date:From;
	b=UFJl+/WrGUSPyXU3gJ7ND5xQ08nspUs9GGQdFlU679mnDKOkNqwzb68HdEGsmMAyJ
	 swBVlXW02EfqQ8ZwxzRrK39IDR8k3+fSILQItENefRYEuvr/AiBBdjKhedWawnAaK0
	 M3RqAiXmWeVNk9yYfwaq3Yh9gFfBtVgW+lTS2ScdEb/jZHjwRojudQWPlgkbCxdS+s
	 jhi4CbsP/gzuilYnd4H36jEoXgnqowIHDxB5Dqo0iI9qAoZkwG1s32jOvOqrQ/8zC2
	 hkYK1Wn/8VExDlY0vqTsdQYpd5nbr/S6CdoHIpclBsW/iGSBCpwlt1LyHmDkAvC8wv
	 OI+LgM0u+k06w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0B9F36BA5
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589305368.3702.11421011467097470386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b17651160d0d168b99b4f65ea5801e760d4be9c5d53c947572856220a9703a2
Date: Sat, 11 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775893053
