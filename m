Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BD17FD
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721625954; cv=none; b=iFKhx5vZRIZGY/w1jLUxAWhqzm6VBMMjChPko0wyvi6sMHGdLaDdPeaxyOgiZfk4ht8nRhgHm7FZ19eb2QEbrfUZLrWaJfJqZBFiLnWwOjjGicyKSQ7Ra2u07A9EFDq5u4CtrM7/Q4BHyB2XiI1DvwrocM87rPGAyBORjX0Fstg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721625954; c=relaxed/simple;
	bh=l219Vff8Dx6snG1FlTm31VEsqa1oOJTa0lOrPezEOII=;
	h=To:Subject:From:Message-Id:Date; b=ObQ1XGZyYj0aJN45K6YLFe6+yZFHkCqpA4fX68wjXU/pFWnz1uz5LnO1D6CLIuHoFUHyy0w7ah12gB7B3LYOdrYHItU1GJHhptWoepRd92hRVBRCVGvMuMdhec6JiqaeqMxILq1gCoH5r1usNdt/17sfBMylIZq8oyRtS7EaPR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=td49iPts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="td49iPts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFF5C4AF0D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721625953;
	bh=l219Vff8Dx6snG1FlTm31VEsqa1oOJTa0lOrPezEOII=;
	h=To:Subject:From:Date:From;
	b=td49iPtsONOd83YhvNI910jC0369rg5iG5rTmlvedbChsyz2yzoj860YZYap1k4JQ
	 lbbloVL8WvYSEypxvi1UANLOlTGawvO0tLO8o0aruiq/AiA+qOJVgM+vhVh3lMF2k7
	 drvusivr8vd68EXN9TeUDHRCzABy2uwJdrAHXvyYgcmDYBWVr4jNRJmqOUmfeOmZ66
	 Ev1WOzQrPgd52qqwb9BgKjrqIbkzF1euTE1NYmf8xM6m/naN/V/dixZYBNA32dEkOf
	 jaREs2Ky+FrxIfnvcy8Y/OSiZTV2J+2yMcREyIlFXNuStXGtVZPqB+0/LACsSyqtYt
	 Rjp7c9klLGdgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974C0C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172162595358.32706.17835030053545748923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4e75e1bf0fed3e42cca55bab5028c633d648dee4d696663d4356a0236dcf09
Date: Mon, 22 Jul 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721625953
