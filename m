Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC921D6DA9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745103594; cv=none; b=TMPb6XvqZObxuA63YKakioPcwJBjG2B4T2xpDpVFn1mKz6BV3sTaemSKGdHdLG12vQNZN/sugx/g/UnGElf61Jl3Oih1QFnA1pJHAHV9kgasqitHuJnwW2A5Xf55MVCh0FICKla5Ck0IHb92W4z57MsBEVQ6+FbniPsV2HJWoPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745103594; c=relaxed/simple;
	bh=LaIj40U4rtTrcs8apKWUgwcotCbeZZ1Xs5ErJtpOeAk=;
	h=To:Subject:From:Message-Id:Date; b=jsvhtsihvb8d05rnUKsB84d9CyA0YqgnCaRnQY/kKvj+Ztlwdo4a+miZBNyOGyh0De2vmJDNk9KmLLri6/pcq9kG90KmgyHpnhlaFb3cXe9he0fCcERcQnz3bLvQsB85z+KhFpBS0RCFlub1n8X8lC47ZXQKaPNHMMR6w3O2kQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvnFH5tu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvnFH5tu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7562C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745103593;
	bh=LaIj40U4rtTrcs8apKWUgwcotCbeZZ1Xs5ErJtpOeAk=;
	h=To:Subject:From:Date:From;
	b=SvnFH5tuXtei9LerQydmLeZAbDbL8vwmVO5EfH66Ii54bHq+0QyXYygo5ONii/Xr8
	 YgArn0Z570oAciDPZWqExkBl7lTvGF2TiIKjibkswRPqJAZYJACIzta0/40WzE9FJo
	 8SMRzluR/MuuVO0HRfi6Rnjn2aEpjEUVl1fow2ce6/lhddbKaeq6I+wKcJA36pApc1
	 h8Cp55DRASdzD+hjZBbJCohcnZZY8zwLOnaSMtAgjXeBTG0k2jywKWKPub2OI2NrRO
	 k2dnQr4z50vmIDECr/qW+LE3qNuc5RqnC6Hfiq9OXa1U/rBdTTHAoPQWmb2B+WJW2l
	 GhXwz17wNURHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12D9C369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510359365.25861.11930112859298526912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f97beaa181d4dac9f5d499dc7dba0f65c10c69b01dda39585e78573002e3923
Date: Sat, 19 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745103593
