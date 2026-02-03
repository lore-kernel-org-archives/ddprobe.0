Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330DE3168EA
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770137634; cv=none; b=UjbweBe+FheuAHl+pA/8jUOsyUSBcZjatT15a8xf51lzbdWwa8T8dUKIorW9iRAY0ZvIWGgl5ALlszWW+sNIkhz/BKH8IZOUiBsH/JOsT4oW2nTPBCvpX+0SFmn62YXMmOKsdSigzDXmFwBgcPmhLfjM6iHe5HkxVV8lzr9xZdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770137634; c=relaxed/simple;
	bh=UbzoSYkGHhGxg0rdf+LAb37keSc+/8e9Z64RcIvlt1w=;
	h=To:Subject:From:Message-Id:Date; b=nzp77+M1N6RoFv/0lw5afLA6s0k7xLloGRXYfplvbQ3QO0iAed4aNeSjZ5gou55la8WCbMZjNCQbDtIGjaym4sPghpVfoloOeKgUNStB4VjghU3HJrbU+JHRq1dRDEcFFhHhqrxAhtz7pwBd+htadkbSKQnfZdUO4AMleTXMHK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMDLj5Qp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMDLj5Qp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8A8C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770137633;
	bh=UbzoSYkGHhGxg0rdf+LAb37keSc+/8e9Z64RcIvlt1w=;
	h=To:Subject:From:Date:From;
	b=EMDLj5QpUz5kkn6TwbdbXn5zvRGqjGLbI28DZQyp77PA6HnTQpN1/MXJ7cLsha9ra
	 WQwevC9mq+MU94KyCFEdV8Byn8HJvnT/tOnFQ48xXuPi752uJX6fJrVVNr2fEDrGrP
	 3SqHeHnSDo4mBYuVHbwQf0U75FyFMLatS8bYUxdeHksNjXkzWDBVMQEL3b4or03fvA
	 YwvcbruQIv4Atil6Dpzt5amY/9NBH1FgleOozdmdjLwuXybJ3litWzoszzMN/8TQq7
	 nE+va/e1+L6Y2/QNufA43xgsAo+Z8HBYPG79l+Al/mx5rnh3jQeXTiEC+KjKxfWK2r
	 ao3UgDMS3niJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E78BE87849
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013763363.7901.6626125916837137866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f577e24af2b3eba611078fdb106c10d4811879bd03d771940fa37e5ad32612
Date: Tue, 03 Feb 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770137633
