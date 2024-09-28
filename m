Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC141862BD
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727567754; cv=none; b=NS3NYKBdBuefPO8D2D/qIrKBPmdd6sznqfCSEhu8HmXgd4geQ8T4gb6b8Q/h6AL8koAwR9jg790OHHIGiWxOH/9XyYfefqdSM6tXo2eZwXCKo+IhHIk4PPkptAWSHRAdtITrHvvkvlc1XRQ0FJvuduW6pjoLO8ugqsWWqxUvkFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727567754; c=relaxed/simple;
	bh=UsNQ8MZJGcZ9Zg4bbsUUcACS7uPuQYyWHBBhP/Qx/J4=;
	h=To:Subject:From:Message-Id:Date; b=HR1hITKdgtHGQ15aYRBaZ3qLX2EuPRkSCHcG1cnAv1q62AUXx4GEeno38PIJGxY8gloBqI1fgwMA9j9muiEKjnErLIL8G7lIp2tuTbue1kxBjVwZ0qdA2HUor4bTQ5nydex18ZLxZ3AMN30m2SALidaRCug6Jyq3lDllxX9WMYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCNAqDXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCNAqDXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A5BC4CEC9
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727567753;
	bh=UsNQ8MZJGcZ9Zg4bbsUUcACS7uPuQYyWHBBhP/Qx/J4=;
	h=To:Subject:From:Date:From;
	b=GCNAqDXDudt/QEIw+Mj3NgNj9Eh5KBkfr5EcVMh0Q/bIsn4QkUoXbRO4vTFkj4ziQ
	 FeTNvNge9TmBraO5PB6bquFgNvsIByAlngV/m/z42pVKgrEda6nkqmbXLRn4MNn2w9
	 +3FM1nuTyN33Zywp12J3O9QFOtL2+W6EmE72HnQ2zWlZW9cRUlRSe9/gscEbKGjQVO
	 0Mi7jgiCR2kihiru6v4sBu+pcvBNdkkb5wPIAu7miVpYGMwTijg0UQdY310iJ+3XSO
	 RSiBw8+lL6AN+O/t/cK52CO8hj57h+qOFjJdpXvXpGHX99v+teKfhbn3J2d3sVnekS
	 +8isFrLk+o8XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98137CF6496
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756775361.10248.9111305105766209682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6afcde43cc09757e6978d46fab479f5eb4737ecc0321539e9fe6da98ae1a5c1
Date: Sat, 28 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727567753
