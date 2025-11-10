Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A02C2FC011
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762783194; cv=none; b=DruQ+5Rtl+d0cHGMk4SR+dlCdeQ7Bl1UEDIUgZxVw7JNvaHPWdgZEzkp57X00ci6k0bCmm8uIxjJ/5mZ6BvKynIs5jy0ugboj3+4u1QcqqyckvsUoWX2HL6vrNMszKVpqjoCa9j3QZpMjv23rQoosFk75E8Mjz7z3Wd/V4yXZH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762783194; c=relaxed/simple;
	bh=xL4kqV/1LLZ0ePyhlYluE87c991DhVxNPFZmSSm31Qw=;
	h=To:Subject:From:Message-Id:Date; b=sxp7tgckW9GOjpdKFdXnsyQ+4w8wpiem8zFu98uZZVGnDi2suoIr1q4Wcc54/FUWOF2N2KlK09Y3gOcWfjJ07w1PukBhqExHP5akBlo/1bgT/MeDipZOQxhdkowZd6gx9MaOjg+OiOmWoLz/E5yXkzy7jRMCgG6/r6ULcs8/HkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVyKIKE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVyKIKE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4D1C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762783193;
	bh=xL4kqV/1LLZ0ePyhlYluE87c991DhVxNPFZmSSm31Qw=;
	h=To:Subject:From:Date:From;
	b=rVyKIKE72XkQSzWb1HVCevhNsKJDA2eL82/IsB6NfnBAJ8M8afugocdKzphnExN76
	 /SSJ8/1PF+txIi3MtfZcZsPxLH41P6Qzl1l/t1Cacw5xkZEv6hOvuY2vZA6C8fzP8d
	 s/hwIGi+3nAtpVsPW9iWBRJy5NYRXU9TGKv+lJtCC1AmHex6C7rAqqK8uVzda/wHLH
	 7c73j3z7b7LukYMTsVkk/JLWoQnIgpzdSVB9lgO9qFa18pEjoqlbXdx4RW5iFNqNKt
	 FLFGSSRKcVsTQ8t8heF1ovZJnRF6OPhXffzXWiItrPFwqxAZq7BSATfpT1R/2vjok5
	 CKrgOOzntzKOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5ACCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278319357.18848.18094159624599334519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c2b5486badd5ecb2f5d3272aba07630d9647d973b08735254202b63dab5ff5
Date: Mon, 10 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762783193
