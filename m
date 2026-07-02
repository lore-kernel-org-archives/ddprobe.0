Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5679D282F15
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782964114; cv=none; b=EVOHktq5q44e1F6hCDeNJhhJYEsJGwR/67vLgHGkeR6WJJcdmAKe6XAdQ980dSDhXypg4k+Tl9Iwijkg588+fFxLTHrMBmDl1Fh1mLVTw0dWEeDCBxf2rrhsU2czS/g4bz+nmkYKpnPQ/i4PiPDTgPnmpaUpX3euzhBsdi/qQkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782964114; c=relaxed/simple;
	bh=5yKzNAvsQb6VgaFFEBNfPDb3uTxu5dAHEE1/VYSV9Ms=;
	h=To:Subject:From:Message-Id:Date; b=mW+LrVamWyplPosxf/+ZBX3rnbMSA0ommmltTtJxKWfhuU8ImeaU/1BAYKHGfaDGTGwqC3NqG3vC1Lixa6muknbdiWOh4sHX5EEaLvJHThqaOby5dGgTErLimu4eFGZ2kFYQWbw4fPIPf0wvIkBrVSp47vF+FpdU1+TOm+Igyfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toFLTeOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toFLTeOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2528C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782964113;
	bh=5yKzNAvsQb6VgaFFEBNfPDb3uTxu5dAHEE1/VYSV9Ms=;
	h=To:Subject:From:Date:From;
	b=toFLTeOl1c0jcsUSifpKt5ZXBwvdoZm8gwy/CD4aY1T/Q+Fdz6+mHGc+v6AngUzlT
	 FZ+jcjEI/TsfTTW+zeqSCmjIDTgZLF8cD/egfmrF3WdrxzxXKj0pqtPARImPl50mCJ
	 cKm17PyqEObwHt5IDoMJpJw/NSMquKPpe1zMka50fkYY+vgBlwai2t+hqq7SmKxNrO
	 gdQnDrDpNXXbJ/doyf1igdtCn7zjPYOokGojImYM/x9DiA5GtPgckiw5e5gYFkMI2L
	 IkvsoQ38o9PSLcyeMiwVtcFcqO0zLYVqJ9ktiR9qnJEdYqeucnLThMusy4XVfsTq5d
	 zAggDjFi1OR0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DBCC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296411368.29457.2869565097019056900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf598a56b772f25c8efe892fe2d2492c26697eb788c3c0174d241977aeab39ac
Date: Thu, 02 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782964113
