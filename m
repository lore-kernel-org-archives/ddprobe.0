Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D8C1A3179
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768712633; cv=none; b=anC+eZ11EHJHcdRs0I0zyVMHWiRceFzTKsaptyzYWZ91xanjJJ6IGHpxW5aD30F8jGE8PQOZSyn5YHB+WLfNHdIYvFTsPN7+4YeC5D+cnTYTQ28KOU/r8xQVSGIvfFvMHSktytTQitsRLGj5EJcG31Lw1pfcgQd9deKDjks7pRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768712633; c=relaxed/simple;
	bh=pYwZdnibfqWVbALkX+ebmcrs14w8tdjgc6SIY/KTikQ=;
	h=To:Subject:From:Message-Id:Date; b=Mf3pRhFLw4BkmXpf/yL85AkJVfyP4WyRa2YpwpHtt0k/U34vSHrPDNzbcHxpgOYHrn+em5sTHnEpbNmJsx8lj7gd1bi1qJ24oKztqzK4dijEethq3seuRhOmluhnmmMgitkG5VZaxm8wrIFY1y5uknq0IrpOmVRPKn0YP77zbyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiKKgBPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiKKgBPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E11C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768712633;
	bh=pYwZdnibfqWVbALkX+ebmcrs14w8tdjgc6SIY/KTikQ=;
	h=To:Subject:From:Date:From;
	b=LiKKgBPTJ6OP15R6qUzu3wdjGQumNkU9aPTBhs91SzqZNmOarVy7wJ9gocVaR4xsv
	 FBz5i9Cv+fay5rnw3YqJUohgUkYMPED9HUcXpit19SOCcQpxXN8m3fM7bQniViNAGF
	 sek+rWd7y7+IzSfDzttkqBdWPKYN7xTHlTlyV/UeH7JvmQjvse1xDtYl2+KBDuvWBZ
	 FUjpasQ9efEiwPZfWsvqo3+YKDlRPyf6VG2XQVcXCA3tUn05yede8B6diKY4zgPcJ6
	 SirHvOK4twxb89c39/4lO8C6Bx8olvZI39Ukt0pf3izgBCF/fzcx6vrmfBwz+00Yab
	 MCsXv8ntm8qCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92294D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871263357.15817.4452885807491300157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87625bec9d0c331d41b06e1c9f3986069a6ac88e41e901786a269f28d2cfa729
Date: Sun, 18 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768712633
