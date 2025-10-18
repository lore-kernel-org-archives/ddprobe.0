Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F2D46B5
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760746194; cv=none; b=VbqVTGyyfsYNnBdmCwuweYpkNLJCMpLNp0eUeu92iKx6WKwmWiXBBTIbloBVBj2NhjJbgdGMNa2AfPcwAjR2RTTJeoiHwfOJ7dbD132BDeiwxPZ8KEz6ApDWt32ZAPk498mTIHdacRuzsUJFF6KlHNX7x9emjMaTlaO9kK0phk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760746194; c=relaxed/simple;
	bh=zN82e+i4r3LtYf8sE976ivpZWPNAGgsHQD0jGG1NHTY=;
	h=To:Subject:From:Message-Id:Date; b=H0mUJ/VjZ3c5zfIeyOu+Nrkh7Eg1KkdgW8SLZylUWt1WoE6MJYv0BkdHAU9nggTjqqhH+PEq5xjnNaB92BrbufsS+qXj5AxZ6JYUQ9eGWL4YXgu45qLSDbS7nfoBdomF0Ls/LjSM5RRd444BoWoDgHuL1Fda/y6LFPr998d1Jlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XS9z1fRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XS9z1fRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7882C4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760746193;
	bh=zN82e+i4r3LtYf8sE976ivpZWPNAGgsHQD0jGG1NHTY=;
	h=To:Subject:From:Date:From;
	b=XS9z1fROy8t4acMvqMJsJl6Vd4Nrhydbo/DYcvbUbut8E56WDNntsI1gJIXwUjjre
	 gKspM+8R1eFvjftz1k5Ab4DBzDcsjmP5+cEP2RyJfP/UtMT5AgMifBDXLWbnDNuly8
	 uotJ2/YhcFsiveGbPMePmiM1FFyq+I6tconr4+oOTEQs/uMEkxYZY5KzcyowL59u7j
	 b0/m/TJA3KF63PHqBHgaY5lCU7WlYa6iP3Vi1mTTyVu+D0fh3JH4OcXNdaSU1UhwH0
	 l0V8U/HvltifMfbZyq+6ZHHDQ5BP19H8lXfbZcS6bNKlWDAf/2LGJdc8oFA1TvGUwm
	 bDf43nMP99LMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94898CCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074619357.6072.11221634950423518939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce7135c840af7d95930966341b1c21b122b230d34326a839bc6fc4bb0f047b8
Date: Sat, 18 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760746193
