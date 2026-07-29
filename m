Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC7422F388
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785307234; cv=none; b=DTbav+RIcfrm7CO1RYbQ4c28pgMsz+oCue4Ssvhh3xJJ1mT9f+pDcsGF2AiuIp0DYHWKZtxnmAJLPqtKsWZTIkhUA10cDsNz6bw4o+q8VitKtFYKUbg+Mda+a5NEfwzozIYLTRCB9L6hr2W151w1oOxE889XuzIzQarUbN4w/Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785307234; c=relaxed/simple;
	bh=jxcnB1/wWlQctnIFSb/tBy4dbv+/tosMUC5mb8l+2lo=;
	h=To:Subject:From:Message-Id:Date; b=JZLVxhJrOaXvL5idBFb9oRPt1PZCn0Nr5mAP8mViqURmo9XPRlr1rd8zodBh1ZPBfNOTyXDIVKWtv1XD9gWH0+qjgG+uw0WjbJckI58lvtEoxeFIW/O63f4cnZqImaKeAYnPacBAUUjTAw8+fXsi2/MQHXleZHwwI3OldrHhmwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTbF2M5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTbF2M5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15F3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785307233;
	bh=jxcnB1/wWlQctnIFSb/tBy4dbv+/tosMUC5mb8l+2lo=;
	h=To:Subject:From:Date:From;
	b=dTbF2M5S0Fzh/sHUdmzZQPBAH9cMILWKG/WWSxxKBV9ZNH5OO3iMjaueMlkvZ8F5u
	 YRwWQxI/tcBw2rgnQDkxBdvETiUJeTeRJO+SXwRzhxj1V6HoTEBa1gNvTrnj6n8fw5
	 MwT5LZeG7n1jAG3qbblkgd0CbXywLufYN87I/elJVHbMfWaUgNw7P5qHfrkKGa/oFw
	 vHTl8IeJd4fqqgzqrYlYLu1c7iGLw67iTOSZfJeHPo1/W7wodsIH+FR1a0Wp/hXmsi
	 GYwZwH5g8ag8dO0/BIwy4bjn8x8l1YUpY0MIqAoHSWx9tdDQuGtkQoU28LjwaV4TcK
	 qY4BvJF/pWZgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F9DC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530723368.14339.12007010858166305926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c373b700b903d24e460df51395ebe5aebac54a3b1c79f8cd2d30a7326e77254
Date: Wed, 29 Jul 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785307233
