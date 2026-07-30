Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5967200110
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785391234; cv=none; b=mPjGPbRH2eAsZr1gUhlt4gl7/DczujILMfNWU1ga4Lcs/fZwqS+s1uxoitm6z2SdISznLhV0IRZ9DV0HMHxPwQMPYgDclCx+Zw9FMXcdRoSDtXRjbyJth8ehzGyuA3uVdeZy0H1Wirg4xh58Ahqb+p9Nmx0rcBpb7C6rEmRm8rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785391234; c=relaxed/simple;
	bh=EYiMdcZfOqRzdOjCOLZL1uvdTPvUHTeTgp3Zy5b9DfM=;
	h=To:Subject:From:Message-Id:Date; b=Aak6pQIa3Vzwdq2bIuk40M2zL6SESjdVpUiTr/LddKvy4An7wYD9dyFDgV+tr9/r8/RLun07gyx+3KJiuGzn3yJcKiXiS1whK1McQQPyMwG5mKgllJv0ICQP+jaG9rY8z0qwtVDQWk9nM7Wbe2ompHTbIc49gidtTHmI3VG3nL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pozUdMyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pozUdMyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D5AC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785391233;
	bh=EYiMdcZfOqRzdOjCOLZL1uvdTPvUHTeTgp3Zy5b9DfM=;
	h=To:Subject:From:Date:From;
	b=pozUdMytUvDbUG4Tlrq6ySkDtHyalOzfNpbYmtcXPRjIITq6QadOrVm3TguvkpznL
	 gUVO7DJuPgMSSeQCiitg9sBt+9Pa+WTI+ZbzPx94jD+PAqIb2c2NOR/ghsbyHPk1WV
	 lTgL5/7qNAk9d0izeTsiIU10OaK6ZNrmo1JGXuBr9CeoT6l80KtlJh0WMZuIRA8PKa
	 3Kw3OHVn93GKEFlkeChMPYRB9VetKQWWRkiCCYnK+dvd6yHeXcgGW3/NF7GiBBb5GS
	 Ek0zA6UEvzIeVXwL4S+BM9Ce6WwrjnIR6I51qkhmjn84rbKqcLZ3jpEGjTSK+mU574
	 sT0nUnXijOpEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14CCC54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539123371.17565.1975065403894293173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed8f8079b1d89f4c97fd61ff2f621e4bb4a55c543233769eb2d06538571d8a2
Date: Thu, 30 Jul 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785391233
