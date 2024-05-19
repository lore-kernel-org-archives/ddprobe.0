Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEB233D5
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 11:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716116543; cv=none; b=Zn7kntm0fBMj8o6hX9RDYhnpSiWPYT51ulHN1+CB2nwvYbCA30rJCJLSGEF+um4hf6WK3UHqVRtOBVjLtB+szuOBjGb2JXp2WpU5ti+taEytuzg5C8IQx5oFJo9ZR5SLtviAkExnBqzK3+LSMfLFm8vEh502GQEe75S+6a/f2LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716116543; c=relaxed/simple;
	bh=kh2O9phW6OVXV4gOLLU3fEIWS8Zqu/xf4m/i5071sgU=;
	h=To:Subject:From:Message-Id:Date; b=jnhp6SYQ3Mj6WOUtIfQVzfuFE3vw0nw1Xg5t+ZUBzZIoXeetU+NU9eQGsAYAn56tQDwHjad3D+Ej0HJQ+cwRA37h/3tnDySpKluuz0C5oXz/+uCT1hNseafsmg1VFY1CTEk9IuQqhYz8E4IWjThyvHIPPjX5fDnaBp3/24QeOCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAfErgH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAfErgH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBCB8C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716116543;
	bh=kh2O9phW6OVXV4gOLLU3fEIWS8Zqu/xf4m/i5071sgU=;
	h=To:Subject:From:Date:From;
	b=dAfErgH6W8q52HoQT3rzqY2+NPsfINiNwnAQhF2aSJlBFoRGzYmnBAlUJRtU/Rhcl
	 +9F79+M+QZV8IBRsGh5qG8TNmW+ckizry5a7UC9Oqb2XMCB+YDSNdTOhkqqDem5E/3
	 FUuYkn8LC/ptS6F/SQnzyTcCrCBy4e0cHBtaafov6pLxBtLTWhRvTeo7sRjrmPVzE/
	 LM7MBdz2UfmY3bIsZlQqQ8Tjv0Si5Ogx3xY7lm3Kfj3ncJg6KK53rnoNp6thxmrE3y
	 usEjhLGIaVYzZ1KkRMDPhQ5fOdycdthtc0heC6UpPeNXtlxvkXivJTrMxFoJBUAh1z
	 uueDLfV2KTl3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD9F8C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171611654281.31327.18349370606951321125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b4a70b974e21af116ab8ebe33e7b51de83e83bf7c76b512bade139c28e21dc
Date: Sun, 19 May 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716116542
