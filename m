Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4538D1E9905
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745155794; cv=none; b=KpztS7rCqvfjic5AErEFszc3tKKRvpZTum6ioiUgGtR9PYS6NQVPXl82UZ6v01KFMRCyRlw0s2/M2tla360qOJ3sq37QiU4+rc2IV07cystoKqlS+V6tigLz3VJFpDzuRbdguxxSE83MZwGWtHrGQJWni7iTMXnTBfFmd5O1aFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745155794; c=relaxed/simple;
	bh=+eafBcWFPnbyJKMUWNEBzKMoUgmPB5FHxvK4ux5i9NM=;
	h=To:Subject:From:Message-Id:Date; b=DjjGaIS7AH65sMaSNIiHebvCV/KRuKo6Hd9Rfqj2CjomlH07Jf2Lg2VxhNibOZ+TZyJvqXapqOywvPSxC1jdkPeX4460Tft34UgAXxeP9RXX13VUPMPns0TtvtUnf7nlNeyLp2+eeXMGQ3kTq3XtsHMxYGDR2NLOg11/uC1UL10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7QL0zsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7QL0zsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C59C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745155793;
	bh=+eafBcWFPnbyJKMUWNEBzKMoUgmPB5FHxvK4ux5i9NM=;
	h=To:Subject:From:Date:From;
	b=a7QL0zsKeY9iOxnLNE+bc8II3bDzBKumEIP+wP60qrtVZjC5lBhjGiCVpsxQotiiY
	 ss3LhuarjJ+dnYqgfZWw6WeLWgibprJbXTrScHi8ioVeRuA5PHGtq8o1QtD+nfU/59
	 kz2WzR1MLbk4IUTUx4T4jD0Naw0yx8xTcvYUjmLBTnkcPUHFn5m5SKt9+ciPeFWZ6o
	 /jxGPrxXgIqP/H/FIrKNkx3P8QqMUzLW0PzrEPwXKj1vOu7TlXD9Sx53QaF/VAvYFQ
	 SVM1VlEjWCgCmx5oMnDJ9BrR+ii8M0kP2gzjvIGhfLecM8oZXb16t1F6VakuQdnBme
	 QzJfv7flEXryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BB4C369CF
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515579363.20729.6004893550165101623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9ea17382bad188fb6a4bb83688a668a458523b0b6b357326d648e1b7fd002c8
Date: Sun, 20 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745155793
