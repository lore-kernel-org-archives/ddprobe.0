Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C6714BF85
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 10:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714731143; cv=none; b=uQ3g/eZY0RLlfHXYeSrrwPxOS9qEEUCn4TIOogcd986GoKi03WlGdy7kZ7trtiSkXlwSZNTwkfiNvmdocXaSbsD9rHFGTHqdM68B1IduLP3bSlovZxOmVZg9lXaiQ9ov2OXGI56zD1M8UQKJTSMGJcA5ZeeEtqBYfM5hRqAC20Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714731143; c=relaxed/simple;
	bh=npGnrM5ogR1ss8c1uiNnUMLcYGqDaEYvPtd+lcNFFZs=;
	h=To:Subject:From:Message-Id:Date; b=f5GlmDfTvP9J1lJFZwJL7sO7QcEIylwrcgTCiJ6/3KsL/S0YX8YYcOA43zGSz864Fy6FujDW0N2ffG2wW89k22lzkbbM3TGwZstcC8jF3tjpb00rXRsSQPBrijwqSGSjWwLQwj361/oiv8Pa9OkkOxZ9irYnfVKYhwK6ydviiVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSyGsUZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSyGsUZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CB1C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714731142;
	bh=npGnrM5ogR1ss8c1uiNnUMLcYGqDaEYvPtd+lcNFFZs=;
	h=To:Subject:From:Date:From;
	b=tSyGsUZ7hPadOAwrLToUl3qj2olVDiuRYiOCKfqHUB2y8JUOyCCuDTp+KC/OBlxai
	 5gvcHNUL7EFyAtYIPbiUgQSz2tHtygNmxmO/JJ/x/w9TpfwZiSX7MmUFeZSbBiP3tG
	 ftuLkettVDgcjVZ+MLYqWBzpvmhlbEIlpGv7LwXBtYKUaQYerOCTewM8Jnjc8OIxGp
	 UprzQ5kErgvG0JBBZUBzERgh6jOFRJOIsUiNf31HNlDUdnYKhp3mq0Wr+MzLUKQGOv
	 pVUlML45GooQhRRhD8mwGTNJTfYxyyGsVLxEd749uZDWozZ/on2jk+lPol35w6zNZf
	 yGLL1e0m/Ny0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC33DC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171473114282.25705.4277453059836522628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e49fe4277be8ddd88eb3b08e7314d24ad18f7fcad1185371ae1407b4c351fb
Date: Fri, 03 May 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714731142
