Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B0F3DDDA0
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782321454; cv=none; b=hzjfx/1xYO4sBk5HK18FPOubG87saVnit0EmtnTsx3sSYzcioEt23uE3C618TbstGZEtPrkyHwlQBbiR6d4aWm9uwUs3ytcCXWvxSwoGtoc2VSPgcwA1QE0je5CxKkjHUZPvFpR3MuxC9yTbs78p8uDQaZIDJo3ZstAE4WZJMQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782321454; c=relaxed/simple;
	bh=PlJSAq564vgi0utXkVBnN9x/whejst7aJi3c0+/QThM=;
	h=To:Subject:From:Message-Id:Date; b=BL4RDZ8kXFjxDcpCmCrXonJuURqC9EyeE2K7tl8kSR8c4kmGWPPix80OYfcI4/OQiWEt4nX/hFkn7tkQHbPkCX6384WzVoU6Hw2bN1ofTUd/pQ9SAZ+abvjxk6fugGiZvL/NT28W/JGTjYMvsAzuEuNH2diXHi6wPzk1cqHMiM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+L4nk7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+L4nk7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6500C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782321453;
	bh=PlJSAq564vgi0utXkVBnN9x/whejst7aJi3c0+/QThM=;
	h=To:Subject:From:Date:From;
	b=p+L4nk7fcPnMqdjsyCbpxMUBfWmzR5TiFSETHjFnfciegDTyW+E9VuW5g9bmsLAmb
	 MY8bI0m0FdE4lle7JkDoWUR58eCtBrXT0mTsbXzFAqkpXy8nzpZ7WmG4kTMZ0BvhGy
	 UTa9JjP2nRkcjgx2taov02NO6VkT2jyzxsXlYELMs2ZKbM4aqWhk6KdLU/1dXDeIyp
	 uGY2j+YWDQbk7KodcLZ27W/30Xh0dipsJIRNdCAftSk4jhREygHMuvTpGTJQsxmaAB
	 xiHzxPkwOU+FTW0vqFoCxu5C9rqddifJcWqrcCk6wbO44Kk+QTcIESDaJ25h0ib+VF
	 LE+9BG3oLFaQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F1ACDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232145373.32534.14377405273932950421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610a43d7d2ba4314788c46b040acb39a51505279a254a43bf370ca7ea6d8b44e
Date: Wed, 24 Jun 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782321453
