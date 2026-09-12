Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD315381AF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789179034; cv=none; b=dg9ZeYY1v7OWWpDgzoPXOsJMIvlcRLjRmYsNfAqeLwhpYiTdJPdC9QP9Il62yoii0zRqJjNdJBHA3tamKX4Ma0C7wdgY9gPyztr8rCXPdSDhJ6G3La9Ga+EwAOVVorpyOMOVE5z0RFeOUoBUGChaA9PgAK84rSitigk36qNsz2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789179034; c=relaxed/simple;
	bh=shfpMSW2Yu1btB87Gt9XRkB8+8fiBAunjjlhk+aQRu0=;
	h=To:Subject:From:Message-Id:Date; b=iLISMUXXUON8GQ2e36wA1bIAPBt1qAFIzJUn6mkej3gxfZZRagczKHTv7XliPLy3jM+PDbzLegZezZfoo7pBt4rpnMqQBhnM50mg4k8VjdRHcsmxoHgvz0xdrKHSvrhESv6dPC6lIhZ5HSTzajZY+b2BWb4BBCVd4JCZhAJGLA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHWoRB4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHWoRB4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF88CC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789179033;
	bh=shfpMSW2Yu1btB87Gt9XRkB8+8fiBAunjjlhk+aQRu0=;
	h=To:Subject:From:Date:From;
	b=ZHWoRB4tkXofK9ktV+BRCmscY3HvJqf5P9p9VcXUCQfVoNf05/0q/qreZAurkycqk
	 QAL/GoCgkHWkZXxLEcesUOOPjwTSkl5MmInIUcyXELbMebCmKR6hwnj45TeIeyYZZn
	 WxmjvFSYAUjRHRipgmuYJolILJgW5+9QuhxAvscGrVP88i82A2GH3HCBQSIAhxhTjq
	 hr6wxvMXa+AuiQ4JcWxhql0TQZjSM0Q2I02EtV9r48Xh9hVyXfCcYuFFkW8H6arT6p
	 VPEayjxxLmljzlPxcbZCt86S8msovBO1y2ihENfoc/WrBGyBB0QRC+DPdUkamTnirl
	 5Y8VR9jiVxgzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0367C88E50
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917903368.22153.12464379752442459577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bbc106ab08cd236f0962550245a49641f2fa4670d6ce16c7cec03753b9855d0
Date: Sat, 12 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789179033
