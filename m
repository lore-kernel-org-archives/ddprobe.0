Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B831F790F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751950194; cv=none; b=cDJzFH+XtwMcWgkHfYKFNEgLe2ZeFSEYPgKBFiyzHrETCVuHBQQOoalP/nlMb7L6cExSMsImpmIDV0bpZOPTyycQAYfqRIJvxOLyuiEt5YAOgjL+EyrPPbq2EcK/uEGYj1K5VgPztKet57VWehzPKctCDfT0aAdAWl07hVvvD80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751950194; c=relaxed/simple;
	bh=ENkCUt3WFtigNvCccMY1o6exW0QdNjD0hx06if7+mYs=;
	h=To:Subject:From:Message-Id:Date; b=YIXMFjkKJdOTJcKX0e/tgVuuxvLfoNLH/makflp//IXXTRSdy/qxEXv4dQRWTLi4T5OWgfCFkgsAd4SUSheDiMTjX+q1SwmCcxAQ+tFv7QMYORmSGUEmGjM8RPTdKf0BLSMXypu1RG1Nd54yAXZlSNvd/fVtGjZ/GGP9DOayj4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vi0FVPS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vi0FVPS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA77C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751950193;
	bh=ENkCUt3WFtigNvCccMY1o6exW0QdNjD0hx06if7+mYs=;
	h=To:Subject:From:Date:From;
	b=Vi0FVPS3aPMIZPIuvz56wUjPGZ5hR9qNn6Gj6alULp75hRkJMQKVNbvAing1GEe2g
	 PfYhH/9kE69piHLy8eIpRTbsPZg7V91da3FVEnRQ676tc2zIAWEhjlmzQ5+2VdXPG/
	 LLuqe+p4YWnJnuI+4pAq6NLwvfmfJIXxY7jvUN748xNc1F+o/ylVshUnxX6Vp7Yfad
	 GDRRnqhVltjKXHkJOrYeFD6Kbr7FgoVJG4eWq0RAv2Pt13Jr1NafXTZWhd9JDp4WeS
	 dkAYXc19mXv2XRJJKA1CdpA0aDMQTeL7KBgt60DMwBGsnw+OPaX2TlRuc3Df5vaOr0
	 Kp4MTJMl2MhjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6CAC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195019357.320.11435498847847967118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7853c78d529cc9ec9459cf7e7414fd06c784710ad44b84e70a00d2c4509344b1
Date: Tue, 08 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751950193
