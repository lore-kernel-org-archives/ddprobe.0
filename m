Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33464186A
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760317794; cv=none; b=TCnkBHm9HqPfKPlDBpdNH+15vEC8vMCklI7RcgUCFVlfCZ9wkt2Rdrsxb+wHb6hqxUe/q82kpcty8rrJ4dwxdpZldG0oOtaTyioR5RgAn058owDKXfau2FpTNFfKT5hrGDmE8CSz+QjFl4Fnn7ams/z6YzCZTljLSJTrYrh0xbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760317794; c=relaxed/simple;
	bh=klZiNM6CHtRi706UtmPFKGakFj49hrqO/57QjJuTUds=;
	h=To:Subject:From:Message-Id:Date; b=cTCtCNNbAFAiP3FTOHp+oiZaisF9glf33kY84TypQN6J0+wkQpQmykYiuc28mliyaGoprBQmpL8APDbfTOFvPNZ8FmKGqeOC3VLLThybHVTk+s/cPHwoNlnWXfQdLm5LTln/33FArHlqBOnkxDUmsxN4AXG8uxZ+uwVzfl8/Xic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSX9NeVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSX9NeVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08D0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760317793;
	bh=klZiNM6CHtRi706UtmPFKGakFj49hrqO/57QjJuTUds=;
	h=To:Subject:From:Date:From;
	b=bSX9NeVlvbnWpFCYyvkW2IH1yAcKLkDk7ktsau5zyCQYamxv++zN2Nl2oltAFEEjz
	 FZ0RNh4mSGE80XMBgZPcurb5fxJ1fS86dl5w4ZOvuZffVcglrb0YV4G3D9gjwaBwQS
	 ssn6YnY2bPzAVDKOPdwOAh/9Kyk2IcamZvfixZhWfKUX/O14yw4XXcIFoRLJ+TpagD
	 qDt5nJflRrXiI/psbQbqX8n4RQyXBkEJ9ZJx02c3SyxazeefcGA14QkxK7yDex9gVq
	 08YWSOny9mCKQtTS9WA1ANzKOe1SPPL4O1oBb/LF553kfZMXFKznyzItskiuExgmtI
	 2esswNbNu4dww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922C0CCD184
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176031779357.23095.4212709371485157055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e337e3d33bd7f50c4a703446a783f45c88cef60a1f393a45756ad2a37a6df8c
Date: Mon, 13 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760317793
