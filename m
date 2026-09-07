Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E2944E649
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788774634; cv=none; b=aYENblq+K8vQi3fmWWpFks6lMd8OSVpihW7f9xdjNZnOp5jPSv0vbciNM/kRb8uwGJBiwXhmlGGJ4iK38KFVG7Otw4Hb+OvlI+giyUCa7kU3N2q/vI+CnFwG7rYFJ4lG/IodES0MVeGC3BFj0FSpKmp4+fNvqpzEOdhwi0S+2T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788774634; c=relaxed/simple;
	bh=KyTUVriSyOoHgfwPongAKL5ltB9URtsFDuVfadKVsiA=;
	h=To:Subject:From:Message-Id:Date; b=jO6aRbbkyGTO02klevQSkAm6QFGQTwFc+P0pUlhsuirQFCVL+fggq897xoCUB6AqBhEotkCaXy7Pv2j4wy3KvJ48rgwZhP+DLFu56W9uNUYeXk/APSz676Yvk1V0JvbJy4oPiubyZLwjavRDBMFzGck6Z+F/xF+6qoTJjr2ORVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lw1ntpX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lw1ntpX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8A6C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788774633;
	bh=KyTUVriSyOoHgfwPongAKL5ltB9URtsFDuVfadKVsiA=;
	h=To:Subject:From:Date:From;
	b=lw1ntpX/Jby9Hul8WYSyGSMjm+kNAtnTRonOa46h7u1JorGTSuPzDhTQHPUs3BZ5d
	 0dUVlbgo3unrfSJHjWpA+p/JMs3MBfZ85gr0SUX7mEiYzhrIcsXt1wBWPKKtK8OTYp
	 mcZ/x7LapU+QBCIm9qDes7pjdWb3NpPRh6furiqFo+XRJyNLMHO3CnmU9Y9kNtlkjS
	 FlUM/VBcQuxAEQ/OLGBPKSDRVAcefEGtVsbsSERWhUt7hw3BNZQK+QNaFpBtrjBGtA
	 2VqMj3BnQENM4TywVAu3aP80RIsaNyqoghxqIaFq1LJGfnyFgsustvL6sobbdxCiDU
	 BGxHf6Du/8Yzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8874C79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877463374.5952.458426035105805634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303989cfed5ac51dddf3f9ad8018e538f1f2a234d5975c27b757c6d8586c6b5a
Date: Mon, 07 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788774633
