Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C563A40B0E8
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789343434; cv=none; b=M/4nD4vUigUyNmMbpAKwxzGkIP3GB9sjTZNkQDUmKuBG1FwLnUivINM0Ja5dks4KlrrED4WEsBQjcNO782Fkb6iLMWWJ6Qyh9tbD2eJ3sp0rbZ6mJruVpW+yvbRrPOAU8JY2TYvZATHh6jU/93iplSxeHhL3SCgnayedKVs4xko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789343434; c=relaxed/simple;
	bh=MxMb9XWUl/CSAjxyvhlwzYrWdSmo3Sry/Oqbe2zegRY=;
	h=To:Subject:From:Message-Id:Date; b=TUhL3OqbfyQoMcjGtWX9iP2kKKB3geRzKVCq5vx7l6dklaNo0JMvJD3kpCoYXmvTFm+EI+OLoh9s1d3O5H9Cj36da6XOD44JD6bBGIR2hXtfRFha+52+5oDQtaBFn0W0QiYvm9Wi4dAUCcmIhDuzduKIb0icRv+7ileot9A7CXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixSMfADn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixSMfADn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E8DC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789343433;
	bh=MxMb9XWUl/CSAjxyvhlwzYrWdSmo3Sry/Oqbe2zegRY=;
	h=To:Subject:From:Date:From;
	b=ixSMfADnCJQT4hhdtqiN8A4X1CEMDXpB5Lg0N+bFYpwiJSIizGY7+Jxb7W9NOBIyg
	 f3TH0bqcigIC/Kq/7njKkYY47S0aTE0JB3gIqyG60A88L3VC6AgN6w6qfJK/HYElW6
	 ewZZDtCh84YN8H8VN+WMZ0NwntecbyiRsKTR2OQ/qkubWkHF4EUc4TrpEr7pMczIRy
	 bS3xARC3nppuOHlA/5IYgVFgtJFrJ3Jo2cM+obKWOeufBtf1leX9kSk22F17J576Lq
	 SbXQXkgc6PMOslzFmfHgEDzM6riFeCTKnK8z9qDt20SwWaCoymCM30lBRcquUvnsmO
	 85DYURAu8/Atg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF281C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934343368.28461.2550406665220011379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf580d59e6dd0ad9b3d74c32359bb0332b6e262af1c53ed4334556ebf1a2dbd
Date: Sun, 13 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789343433
