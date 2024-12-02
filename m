Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568771F9A85
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733124354; cv=none; b=p77MfAT/3TqMTa4xdovZpKtKmOF/Ch45p7m3zPA7rdg5GsTazbf5XAOkI87zgn23TbLENealP+dfKsDfLr2vsm2ZgLbL6X8V9beGzBPowBbU4KrD/fJPY1XE+ERMNhd3vd0OouNRVL49aWfTvUCgod3OS41mXzJpyMvolhJOa8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733124354; c=relaxed/simple;
	bh=lWPKNKex1RjHygGu4Hxk+fcdQgxX0f7Yxr6A4WL1/0U=;
	h=To:Subject:From:Message-Id:Date; b=Hl/b6gbRlnW9f/unFGfCtQYcxwehl3EXQ3Y/OrMp8Licg6EhsyxPfT1NhMOnZCAF5VwhmO89tcgD8CTAIJh8SZJXYcfUtL1XMzAjhFnKC5ND7EXyArlGEFJnxicOptm+GiCsUL/KihTUWzSg792H0NdSjA7c+olb41oaYvKuhhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMAiehXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMAiehXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79E7C4CEDA
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733124353;
	bh=lWPKNKex1RjHygGu4Hxk+fcdQgxX0f7Yxr6A4WL1/0U=;
	h=To:Subject:From:Date:From;
	b=gMAiehXCh1wVDQIqGpDQFUjdA4uG6yozgy34OYMN+dH2FpqXC2zN4mD0q4c4ncxXK
	 eQLUlv2kBFQ7xZ0LEILAUakmE/NeH2URcTYn+ZYAllZJEV8G4663D9AcnTe41v5dwZ
	 jytdCaX63tLhZd9zGiyAaAEQdvfUA0uTyGTG8QjjEhohIpUofI9ItPmDVAkr2tOlA5
	 94/6WMHYt/oXhQVf64MTjxlc1b3A/OtZNg8AR6hDov2YRHpBlahrb86Pq8pcJ2OAv2
	 9MotyRbvY3Y7fWjGMJRGEEYlpqI3vj+00QDe2UgSCVEpO2jcR/h/W6FBMrbHWABN0o
	 hmE3nW9waBYwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDC9D10DB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173312435363.1871.15460615232986826034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b710073d46cd9cb06426215435c8c48cc8be054b58bfec2155bed0803e5dbd9d
Date: Mon, 02 Dec 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733124353
