Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1243090D7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775454934; cv=none; b=SHtR6+kow+cNpJQyBWXsx0IJYQx+25/qpo3wLvc3qqGDlYh369xmgMCf4TbnH7QzmgdDyM8HXJpXa7nDg33RvYWp8nN8A8hS3Bu02Z1AGYGJ2V4U5vkzo+7gKXI7yWQxndO+3pg27CuXA8hDe+uwtGDEFh2gpFgzhIclIAjYNhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775454934; c=relaxed/simple;
	bh=tPh1HxCE7Vp4/wMXAvtclAqunNDuV4/BeBYveizcq6A=;
	h=To:Subject:From:Message-Id:Date; b=C0OHwy42xuDCQ/OO6KMXbh6r0/qZUYTU5wGCauuZ/Kkc5Wt9W2gkjkVeVX/TIzboObsosJkrX/1byTdPJ3lSPS5ZzF2TCoLj1cJ9I1P6yTUH+J5ixwOmRw/BYFKu/E4UoGewQy3100mn+HnpW4AysyzbzSHsm57SVJaYW9kcaK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2BUy8OY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2BUy8OY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2764C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775454933;
	bh=tPh1HxCE7Vp4/wMXAvtclAqunNDuV4/BeBYveizcq6A=;
	h=To:Subject:From:Date:From;
	b=i2BUy8OYjmZReAusnQ21vZYRCv1MbO4rdayoKXeT3Sf/cFspoRkyMPZCF+RHC8wPG
	 D0kteFYxroeOW6kmB3MotMRWBxVSwmqZxcDlhYUhxmPyOg16z3kLEss37qINZWbaz7
	 J210wG1XLciaxTNX3UiYjI2KFz8ZQNr8BPfAH9Q6HLuCxrTflfeBPOAZ+Px9/Roie7
	 jWmEHu5Dbqsa1Bmuhv/YQRJkm+FFn7mwzwXBM+71prZsSC21FCw8M7JB32yct2VTDr
	 Ke0wLSmjf2zHj6ehX4bYBhFfVPF4j26MMuTbuxnmjA44Cx80Y9XZADug3IjdPGaZXp
	 sdHh2dLQFBhPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BE6E9D83B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 05:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545493368.9004.10740736651323726075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c337b6fc57c3db20c9573bf0e0fe1d7a219752a929f64130e65d33f02d5b7a
Date: Mon, 06 Apr 2026 05:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775454933
