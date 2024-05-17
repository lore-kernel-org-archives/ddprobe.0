Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570EEDDD2
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715971943; cv=none; b=OOcDeNy0U1M/WbLWFGl1ZfvCJ894GzEcMgGlnyZ0RHwy4QF0i2XFaD9wLZPytDMj0UTFtG+X8C4DvnEFSpypdk3pJtmDlyg47ybjyJJJxBqFgdgpfH0+gwQxg9pglC0G0m6k15XcFEKn+yXFkxpaUay56z0tmSX8mrNnDUGfA7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715971943; c=relaxed/simple;
	bh=Ug4gEyenbaDWNLBYnScj+jhA/gxfzhcmIdRTepKtQrY=;
	h=To:Subject:From:Message-Id:Date; b=F1ibIGabjf+e1s3Hbols+A3fvfqzW/cFOPNUuNp1swWNS5siUtHbDSvDKTYo3I+46MCV+aHksEfLE5i1Z65AxiW7zyZd1Cuadtazd+BV8zRWL0mpe6rhRQgQAataFIxg+4JYEc6zg9jgJK/p9Vws8lcxrd3w+JZmeJBgZkAJrxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpcMWGr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpcMWGr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2582C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715971942;
	bh=Ug4gEyenbaDWNLBYnScj+jhA/gxfzhcmIdRTepKtQrY=;
	h=To:Subject:From:Date:From;
	b=OpcMWGr7uAP7MK2hjeQtTna8XbA21peN0CMfrZfV65QqTh6cok79Cq0pffL5lFd7j
	 FtYN/O9LpnantUDXKra8upG5LWlUn4Mtkm3/w+a+N59cwZtfVgWlLi9xVtuA0G0sai
	 Mbna9CsD6KWYjj7mmwAoHfiWIZ1opzzR/OGCaLqHBGuW79BVbmR/H5SiSnWtDzIooe
	 rtZl1VFqOLEPb9KVZEYAGSoXnUup+LI5DNCeMEBr26jE0HpA+jm9UYglpLqdCk+M58
	 lZRDM03hH/IlmaP6hVBZpGnWnVddcnwyD5kqBfQjXMzyNCQp3EEc1epyP5pE+eNXbF
	 BCIMO9XRJv39w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0774C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171597194277.26523.5267221780897061408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c157168dd8ff9695e34d2089b021ff6b101afd771e890771e7f7e38d0085bf
Date: Fri, 17 May 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715971942
