Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A34337A839
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790408434; cv=none; b=FGk8mHf457BACYv7EcWxaOrAR20YOz9nOHcMPQfis1b/P9Ap4bJey6QktC3oBx9qAN92zrMkMf/zJ5Hg5mOO7Lbk9Y+s1L9qQXVAGm7kcVFceoIt5wwz2zERSasiqKwUMA2BKKC7pOVW0iSateAV6UIt+ZxGHJSM8PnTfXjaULs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790408434; c=relaxed/simple;
	bh=0KB4zCvHFfJSus9mYRf2PKlTYCrqq62K+KjeBGpfcqk=;
	h=To:Subject:From:Message-Id:Date; b=OPPEfOT2qvzRG+Kq6jkYDesKz2JTp32NvJ8Zv9KqwRYMhb5w1FllAZDXrWDzAKxwq36/lXnGikxzjSzfoIhf5O8qEC2SGxfFBLwobouVJesKqxZFdZWoXUe4623c69D3qLg59N3J0QLnMD0rWiCpidALZlUK+1Jo6GL+Spt+AJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrkI5wxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrkI5wxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF33C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790408433;
	bh=0KB4zCvHFfJSus9mYRf2PKlTYCrqq62K+KjeBGpfcqk=;
	h=To:Subject:From:Date:From;
	b=XrkI5wxk8rOHyPshSrFIv6FGcEyJ/6RJyLFSwhpTxDEqWGQkgGVUfgesWS67QeUTr
	 pA/+I2Fc6BlOM4uxqsXtpu/fpIcpodXjdbzHgYc1HdZe3cKfm6s6AJh1Ib3dr1b/YD
	 o0OgjOCzw1ziSXQv58GD4Rdunr9Ghs8+LZYMGslrhrf8IiAiWfjEC6jzhJutZ92Tvb
	 Kf/d0xu63HnL7UeWQ7Yu7qKRLS9gi6sjJ4F5eHqfaOtwmZVl7FoUJwkNX9BDDOhri7
	 3yn2pRLiMkiQ62G6NOKsAcpRNVqzIgaeqVZO0kQJx5RtmBLnXHjgqmC69Rc4ejx4R+
	 yln6PZ0nnsqIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA63CC98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040843368.5067.10604466186364301985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376f45672919fb14b1e33a713a92963ec1c8098224f47279dac3e24af6354c17
Date: Sat, 26 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790408433
