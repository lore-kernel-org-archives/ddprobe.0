Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160E6388E49
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786398634; cv=none; b=XBZ+z9OrFeQa3IzPqGzJBTDufcHpUoixjY4pUWUFpOAlDAsnxKWU35XinDlwLLWiS6eAV6W32iaF4Ol+Ukv3htavZeErd9T6ZWgNy2yUlVhpSkWZd4KDUJoHuHVMwUu/Ph+XVOtk1R97HmVzn4Z0PVI9zAgwKkkNhuUa+jy4mwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786398634; c=relaxed/simple;
	bh=6vNBBnA7FfU558hNgiSJyJCwCnxodCLC9ZZ78KV23Uk=;
	h=To:Subject:From:Message-Id:Date; b=kY0k0SER47tk94RQ5LlDT1Imx5jS5tWu46OP5PefrP+JbSFrouOx7pH84dr9S2kjt9WCOPvqjK8/+Auxc03AV+sATWn7mggLJl453uhIKhgQXdRrFHEROjVaMB7IRNKBJSEI6xSQy0A8Mpge8HY68kc9XQ8t/ex6ydkXFDy2P4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pimzmjMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pimzmjMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB813C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786398633;
	bh=6vNBBnA7FfU558hNgiSJyJCwCnxodCLC9ZZ78KV23Uk=;
	h=To:Subject:From:Date:From;
	b=pimzmjMoIP+FO2Mx4o0U9fIfhZzEouLFp1zUHfGY9j0+mVWR4JHruM3eNdO9VcjKQ
	 POZtb9RjoghNLNErVwThhsTmL6Z7LjEjxNE5wfucypUJmcsc3zUTL0a67wplu6QvrO
	 hEAO8m3BCHpxxTAu/AS39uKiptEFV23pZtETEODOQkMjZKvorV3e2W+khKbxwXlYRC
	 kkrgvBYOA9HjCtxeEndJgTr9tmLRY5ZLfqtEnR7NnJ+WCWhhW+f8ClhN8y2ojAs8zo
	 Tdy1aE1mpnbdJwx7KA3vMUvz1tFMeEmIa1FXJSnW73zbzLL1UDJ9aeMdLuN/CM+2/C
	 yOd4KMCLXPSOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F61C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639863368.18721.1705520144744214663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a554e6537e0f2a62117ba204449513db7f599d8abb4f52329f3b493c47c290
Date: Mon, 10 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786398633
