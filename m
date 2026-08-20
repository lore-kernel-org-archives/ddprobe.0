Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BE447ACDA
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787241634; cv=none; b=ZUbZxa9WgHl2WGxqg2eNaQxlMLFjTbVdv4zyh6OUfEOvfsZl3Mc5wXHOgiORw2D84Ch0zSU5iej+kPcqMGAIIbWLd4jJWb5Prwb8PQJ5e8gL4klWZMwduD/LwOzviFY4sIaTLmLy++riSmEAgwlL8BMWKRiRcL6+MaTQxm+9i2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787241634; c=relaxed/simple;
	bh=sdtsCKGntF0+USGsM5DWQ+KkPmBOKDpwj7sf92Y/znI=;
	h=To:Subject:From:Message-Id:Date; b=FMvdEu9sFsYWCH4dW1fKtlV92yJnkl0Jb3Srzp99Ln5036FTAVCZvJYQrRxl55cxfJk21OjxfUj0AtimntXcKoZOv/s5hge2rjmIJdiP4iv4jBkB36CvEat4p1e969kxMJeck/sojkTSF7JI4I01YwpEvgt5077Ob8TLAjT2YSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcoWO/8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcoWO/8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E71E7C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787241633;
	bh=sdtsCKGntF0+USGsM5DWQ+KkPmBOKDpwj7sf92Y/znI=;
	h=To:Subject:From:Date:From;
	b=VcoWO/8iAsUrDvLdVtqitYNe0kyxcO6gGiBDsKgyupliUE/i0KoiuO0ZPaPAg9KFC
	 80gwQFunoW62+6W/l6NvUv3urrA5vt1JpCeU7klRJ9rjyRx5hbYUgb4xAjZgpVrrEL
	 UkwWQtyYN/moG03k7JpszDYr0SQi0DwD1CtnaX2666QltXUQZu5cJeWu5O0xvPnjpi
	 htQQfxEK9zn0MVXGjOvFAQ+KlUuy4ONhujlg4d+RFvVmH00hpicHq8rYz8nNxXPLFb
	 47aV0mGFzF37N08BbFb94cbBR3eq/tGjWssWyw4rLzYnILnhVyGzWI4++ljAiUwobE
	 0M2fgqRroiceg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7FBC5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724163376.13787.14911395326665471879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706d86da0206e5001a006872d7f7722a798a217d6d66041a7ce8789550df529a
Date: Thu, 20 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787241633
