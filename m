Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425962857CC
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783913314; cv=none; b=B7gsBvFkdl/amECnOp2O6NgoWPdTa8dX033GvTTDlgHDGddAGIAHjta8t50y88vP8ozOzG9kXhGr5yIEP/ddp8Q9abBv1off9drDoNqfHGgT97A3AZlOKsu/8uC/JXXtXis41vQYD8vhSMfeTVZmf1hhfUyF54L9eiLmeo/skmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783913314; c=relaxed/simple;
	bh=xucbKCn+XnuF7yK8PFAIanatHk8+u3T+WEEezQ3L3PM=;
	h=To:Subject:From:Message-Id:Date; b=D/5FhxSFfGM2vmmQoPI48DHkh7OrQvOc8DhgeW2mc2NtpNofx8ztyAXmJnqKs2V+WDa3Mej2Ev2Ol2VoXT++50XA0dvCMXECDKQMmT7VZK6mcSWJBKC2AbmYPQWS6CQ7MG8g42a7S9TmueteDhAWYMe/J/LUp+pBkqqi+6EoSxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ML6hGu4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ML6hGu4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF18C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783913313;
	bh=xucbKCn+XnuF7yK8PFAIanatHk8+u3T+WEEezQ3L3PM=;
	h=To:Subject:From:Date:From;
	b=ML6hGu4fh4IibxhZJ3IxVyurWEfTbUwPDxsIcqhTZiPMCqyfMUK9NUMg9WWOxmWSK
	 VwTnAu+CXgrSUxGHSTPfPE5H1GkntHGH6NmpwU9jIARSfVKUgxuHBN3dKM3MnuOM/v
	 qawczVKd0hQfuD/IRXT0EWXWsveabu+U94KpSWqDRr57UfVLWW2XHmlky0d1hv6/0e
	 uotcxV9mpj4Z9s+MjSvDosTmY9MNSGJNprvk19qKDGvcXeq0E7kVD31hglIUOm2HDD
	 O9/4Fcu+xA5g3/eyUS5kDzPkcngsrsPVDXfPhGtBpylzJzZut6i7/KR9wOxJFmvcJx
	 XbHJQmh4UfcxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A90C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391331368.13780.287387097523855105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d5c01665558049da2a03758e9dbd66a4c81ce1b1da275c5b86babc3a2ec482
Date: Mon, 13 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783913313
