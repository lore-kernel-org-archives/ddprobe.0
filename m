Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FD640B108
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786530034; cv=none; b=c3f86dU+xXVDFbvWXFSebPjLEX/mjJEWaa4a8r2PhcsyqR3MC0uADHxwPKLZKgpefsg6djxwjAnIeVzqBNHX21E6kXJTNE+TfaOiov0Y4c88vdhQYKoNzEogbbxP6bhWbMVTmHxZjWicDazJI/Txqqwdvg8JyzmvyUkC4n9aAMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786530034; c=relaxed/simple;
	bh=qVaUAfi2LbYgTncRIvhHSyQbkvHnYDEHzJcLALcCJp4=;
	h=To:Subject:From:Message-Id:Date; b=sVZxXRAxWDZHp+A+8IGfRFVRKWhHfxBHVBwT+k77uwPr3LnVfVP4V4kb6nHvEb+wGCpO0XKPoyu6x8OQqRu2maxaGidsBcQz1EHWbngGvFEK7XvkJUBnWqhlhT5D331INaCEOAwOmp5t7zYalEZE9BTvLMLbzMCVLujOvySgFWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8sibGcw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8sibGcw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA78C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786530033;
	bh=qVaUAfi2LbYgTncRIvhHSyQbkvHnYDEHzJcLALcCJp4=;
	h=To:Subject:From:Date:From;
	b=o8sibGcwhadGmWk6XGhgVF59b4J3/0/kmT8ZEPHyotTRKJUIKbq4JHbRsEP8SywC5
	 R0NECZ7FCMtDvRKEXJsSB6Vly83AWmdommXzIFylhrd+Y80Ywc1ecSOh58fCQfj5Yx
	 fTLAvM6BswWyYitUs5bBM91HVLdocqKfDzGZgboXxpAtIcgTReOa5Z2gL+25IX3qSr
	 +pDG2uhAy0KJp+hwHp+nkoBHlaQihb42cBOb9SAoSpRohvZcUwQwGuqshFlBLi/oNq
	 2JbCNpnf1saR9TkjnhAaAEgIXTip6us6rXnSPzT4uzfLTclW3qDuoJ+DOaCzmneTG4
	 dyBCyRSv1VnXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0AFC5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653003369.26483.1268083981231418510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c42f81f80003ba09585bf6116928b53b097d9fb70171e3e9ef90bf293bc2b8
Date: Wed, 12 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786530033
