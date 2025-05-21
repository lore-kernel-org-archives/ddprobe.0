Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FED4A3E
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747795194; cv=none; b=hn4A4QsFy3QVLgu3ZITA4BC7NLObBltza/oLPNrgePzd5o7cTLGB5SXvCEOA8TIhb8PbpBoBCsrMKs4YumwnWWiPrI0upqLJJxV89qyhhOHHeRXwXi7h6MWpjZ7aXZBnqE8GUa1L4c9T4o9xHJR1PElCNrjGzwy+dqO1MiraOps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747795194; c=relaxed/simple;
	bh=Q+o4N4HKuOBhdeTlIcw5+azqKuN3Hjt2Z+Y0cee//Ao=;
	h=To:Subject:From:Message-Id:Date; b=nmxgiV6nOK+WtXpCr8DVL2lJt4vh65xF8tyF0mX3tVLR6XtS9VSO83SAnbdfgU0q1PIYMAogJkAMW/iRTzMdMMT0wxBNcvPOZ86a6YNAuEaBkUOmqhDfhue2d5FsJqbk7lvyiVUq/99EwC/FGZTDZ1jGLljHIG7be5y/lTEM1tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACfMhnvi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACfMhnvi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FCCC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747795193;
	bh=Q+o4N4HKuOBhdeTlIcw5+azqKuN3Hjt2Z+Y0cee//Ao=;
	h=To:Subject:From:Date:From;
	b=ACfMhnviWk1bSk6pCULtDk//HdKFj6ybLBHDkL0T6TdQBJiotEA2LS1+V8MttHgCE
	 5WFLKc5U9qwPNSD/oJoHEL+mJCJRIiBIH2l8tEvccTxFDRGT3HUqvSZiNADnTqzm9t
	 uoIduhhbvl5UycKWHrmd28Fx3fRV2MUPSaHOzoW4NE63UDfKj/IvnPnYM/yttW+djl
	 EplSdrnHq36FnYHGTyYi4vBIfG4BkBU87q577j0hudZs8ubsK8KU9s6wZtd7yAiy0i
	 BXdfffgMwwh1HrT+qUcenazCafGexIGqdJ29RSTxWuc2OCOK4UGsxjixUh78CYXU3L
	 az10xhZV/j3rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E74BC3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779519357.22023.7371450975980313215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03bd83fec34e393ac51ba6295eab08993b35751b89cd1bfe461dc80b3eda68ea
Date: Wed, 21 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747795193
