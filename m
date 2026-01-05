Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2433043D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767651834; cv=none; b=U5Ip1l+CDsIeTsAdfLcC6cgmiGtiPZ1rd/ItATwLwz2pGCyvohQwk2sPcGbwxrUgWkqzL3RydHDuNAW9RmcTWr2PcGKssYDF/i+xI+yXWiQojsNEb3wtDiq4RIkby/+kycY9wmstEicAG9SG+qbkalQv5dzYcxdfag0tP4eaHcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767651834; c=relaxed/simple;
	bh=uLPw6n/oE1oQEoYnov9yXwcqZivWtublItjDKHFxnis=;
	h=To:Subject:From:Message-Id:Date; b=Az+isoaarGlBPse2VLhLcHFA1AqUYwoz7dbrD7nomfV0phv4+IfVnhslaIvaLQ5WdyTYPP9d5oBuXp801XqkTUseP6REEzhLMuBTaexTao5eYzy1zuAGXLtAhcFBjGxdwDG0A16a3D9KaHEyatgoAX960wg8YawvHF582FPYNas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcUsZU+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcUsZU+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D36C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767651833;
	bh=uLPw6n/oE1oQEoYnov9yXwcqZivWtublItjDKHFxnis=;
	h=To:Subject:From:Date:From;
	b=PcUsZU+xVVULLFXF+Q15/0tvbyWH7nQLsvmXh0l4Lusma0PlOudVwhGn8mOn+ONU0
	 4J6Zoujo8r07xa2K7qXyIW560O0zaK6Z6AChNJi2jDMqTgDQB6S7xp27tenCyVFUas
	 FWs7GsBtNxuejmyDWKMnAWOJJLPRnW9CfFsMV/pnhyhMSZMHWsiOPOCSakj2oJ/cZt
	 dVkj88+qokxqm16VO3iAzl5jI0wU07BjhmieETwUTFBqhj+YYF8lCBDsf373j6nkF4
	 WrfqSDi9NDt+NB6h2Ym6SuMzI/LsDUF+Yy1OkI1XqSsIVdZZk8K+M+qVyiPhEyTPxU
	 JY/54BD75i0/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0FCD041E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765183357.6180.1529094591005614271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1619696a49346f9c92b498031031bc67d6b84a152bcbf39f3a54cd71e68f4e71
Date: Mon, 05 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767651833
