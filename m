Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0015C1F936
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769925234; cv=none; b=D6uLrt+aCkzxPFAYTMh9yQ4RKHP+1d+wmBRAfI9rrOKL8ww1NgAnT0BK4dW4rBI28ZugT7XEAYQh3J6a3f9lpMKHfI06OCD46wybIQh22B2FeUOj+88TXK68C3MYxQ3pDpEi/kR3VlEQ7BG53kP2JipaXB68voEsJQo4iZWulSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769925234; c=relaxed/simple;
	bh=Wms2ZXSfZs40fdfTJf8LsxgBkuFv9jkLYNNe/HiOWbw=;
	h=To:Subject:From:Message-Id:Date; b=ROG0acma7oLGuZrQyHp3sj7mxv+52GLf2GZItUrY4qBa+jMz8/16Xe2U6QBrifxStY0f1Nsoyo5HBPeH5JTtK1N35iG9HgKRl0G4aHSAHnevUECVm0oezih+2HJ9ERN2mEKnZtfA9o1HChYYzKWrY+SkrjBVsWZ3j8ABsroSGSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTurouTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTurouTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2172C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769925233;
	bh=Wms2ZXSfZs40fdfTJf8LsxgBkuFv9jkLYNNe/HiOWbw=;
	h=To:Subject:From:Date:From;
	b=oTurouTAah4IfK5TVasEF7s2bfPijgGlADuoTnHVLzXpiQ4hw1YINS0JicxApS3p0
	 H0pjogkwdFpbL2Yvq4cT7psu9Fb+/Xv/eq0/FvDCEfVziZ2TUTrrCRsOMqP4KYe8KC
	 IUjTJVgYifzZJTm3JCtRHiQBUQWcdixrp7SUmo26koR4cTNnBYELsKEMzmOHH3y/bo
	 PdRucpe+LahKw6e7jW+3AU6EVUMOWfgOtz1vq18S1b8HkY/6C+6xzUKeXltD0Lt5Go
	 QDB88NnAVqWvIvty/HW+I3ynFLOP9w0zrJTcZcBsysD5+BpgBR8PRFx0hY+t7Ngchn
	 7oXWATXibnKXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94541E7C710
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992523357.8317.1645937756855843695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167800ab138732464baf1ef0314908c4853821883a2479cc9e989e25bcbcbd4a
Date: Sun, 01 Feb 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769925233
