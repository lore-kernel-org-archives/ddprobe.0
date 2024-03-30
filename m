Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114F63C2C
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711787297; cv=none; b=UB6/g9c0QSV/V7+HpDSEB2vDZmuCokTMGFhYYv/ZeT9/oBIWPVJhN6MAS2INDIr3BAYSAr8h+rLHzjLhcbM0NcwbEbNR05a0fcBENHQ8pY1bGZEqlx8xNk4TosfagAKzt7Uq3GPrHl12jKvq9cEX0cqFZBhl0eDuU/YQP93I/dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711787297; c=relaxed/simple;
	bh=jc1SpkDrQVfqly8HBmIU9qOm+9FFyy68MQLauBxQLWw=;
	h=To:Subject:From:Message-Id:Date; b=AnGmDI79dd7tr9+MOQRd8KyofI5eniCtAvESJOQjFt2KyQFDEZtQMadufGhyyPNItVIYYzZ4gAq7+O3Y4Uq7sC0xXZ0RGhot/nZdPPAVcM1eQznNOEa32v7i7H4PXW+Jfdq8tMdSWU8et7/o9d8fVBjOMP4SJso4RejCeaLW+Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNvzSiWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNvzSiWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7970CC433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711787296;
	bh=jc1SpkDrQVfqly8HBmIU9qOm+9FFyy68MQLauBxQLWw=;
	h=To:Subject:From:Date:From;
	b=XNvzSiWlpt4m5x6BfYYzil54JJxMVFp0Ip5kBb7CiqH61OkUdBd5rR5eIka7JjIs+
	 9CUKe7gwq0TeiU3wKFnwCu2PFMVfHLFvAo1o42Eq+ONIIGL7YjHNBejaLWpc138dwt
	 iEZk9xcjCbxy41xpG1HgbLOhyurgJ1YGxiH0YNSpelIvoCedeJCq+RZm4RIxUCaDpW
	 QyBVJHeqmaQBjAA+cxs9yLOtSXOj3vg9HxYH1zkxtSAuB+D72q4d6zpG7lKM3yprDK
	 nR3c46NhbKOcJ1XKuE/7+xbAC/lO861Ar0T8pN9WA2sPA11o4uQHk/21BNlucNkhfK
	 NqULq823cAVMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6719AC47DD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171178729639.5917.8128800152771680132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ec9c0ea763ea3840b976b554b8e06eba881e9fafc1cfd4dc588a522ef630db
Date: Sat, 30 Mar 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711787296
