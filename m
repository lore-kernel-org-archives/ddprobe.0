Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCEA15444E
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731537354; cv=none; b=XQ74Lvbh9ZhxhizqKhiAo6NkRfcwAwnNNEOdAIG51U6LB8J8BDvWTDLLQ5yd8pGbk2IQaW2iXfD8t7kgft7tkBJt/gOdKkAj5JLQUcslvnkTAZxMiDB3hO7Um2za7C3SYtlt4RVSMefWpIKFqPe1BorwmDwDS/te6FJNvz7MKyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731537354; c=relaxed/simple;
	bh=AcO5Ud9eIByNeZFt7J6NAmdLgxJHsyZeNAH/bBdCcD0=;
	h=To:Subject:From:Message-Id:Date; b=huWXzj9LJN2m37RfJC2FegA1Y9BdTATz+u+x7iZ+oJjRmSic/4bRs/AAxd4MnN3pzihi59bQCA1UId78I1tqVbn5Q7xkjvPfrh+dYqildYXDAdynLou7lM1Ji2G9ehiPF0CHRLHAeS2DkG4hARm+6Arp4VHHthla/Lml9mocyN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7Llg6WF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7Llg6WF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1672C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731537353;
	bh=AcO5Ud9eIByNeZFt7J6NAmdLgxJHsyZeNAH/bBdCcD0=;
	h=To:Subject:From:Date:From;
	b=F7Llg6WFAxr/xWwUQc/KkM8/B40W+453z5y8Pr2jReLOF3EZ4OgnzXjXnO+F4GRti
	 bpE/HUjmKtMmBKOk0dcBEAMkR7vFIkeem+KEfoWuIkzmis6pK5mRaEQEAkdZ6SJdyg
	 /KDwEnqdKzEkwqV7BcDa0NTatf4r7f59r1VsvfFu7mxrVC2doK2lYgoOd6S5OY6tE0
	 K8o9BpTXXSvadR/qtsEq6bHW4E7ix8j0k4O5hj0q7ATLq1nF9tEgO/KbU4+Rsi+y8w
	 lIZNEbNgybYzmjdgjvN3LF+7mIkIEX+L0QTGh/CasvEhHvysVeE6ImGF1KImFmjNwU
	 +AsYAtgUasADg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92750D637CF
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173153735359.8561.17935850683665435982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7716a741c70c9d137156df40475340532c23cfbb2c7fd671ad8cad3464a607
Date: Wed, 13 Nov 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731537353
