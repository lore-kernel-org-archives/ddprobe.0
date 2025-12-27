Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CAE2745C
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766857434; cv=none; b=Vg+E9TQ0y7sBXsQdJbo6qroslcBMK5M/TNMyWWdVxB6ZEVB3fk8JRdvGggl3oAluiU+QlKpygkPyR1Y9IFudnl+vBxM1ngMB7zpWOY5Y+SYoG7Yj1mJbvRxBCFtFNJoBL8qCaWgswyeU3k27rBVHbbAEwfBL0nYvVdZEWoKM2TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766857434; c=relaxed/simple;
	bh=BjFfq5oXgjbpzMi4ZyW+Fv8l4scC90ZlTFEw0QQEBBQ=;
	h=To:Subject:From:Message-Id:Date; b=tgms41wRX8b+ZUc/KXAnO1iXVyW23sdnxawslmk26Po2hOsvMVOl+797a6/8xkW2jayL5VG2SX9OP1J7rHtgpQqkclZAbAQzwHeqx5zqb6mJZfKDwQPCjN+o1MvZp+ExteyIEGqeonSfXK7cnUObvVtKPAfwhW1fDG3JagWQ+mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnCABKSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnCABKSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B32C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766857433;
	bh=BjFfq5oXgjbpzMi4ZyW+Fv8l4scC90ZlTFEw0QQEBBQ=;
	h=To:Subject:From:Date:From;
	b=bnCABKSRjfJrpNqSxBk8Dx6zTbLL/6Xoqynh6DifAifG6fT85wqhfzI7MJdRsMZnf
	 q+TOz0V3RijuJ7/h49kgXB3OaQHGgaOScgDchleiUGNxa16uNrYko+oTk7OiqMzDMg
	 GrPZsOLT2HLiwko/0TbafmXD9T5bkXXKx6bw3cv0nBq4J6GCcz1QGmSD8LoYBA2b/H
	 CtZa1NDVKGr0IizbA2ll9P9QIcWMwkrxPmbI2ebkcV6OQCoaLJc7nsK6ubdFG9oQIb
	 kWBrybh9GtJBdj4d7QfYOX+2rWD4ks8LZgLXs1ys+ptzdzfNXBjgJUYj3iIX1PUh+K
	 uIvGhGBmFS6cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9229AE92717
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685743358.26748.16299591667416795442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c6736d343fc86c765e3cfc733ccb8b5fee5e13d204c6ba691384d34b1eb18e
Date: Sat, 27 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766857433
