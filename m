Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E83248F64
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786919434; cv=none; b=C9zKz2RR8gtqV6I+ZvB7pFOBmfELCEXNCAZqX41J1RUpD9r9uBZ4aoP2swbnM68grsQEBz0yfcThHq8UGIRMo+DkQ9XOWRwOP0bxxekPEkEqqHvqirV8TbRYAastwvM/F8PXRHG195ZCg8X+6YUNjbvuR8BtSVOGkOm7NNKCHEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786919434; c=relaxed/simple;
	bh=ln8oxTtjxfyYchvfdD+mYvd4tyKgUCSHobrrcMZhuxk=;
	h=To:Subject:From:Message-Id:Date; b=mj2pdFGWUW3FYOGSh7vzY+IH1lsXponAIl14Yty4yRUIH3CL1ZY3vT7+tTXL3DWTOdqH1J3cfbdgtalEjpv/4oKw5V9XO8IXM6455xSbf5BY/C/OprMBbS7od7UnmudCRmChF6DbH/ug5Br/Ob+8hi6v0BDoU51rAKRsl1i3rvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+Xd5etU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+Xd5etU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1B0C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786919433;
	bh=ln8oxTtjxfyYchvfdD+mYvd4tyKgUCSHobrrcMZhuxk=;
	h=To:Subject:From:Date:From;
	b=b+Xd5etUtwrq8fpVAVCebE2Ga8VyOWAtGg4dI8APM5zMr4odJfk6XfFXnN/DIBynW
	 UzwM19b+OqphmgyOteMofKBYzXCFzIdr8nmk8OSWuUc4wIB88b8favZcxK5qj30Vl0
	 U5EACVWkiEdd5XSX/jEgRYNa7ZErfpFDYHjkXpV3rhRSCf6FX4BqrSiyb3iRjEfEom
	 pA++A7T7oikoCUOuhopBPQIBYaLE/2BzXt2o2HPTqf0idh3MdjFioKri5LNje0uyt4
	 30cjBWZhMvSaDRO6CACxHhyuZwbU240xdjiLsLybGHf2v6YIvdzq/tYtqTHU1wOwUs
	 gXDEN7INceIjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E62C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691943369.23115.12069491680556111977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7faf4a22cd855cd4c2538e7a06defd08e6b191d3737e36c32fc120d1c057e2cb
Date: Sun, 16 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786919433
