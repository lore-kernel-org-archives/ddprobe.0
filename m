Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFBA73451
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716828263; cv=none; b=sxmDohjeKnL+oxL/5xXc3AzQJ5ghP3+22H2P3AtTk7POtujhYYdXO5NSw+xa9pGFLgnTgM14LKm3yudt0Lb+UPpV2T3GCaBNWoZMP1UQaf4vEMrz7Pn4e4nrwTk23bfWYbYMyOyBclkcP8zziTuD/XuzQ82KPbyGev1Q7bAmKDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716828263; c=relaxed/simple;
	bh=yHzTxAlE9gCv39Awn4/z5DtSLQecQF4eII/c+9WiSUI=;
	h=To:Subject:From:Message-Id:Date; b=Olh57bZk9Jy3PasdK+Jz703ETuZMZu+AED506E7QV49acVoaex6qqP3Sp/nFypL8LzAfbMMJT963u9fl2JaTEhUZ+tgTNFyPaQiDxHu11vXTxKkk6+RHTAW0wOdMfq3NFw2a+fV1FZiIgwYckKgPehGO9gYDvB8u7580w/GXXic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFz4ewJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFz4ewJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E78C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716828262;
	bh=yHzTxAlE9gCv39Awn4/z5DtSLQecQF4eII/c+9WiSUI=;
	h=To:Subject:From:Date:From;
	b=MFz4ewJFhXKZdhwGZDFuRxqf4di9bQhsh3UAoozZaoDMj2V6UNEm5onMKzgGDHtQw
	 O0NBWH6MIAAyGodMU5rXGr6jMzO/69HzK9mkjgogrgI9TXSXI7lZVTCzor+x8rBN3L
	 Z7KebXa/HdV+YZ/4g5Me3WKvDxOlWogkCtAACnCbbjlPNzfVef/+rSOjh5NFttsIAy
	 stwzjDho0fYnXEX//f1fe28Gn+EUMqSMQvSL4DSRuHJGo6p35hKSlGFNTPTBwqySR2
	 pzALiMwvhmK2nJtebDdHnwyVhob4Kn6Gx0yuFJHaEa+RAkHLEsoB9doKJXY0NNcG5E
	 PTYniH7ulVLVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3500C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 16:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682826278.13077.16554644150010548459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237c2dde3edc909d4826d2cfc0e80c514e9fe6bf26bbdf8523c94b906210c5db
Date: Mon, 27 May 2024 16:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716828262
