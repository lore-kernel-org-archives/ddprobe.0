Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C880127FB26
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767728633; cv=none; b=KeUzgUk34N5uBnz2L2ipIO8uXvt0lLtHpleYMyNcBi3lPmn8IjLYeLJvBAgMqtgNBeL4k3nH4J0P/RhnrCDbc9Vm0vVvvMJzpsCuJneG/UUWezPsiua93JuYyQoy/qL4KcSOV6DLqCroYnDIqCtqvUUuaptOXW1ZhoZ5ltuQykQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767728633; c=relaxed/simple;
	bh=hmRieQ0TNhePYI0L1cYXGkIh/Qr9ZhzOGbtIv32Umdw=;
	h=To:Subject:From:Message-Id:Date; b=LlVI2cWdSHTB9MK6tzJ1BWQNCwSncIdL8K+8SdGJbXNQ/NvVyj+faddUcdOFhcTsLNpQHjmNghZcAYkCPvFEGx5XUPOe9QLSw1vTYdqPnTWzHRIopV+L50wNo/wXh06HwQVF4/uaF8+963YGsiP2CJ9R78GoWrN5rzB6Xna1Z88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+zu87Zv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+zu87Zv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C739C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767728633;
	bh=hmRieQ0TNhePYI0L1cYXGkIh/Qr9ZhzOGbtIv32Umdw=;
	h=To:Subject:From:Date:From;
	b=I+zu87ZvWXOgKcp9AbT+xhu+DMAe6MC91CVwyMVePBSzAP82x67dIgsfxuT+miSvK
	 k9HgM20k17jYQy2VpOb2wf4RUSweT7zGygA4nLxvyOEY9fMk3NxP5vIWjJBRmYlRMk
	 4q8602IJExDBWxxrWT7wsZKFDKCvwvhJudS0jtGxGGqDCE6KiPNwEor4DWuhc4VaNv
	 RKG5pVWxnBy0he2sIlfXA4n/StNiqAkjyDPYNIouc5VhU/bZ2QV06iGbqwIRu10SFD
	 /eXgNDi4JXaNOTe2tB4NXMtJgRLBpckYlITRed8rnBce/7hcSvA/wscVDfPTihA2CC
	 vb7PzP2hyQCRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4FBCEFCFE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772863357.10396.9810787247076639785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78001f6640576d1ba3db9d1742809cd252aec36644faf2ae04ebd848cf080472
Date: Tue, 06 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767728633
