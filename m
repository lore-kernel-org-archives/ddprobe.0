Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2E41A08A6
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750048195; cv=none; b=RYxU2YcCGYokzyOfIikNvIv/+DpHToFCMXGMU6jqiXQLxLzCg1DKDDq9ZS8qitzc0+n1zB+h6LmOxEWkkZ0SyBKGlfcfwxyAtCk4q5PfqbGhHQ1K/SNHTfE7BqO+9ZnhKJ9H9HYoWMFWcqo1YwuWAycn+L0UL3pYMq+2sQQHVUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750048195; c=relaxed/simple;
	bh=7nr06s053JyF2GRTndhyRx5/W7K7Du9+kO55vIktNAA=;
	h=To:Subject:From:Message-Id:Date; b=jPQmGk9D5CpDdMlXkxeUrwrsMpYRXTlcklaBeLHRJhYQ0EqVgxVSioidVucXcP35eYR6VnzyYYOa4GHELvTxiUe/prlPLmM4ML4S9Ne1ZWzOjNoOhsKsE8BjaUUXDjwQ1NqZDuUNBzLW0fDQl5Y75NbMMeDrqEuanRwMKq3Sbt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKmJfig9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKmJfig9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1CCC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750048193;
	bh=7nr06s053JyF2GRTndhyRx5/W7K7Du9+kO55vIktNAA=;
	h=To:Subject:From:Date:From;
	b=XKmJfig9n/umyrmPfWwRS2GQ0Kmbid0e6q1NsvVnYGFY8SkOR/jFTDgOc/6dtO9Ym
	 RrHksVN6CA83m5Re4sHiHRIMsgc3Bq+IVAE5QglviWwwUz26WYULMVxfuG78O9+USg
	 O4lHbhd9j12G1nER2N7SKNMz4KCDpTZyi2Mznytibeu8MUaIxSeADtfRMIDwoXYgLg
	 xMmo9uuxzoOrjS73Qy5JTGpvsrQVBZRSwQcX+lytkO8r9p6R6YQLrE46GSuBCDIFSK
	 z6o9+F1i2JsXfu9IE+ofN+Py3vKkU/4kXHwN1rZxV0WbE1EjBxgYN0qX3uxzpV1qwu
	 w7UfYqFvckHJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9729AC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004819360.13764.6469689010056887699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6fd11cdc918df54ca0c15e1294fdc19e72158991b20068d93f95551629d87e
Date: Mon, 16 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750048193
