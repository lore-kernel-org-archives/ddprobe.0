Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E01F136E3F
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717440323; cv=none; b=n4XG3zV/1jkg7e13lGqrwbeHZXkPRCsrTGjPOzak+TaM0AsBagb7tgiKJGpfS2c/W3hRsUpbAmiwWokCDThu+wkiA7aZuuiZRN8rKJKnT1mgZ1Z1iXM6ELzNTb/nKOfOoU5RopfiBWrECvtTMbKX4lH8sw6Yqzo0TEPUX2zWnas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717440323; c=relaxed/simple;
	bh=PXXKcFOy+iLCBGg11igD0yUISu2vac1LZP99JcUaBBQ=;
	h=To:Subject:From:Message-Id:Date; b=Gj+oW+yA8qpkv776WF3NsR/uQ39PWj8bHWe7hqJRuEJeXgumG8E1FJICIqZncFq3kc52jP7YVrWwF64eul384efCkkAu9UA2gCPv5EhMXSqvoRhccjnjbzgN7rz9aKtGsQ1PDNiaoJnf3Jye/OFFTYo/bUtjE2DdCjf9Otpr/MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=em6cOblS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="em6cOblS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC55C32786
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717440322;
	bh=PXXKcFOy+iLCBGg11igD0yUISu2vac1LZP99JcUaBBQ=;
	h=To:Subject:From:Date:From;
	b=em6cOblSsl9ByW3j6DHDjwicWfhzvoKomcsqDWT86oEhQSQxtE79qMi/OIc0SAKS7
	 W5r9L5j7DIuX0kEAvG5pPneExDfBVvmVwJ6SvSykxtBJ3pi90zyzNpoZfEaVEhNkI4
	 A4M+YN/CLgkXyzmhvtNmoPsR5qY8h/CwH2/ssCJjJwD6r4Tc6Ng4T5+mrCxq1eHH+L
	 RPIJRmRqR+WmNZMJ7FYMaIE61tvAfnqOxnwhm46kkCcbpHjrOv6lXvZMPUix3GitHb
	 Jx6LKh+JagbcM5iSC0dp8Sc4bguR5lShzE527e7V9/7EKkayy/j7c1JLivvZF/NT4a
	 mBUPV/hLivDhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD441C25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 18:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744032276.26053.2428037935156309203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0636ceed5aa5a96f5520c9483158b99f7b59f214ae2861ebabd632cf27d9dbf
Date: Mon, 03 Jun 2024 18:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717440322
