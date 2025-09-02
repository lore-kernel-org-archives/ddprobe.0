Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5FB29A1
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756792194; cv=none; b=tynWFC8MrHM8hRgV+A7cxEJDajHwwKEPCId1NDXSoz5JdB1g4hLDG/qYSNxLYIPbzBM6pZQJRt1AFOk/OpZ+v0EjTEnduJt09hNoeAi3AVZMYKyH2dliRAy4aYcT0VCCHYfYNFMe0giV8fXQaaiBxtPDw7lW0u1PQ2aFxoTnm2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756792194; c=relaxed/simple;
	bh=vPV0sKvU1FALXhMiwUJP6iWWifNzaX+2VrWBU6d4pUg=;
	h=To:Subject:From:Message-Id:Date; b=djogLJb7NDSjjrzgzyYArFUryehTGqDOCTtnXP3S96IfhF7uIIhYIebZbgCh47xY1PZvvvd1akEg2yEbDMptiCkezHdWTQDDmjb8Ylaafb07MwKgQ4bR+IWE8n6FMyg0xIuQl4IT1FVvJ+BE1bM5ahnYfuRjU1jjkCpLtbv1P0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxIZEFxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxIZEFxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5326C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756792193;
	bh=vPV0sKvU1FALXhMiwUJP6iWWifNzaX+2VrWBU6d4pUg=;
	h=To:Subject:From:Date:From;
	b=IxIZEFxKlTRyBfSYJAjDIdOXMxC9VaKwGX4QR6O7mQxEByWUctXC3pmAPoGr2v+pr
	 8bN+XqY5o+TSlpzoEk938+YYDMM8P0wEjK5Em7CqO6S+O+Y3c6vA6zwUowytsq+lKj
	 Un8qO3z+k0QwAp4STqmTUNyGFyKX3CNzVsZ4Sy5SibSsecl2jsvVfyx41yeI2lIKxk
	 IByMVwPQ37rI1RTyJp8bNfVosoFG0h1QdfatdPRkILHQkGcMGTMqHn43t55eXLdyob
	 yo2wIG7bOt+h6Fjokr9yj5S2u3fTVwAOal7aA+58QIjhbflHLfweo4g5nM5KcrBxz+
	 +7jFtBSfRRc0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E652CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679219357.29467.11629964628666708811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6d88ee16b57e00168b737d47a78923a56130969213dd1143b773a4ae442aae
Date: Tue, 02 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756792193
