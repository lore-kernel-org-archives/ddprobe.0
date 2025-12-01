Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B5A8488
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764558174; cv=none; b=eY0nraIbgCu5Jg0NyeQrHdGX0uzSbP4gc4vFCLql25hES/lYm7Jm+Bv+sDk0sOyWnaR0BH3P0c8rhYzkC8hENjWjwOlUii8zBW2QZ6GTnUctwpJqZrmMNwe9fDBL+jcu+GwjvNR7Ma16yUtggg7kUf198GYPoxlI6bMe08DcSUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764558174; c=relaxed/simple;
	bh=48PoTpGbuuZO6aZpkaK1FElPY85U3pphek3u7m6w65o=;
	h=To:Subject:From:Message-Id:Date; b=Ji14MN2nP4cirPCLciKqmsi+QoFeQ8G++YLQ9J7Ij6d8IaGfuvzysXJYYOQXSGOa/VISdUkaiwOrKqDMdSR0NRC0Z59walSIEBQizNwpC3LYXbEPo4oBD4AU5cX6Rhoi977cCbgz9J57qSLlEqgulk2uc+hu+cVxg0oOWtdwwy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FY3PN3QK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FY3PN3QK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6358C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764558173;
	bh=48PoTpGbuuZO6aZpkaK1FElPY85U3pphek3u7m6w65o=;
	h=To:Subject:From:Date:From;
	b=FY3PN3QK5Qe2iMJefPKRdzpIgxHuye76r7ZSCwE08KrLw4yYwvLL5OL/OSMzgbgC1
	 gMJozLfSMbQOAKMSQ8GvIip7G/KW2zK6LynA9gTbASfdjujaOdkX+SaFyyHvGlc6xI
	 eVUFk5HRiHxtJ1hshxKTpTLrAAf2hNuZGS4Yp/sy6t52kOYNDYsMbLr5bcjDqtVqk3
	 NJqnONYMQ18j5KoR4KXlkMBvPL6hr+jKDwANdbQLAHZ0NGYSiQ2+WNexl53OY1qxLA
	 fcMAyu5hNYgUzzcB+7+chwu6iskiGajp6rW0QVPxQHIRGsMJmDKX0ibbtvURvlNm2L
	 zsn9uBgAgH6hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1398D111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455817358.30136.10975873975526545054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda8d8f5459b051ba323502bef48763ba10be3abda8af258fabfe50422eb8f17
Date: Mon, 01 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764558173
