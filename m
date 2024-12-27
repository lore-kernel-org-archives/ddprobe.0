Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FB0139579
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735338354; cv=none; b=QDWiDjJeiDcqRj/7xI5GEP9fsemuqdA1RRFrWvjcqxkdZIaL6JCWbGygIDIXXESrJg444ny5T6IkJlhmFQqWgwRxXbBGGjwHPylUxCJ/zPT2tc/MBjKK1z4Mov3nEy9qU/yjXluu/OnEte1UZtv9WVNHMU2NNpu1FfM0bBYV2N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735338354; c=relaxed/simple;
	bh=VBVOIgL556KPsXqvxmmLJh9ZBW1vDfusvUhy2SxM4Tk=;
	h=To:Subject:From:Message-Id:Date; b=ca+c5xcrLmZr25Em+wx+KeMo+DRBht9HTLUKXvbgCC8ATCsQcVB+wLwRYAC157d3bsvMCjnTrBDuK7BrA5TvmOMqvI1rlIdlX7Nlupfebb4WqEAfOdTVOSXSOPKAcDsuu88zPCyI5VLUE1O4uL+1+J64gv/pMPcflFWTMfi8y+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPhaQkcc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPhaQkcc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF38EC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735338353;
	bh=VBVOIgL556KPsXqvxmmLJh9ZBW1vDfusvUhy2SxM4Tk=;
	h=To:Subject:From:Date:From;
	b=BPhaQkccMuAejuF20QHt7feEkKk31GfWCtLyUBTLTHSgBxN1pyoEsZ1k7G8L8xA+3
	 DqQDEy+xrPfEwi67HRQNJ9g6bB83haOiURyExQdLR3aASoLMPYCHmMbv680py2qzWJ
	 5hM2hD28ZhVXkUm2I85hRRij/1M1oTpJgFQSKusLSr6rSyaT++2rk7DuTyViqb73ve
	 y57RCgLqhzNfI3DvHMHkhfLi3J2fqrCVFA4/ka5F1tRtweaiwpC1D3HoofvYnKuBtP
	 RCpg5sMrZSNyxEqd/BeMdKHUkjrrj4pSR4WivdZtHqgpYEVF2mrkcSHHnibGOGDWfb
	 xxmmvjzQxqcjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A556E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173533835358.24103.7116250222594802161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236de915a783c068cffa6d931796c40e505d3539418d2d13facfb06b1ff771c5
Date: Fri, 27 Dec 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735338353
