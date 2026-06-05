Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412652EC0A7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780643674; cv=none; b=e80t2S0Pi3JX15+xbMk95NXopqtxpqIHCQaQ6Q/blVSi4DS66AyJ+TjCLSXlCoAZW0+6gmE0nANiEtnaemn4QP1Exw1MgRQpj7meUHqTCMm4eIpUEcpJMEKmUExmztTUnBMYvqkhvvragThqI006Rc4hq3IV7KWZ2An+axZm/Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780643674; c=relaxed/simple;
	bh=wpHi0dHfWk50xy/ErYEEXVxFXda7nPbvcNv0o19LQ88=;
	h=To:Subject:From:Message-Id:Date; b=j4tg3ej9oV+pAljr/JIMhDrtzM1DcbVUE9YSYF5NQqkAWxNTc3FO4+K+49fnFebpQyXnKabt4qZMnEbZ2NFwDCrltvOgt2v/fX6/qNq791dXkMs5Z+HrY3/LLI14Q8nBW6wNx6CkwxizMFDUAGuN6uc8EsPk0q4UQ/lEGZ0hKV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urRY6KrD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urRY6KrD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A3DC2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780643673;
	bh=wpHi0dHfWk50xy/ErYEEXVxFXda7nPbvcNv0o19LQ88=;
	h=To:Subject:From:Date:From;
	b=urRY6KrDoJF4pt2v9vceZfNsNBQDoPi0iqDl3r3Fo47IyX7JewhyqSIZu1E6GejQC
	 mlqJZuSMWKWHfZEPjnAG110k5jvOujdr5hHWwJkAI7zJRwFD5T2vUUKcNLz0FrtF2Y
	 l+ArOV82y/71SejNmfSRwoSlAkPTd2Unaa1i+SzEFOdKSs29y1XIu0pfprcQmhW4Fn
	 mC779R+M8qFJCHcncqjQfsUukxD+lV4mRMsSrgT2sGWX2YcBiyaRp0Ii2Ye3y16Ab6
	 iNU3F+AHa7lIY0DquMJvoxo61P/UxGGdHlRjMLFbOeDPV9OeQ9qnf9R1nQ2AaY+Oq/
	 gsvWPwDj2fW3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9735CD6E6B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064367368.18171.12797362560856277668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d32395d510be2d0fea90b831e2eb0a49ffaa1818193eaa78d6f4ea3766a9e6
Date: Fri, 05 Jun 2026 07:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780643673
