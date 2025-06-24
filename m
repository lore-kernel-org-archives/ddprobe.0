Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAEE222575
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750787995; cv=none; b=iOTky0XFq3KGW8KV9q30lrJNLt7ZBcPMoW5hUAINES4hTAclNBand4Ip7Wur4u30gpGxOEKFMt1Dk/nQaDjLLkJ7ARMJXPERQgwHLahomcy76na8f5jLylZ+utghSONOxkbryHdD2N7qmklHyUI46+VUunloc9/nAzkIAnAMKd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750787995; c=relaxed/simple;
	bh=lP368n8UGs95wREBmB+Da4veXnYKBoPy715/M1euLl8=;
	h=To:Subject:From:Message-Id:Date; b=Oi+X1hnW/fzbJojdwCR3mkzxX8UE1cuMZAysVaCkXyuAYk7gTmjhCreI37+HxYplVdJBwjhiZIXRyszlt25eqjkwALnYcqWzNEKaKNzuZbHOQckvGh0l7eL39LGQ7IP468nAckpBGctzggwyjRYj8s+fr33gurl/rAYyyJZ20Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZipPytB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZipPytB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56EDC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750787993;
	bh=lP368n8UGs95wREBmB+Da4veXnYKBoPy715/M1euLl8=;
	h=To:Subject:From:Date:From;
	b=kZipPytBB3SFqbgAOabDn1TxsZpo862LwKWgZWSMb1Qfza+EUxeyQHK+0iDabibrl
	 NQ9GOhbhfkeeX4by+nZNV5fMKsO0JOZIPgQoc24pHdXWi7+tB6PadM/UDNhxT9J5Gn
	 0RD8aM+V81q4yGJySP1GD1kly7SmA+cUPbXIs2ufA8dYEi7ZrxpN7Z8Jo6bfDRlDUm
	 SI6ilR2NOWS9XDQtzf/R+Yiq02nJYJEGfbdamE2h87FHNJRYJ5mKZe8kGiSWMobSF2
	 On6wOrtwAs+uIJxa4J23EqDhykIMPOAXxwz882WWQRXwNJaLA6ggwyFVuw63/MaauU
	 Z1DwhgLD/J7iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9306EC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078799357.24342.5782860963804659129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5208a9108509198f8cd57242ea833ae3f62218e377f48dd3836070465ea5645f
Date: Tue, 24 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750787993
