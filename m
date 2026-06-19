Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B7F263F5E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781842594; cv=none; b=lwwo0QPeO07q6zGyPX46yKkavZbRbBIFflR76JShonDmePDAcj8te4quBQvu2F5edkxKAeEj6/pPsk7URID1IFJeIL89vCJcuKuzAbiBKLSyDeJrblAf5dYqoFCCqiGKJC9bAZPazDdtsSlWJreMiUtYmkSWCEyBcndwrQaAHIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781842594; c=relaxed/simple;
	bh=B1f9kSRYvxsgyxnwJ3NTiKhPyLfqfSfJFZXkd+Fixzc=;
	h=To:Subject:From:Message-Id:Date; b=MnRGuJ6vIkzMf0wldNRDNM7CQj1kLxSLKLI2HOLvPeN7L3hfzzklH5FeDonhzA2V+udqcHoEQgBE/sO2A0jp/gIbDKtp+WezihogMVgtgbwvYsNoca/tgVfCFAyX4w5Jj1+06ZO0TRb4JM7fjMqPDUJvlbt85hx7z0KJnSqXBeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZEjcBQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZEjcBQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAE3C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781842593;
	bh=B1f9kSRYvxsgyxnwJ3NTiKhPyLfqfSfJFZXkd+Fixzc=;
	h=To:Subject:From:Date:From;
	b=AZEjcBQJYSNYz7weuecUAevV4VTk/au7HYU7lmmMqGoMiivU8535JGFG/M6RGSHkw
	 Eye50DQoQS0McJtM0hBRG1LKe/98ZE1Y8gl6Xgw3xjZf5YmCbN4EaJ22EEz3zPWcLI
	 05+o44y6tbRHua0V9xGE+7EO+O/zb2v+Cjb2fPfeRxirRkgOFw+a9qVr1hH7MX8qWW
	 sh+MS9ugHIruHxG0c7h9/bgM5IqSmyXFNyqIexO74BG22jcZ5AqzM9FU6U3TUf/KS0
	 2uVdpwO4qaPGILeamsOCi0m2YvZI+FxJdeAHZJk0znbWv9ISWb+nBqV6dLIE5Qdoy7
	 5KvONwjPMTQ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65CECD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184259373.9089.2279017093117424055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3d5f44ec60934194efd63114d7b47cc61b86e2a54b9c0497da0e4a94e267f6
Date: Fri, 19 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781842593
