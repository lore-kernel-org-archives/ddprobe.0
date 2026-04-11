Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F8F3382F1
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775905054; cv=none; b=Z0oxgmpPzFPEGb2sdruC7lWPNFFsw1F0HWr/2/GY5gqhDOubYnAGfOiIGvvAsgihP5hctaKtLI/FdeoAJWCrMo53KnoETGpEUOBPU9BeS1s+fBbLDmPJrgyfniI8iwJYRDl6nnoCS9LcCkxjTmj/bt7H8CnpRaMrL1mgX88qQrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775905054; c=relaxed/simple;
	bh=ulHr/NI189oR75T10bv+oGroPbVgbzLUoL0PuzZF0HQ=;
	h=To:Subject:From:Message-Id:Date; b=O3ummYkVgYF7DMORm9B4mHBj+sCFQ3ZFyAikqd3MLEeOebY10RPXLYq2QhAk4JfIeAErYHBoXdHqzV9No069ZGQX//+4e4udvmtomakT132THWt0BG0YEviviy4s9x6FWeXj1u4LI5iKofJCzzC06JciIORB+Z1aoxbuVIVLaFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrQeaoNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrQeaoNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0951C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775905053;
	bh=ulHr/NI189oR75T10bv+oGroPbVgbzLUoL0PuzZF0HQ=;
	h=To:Subject:From:Date:From;
	b=qrQeaoNHWwNSu+IA7Pp9+IiQi6pRLypv4Rro+cLtOuusy0Ap9oa/DsBDGJEssCti3
	 S/klVDvWCVcO+bRqjcnrzEPxjAvlpyjcShp5YZPtGd2LaZ8FjxzBjli0bOG6CwSn5i
	 1FH6oCrJDck9TiMTGxbbQ+apgkN0Na+lqCe5F3WoB9BxVJ0qvVgHFmJ6W/1zlP9Gtg
	 7CbMrScdPU7q+d4rGH2iVpQ3+r+YMOpeHCkQHvNOFPmlKDWJzSY6FZ5xd1UjE8SndL
	 neMvdNQP0E4pB5KE2QTY4yU6HDCFfeMOztn+JknomXgVfHmYGUXUL9lm+sQtySJmCk
	 0iRzpcVtXx5SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE48AF3ED43
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590505369.20908.16795597518392394281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70b71f7a0e22de488d0468173d806a160cb0b1cf5860324ac80f6078943bdc6
Date: Sat, 11 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775905053
