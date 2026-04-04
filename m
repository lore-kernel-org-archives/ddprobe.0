Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2846CA92E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775282734; cv=none; b=JBRGuObbUfmn3s4L+Yj06Ez+jrKQPamPbuDGkuvfgPKs14y8zboWjMOmYHGkurLIkiOnyLRKIu8r/THjk/PZ0WSFpqjvIB4J2UMokDnBbQKHmnD/lCTcCZPdhvEDqxRYyjdf0tGgRMF9HdahhU4OYvMlYOyNXcQVLAIhwlUFh28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775282734; c=relaxed/simple;
	bh=0FD2wKUJUY3+jUAUPfVkEXi3w1z4bR6Wa3aYIZdEvTk=;
	h=To:Subject:From:Message-Id:Date; b=u94eEMyB+DgGNA+GOMWC9rWvKdXwdzH5sBmpHl/AxGBdB/XnVEMU0arQ2651LZUJXG69Kx2aUvfpjVp3/7GK/XnMhYsMuLJnagLch7dI5q6yYBZvQmhL3qdlLQZbsIrWNTbBOzrSWR8+Dci12DENpo3tGq0LrXxpVNcSUp0DFdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dY+N5Bo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dY+N5Bo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA838C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775282733;
	bh=0FD2wKUJUY3+jUAUPfVkEXi3w1z4bR6Wa3aYIZdEvTk=;
	h=To:Subject:From:Date:From;
	b=dY+N5Bo1ifLtmk27Fmfdnx+E2N1/KonEOemd6aIcWF6l2bbEdTrE0XuwSYtj9Qnxl
	 r6yFywrHjy5xAJbNZKY3WEdN2qgKfNGoweaAmSz4gtFThJNPraSBMfEMtjSlxDVFuy
	 kYW0K5ZDS24HaUlev6LEPdPBmnEKO6MLFI7Rq31u091P/NGwB+3+1IzhQ8Vwnatgma
	 0G/O6GwnYgvA+rOjukVXnzV40ClZnXa3OmCwLEUE/z7N+opTgw8Kjlvl+UtP1zYNVN
	 uH7ZmFUqRdMj2uLZmbcGnkUxG9RRTsKpCCcFN+Un5lq9S7z4LjtHSQy2VJTebnANxx
	 OUJnocnkX+pxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA383E88D86
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528273368.2997.11439950592571918007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0a6c5adcb822dde07fde2377c53c51348b9dae35abf7f6a90a0fd44068badb
Date: Sat, 04 Apr 2026 06:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775282733
