Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306431E1024
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777639654; cv=none; b=Lq/nxKR1QTZrfer5jZVdu7SWQ2i73+pixD3gex9PvT0ZhuMjeHhXPLjn2jEMoEi71HBzpYVXvs3JNxHDtZTY9TZYl8Ck7mq/dHWvs7NUMT0OGRMOeY0dhvJLQCnxqO79sYkClwStO7/KAI5bjDxHzEw7Fz4Ases1FH7FfKVyAPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777639654; c=relaxed/simple;
	bh=T/4p9eDsfy4TsZRQpmn9n3ziVD+/mp70kthM3vGtMQI=;
	h=To:Subject:From:Message-Id:Date; b=TWEAT3Td6x8x6uMM0sTgkhIPCKA4i1jk6LvpXp+GeggdWcIevX8999ah2QF5RTleWCjcqI+5q3O4uCpa1j597I3ry3+lgHMaMbinWFxZVBOBywUORSVhvtEwGUok8zL9G7J5h0M68IhWjs9e3wHW4zUP0vq/KzUpN7QN66RDb9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hphuQ9vl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hphuQ9vl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC20CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777639653;
	bh=T/4p9eDsfy4TsZRQpmn9n3ziVD+/mp70kthM3vGtMQI=;
	h=To:Subject:From:Date:From;
	b=hphuQ9vlkZ9JBsdBHzdc/i0wRWGDKrxFnyMTUnZMSlaRuzTK4cNxmGrOIHrVmCzCI
	 eXHnGav38+ORF4PpXB8SPODGL1eLSQnfSpu1b2nTvzJVs0pPfBtquGdF7xOKfuphQW
	 aa5kuEoBqGrJusKEPN2wB77Q234eD3OYdNwnEtXtA7gkkOJEtToMXrXN7qS1csv20t
	 AvnrVLUq8XYL7rcWl6cEmQbWWtKCSkT7Hg/7OfA41zE3ZDvqqXpj3tXGILb+qTDi3t
	 Z5AN24RaCIS0cqYYF5aqbTJWmz+sywit1cJJt8ZZHe11spO58saTAzT8iDn7Nu5y8r
	 fnbrqo0vdMdnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE32CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763965369.17816.11194545915062350967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe13a16f08337942b96c6dc5e44c74c8cd24e58ebf4268f883cf67c4029d9f7d
Date: Fri, 01 May 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777639653
