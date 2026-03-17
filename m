Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55E236F409
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773744893; cv=none; b=oix585L8CMVMIMsFUKt4aBG4V6ndSEgwLIeS+xsFVAJHtBbO4YihWOGWcViBMm0s/Hdw2FoCk+gM5TqTiOoQlOhLFZjHYHMuGD4VIsUTKSvAWyMbsAQRs9zSww2VXECYWrlYOexx56GBXEF+Ql5rWvym8BqC8YeTRG1j6PLJGjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773744893; c=relaxed/simple;
	bh=sqIH1VY+wkhzeRoCFmfa6JHqL4mFpfTuWZ4SMbkzbHc=;
	h=To:Subject:From:Message-Id:Date; b=TwfYTNBhiv2XEIXDfDYSql8wwkpxwFfHHrVI3h+ygKazNkoLu5j/1x99CPCgMUx9NwTq24hcvJ+UugbDb8JHBLRUK4EfUU1AUQPT16bS0LlwmagnAM8r8aJ1MH6tDb3wJj20IlI3u4gPt1x7tZwDxjdRZ2zdfjZtlM5JjN6ZYlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3cdKOxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3cdKOxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15A6C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773744893;
	bh=sqIH1VY+wkhzeRoCFmfa6JHqL4mFpfTuWZ4SMbkzbHc=;
	h=To:Subject:From:Date:From;
	b=r3cdKOxNFlz6YEpUgwEDKcqDUBXThxaRnuXa1YL3jb1hZN4ebrEtq6cqTxJBXaUia
	 JwXvXJPAuCHPG9F7JgJxU81hzPIPTnZGalfTsOumjyY7u9DqMZxcu3bigFtKLgjpBZ
	 CoOlFU5JW96MMfLaFegN8u4iNxT08GVQiqorCB6XbMhkiTyp2iPr5ZnwNidig9pD4l
	 zcZv0Ftuw/vDPnBMFRbrZ/sema1PRIBav+3DB2ASn9IBqT57sDj9ZZi3fIdGUackK2
	 xjzFs87t8dGTMK1ItuRlJWERGV7d5Oo5OGSdnwey5XEoviLJ11J49mlPDoZNPkx7wp
	 CXWdSAdrmNKiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E0FFD7075
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374489357.18455.345404032245743959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738f1ca5523fbc95a3fcc867745a70f1e18e9190637709ea72429d86e4f65030
Date: Tue, 17 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773744893
