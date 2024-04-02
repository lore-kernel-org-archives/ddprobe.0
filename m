Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8B715E5C1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712093897; cv=none; b=IYfwvgkWTCGz5B8uEmfpSr6G4GcByiCRptg3/p3YquA5X400R5PW1HnF4SAFI/MpHRuyj+wG0p160+T2GgHAxGmW4VQj/rnFizaxUMjJwmDALxSb+cndfnK1yFtkPmniL422EJvHYVs0W767LREbC91S3vNkDycD0O8K9nkllRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712093897; c=relaxed/simple;
	bh=24cao/9i5YfKPrLtuPvDZFmBJHXoqYpCNTeo63IlFbY=;
	h=To:Subject:From:Message-Id:Date; b=lMPeEcpktCNjLEpGzBcqD3Rk8kmfIFKZRwkho49kAE0SH5RRJOzYzuHYboXYvuhFE6CYKFDLnFBj/dnuLbWhVbfZOXeCK7w+xFDQWGnTU2kUXi7SOmRzTrTU/F3vkLbnKNhbtIb0OdLQS1ASAfyUtwYPx4NwlwFxcPcONGtP1VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bus/QMDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bus/QMDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF8DC433F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712093896;
	bh=24cao/9i5YfKPrLtuPvDZFmBJHXoqYpCNTeo63IlFbY=;
	h=To:Subject:From:Date:From;
	b=bus/QMDbmzOeT5eQ//cJnPEf0XR2F6u+hS5JnkXMnHVZo7xMSUOb+D/frNK3dt18H
	 bvhrEwDlVREYfRZQ/+YAKdHpv5RafG0Q4HPACx6cC2LHCAgzAWn2iJRoMi4JOG8AaH
	 JG16xgM6V84MzvJlkUt61pGYgx6+nVybsqpZTslaeNyV8UabDtP8T9sFC6pFHYbUQq
	 MxNynJe2cLF7ZKBLyeLJrEbiskhJalMKHFGyA2GWX5dBlEzEIEpq1fDRbDHXsEJcsk
	 D0FDciT+JH2x2JsgJH9DyZm1ru8FJsVnWGllAqOjZtzOXn5ANiyDBCy+Vbsbs5XMpq
	 szzlWZ0Yt6DBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B867C6FD1F
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171209389639.16659.14894951879333491040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32661c329047301c0b7561e942e79fbc6de5aacf6a70e8b61f76ca7830703596
Date: Tue, 02 Apr 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712093896
