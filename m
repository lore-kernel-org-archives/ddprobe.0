Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297DC3E6DF5
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778839234; cv=none; b=odlyl32DigUNfG5nHK7KjIjf1/DL42w4EbS265uZK/i41KleBK9v6X2wgGjNSr/wmK6aq6eCVuSQxOGB1+/ElMiO+fPAKOx5duWYXgyefJZrdP4y1yN5D1dOqDDnnDFbsic2s8Mn+CIhx6Aex51il69oqnny8EpxFHQH4jb9aJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778839234; c=relaxed/simple;
	bh=SJSrGiC5vvH1HZTkpA4f50TlS+Yb5j0yG+G7bHbaQ9E=;
	h=To:Subject:From:Message-Id:Date; b=WcqRiU76U3o3E3yI2LKQ9yxukJ1DJomC+4TA6OIBdZ/KWSQV0wxG5kA+RPcbJLiNZQ9c91wne05BWkMAPbPY5KZKK2QtuW40YVhnhheYpafrQrAI48kYB2eyueyhiP8GVyeDSR9py/oKEe0cP2lMvb5HeFG9A6/Y9VQa+GMdEDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbfpv5W8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbfpv5W8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE74C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778839233;
	bh=SJSrGiC5vvH1HZTkpA4f50TlS+Yb5j0yG+G7bHbaQ9E=;
	h=To:Subject:From:Date:From;
	b=jbfpv5W8wj1+voFzZcBf/ZKXjxtvTVtS38LDup5SfHbuZw1XlfXyv/uRFpZhkomlh
	 bzO1afW26updFRCO8DoU8xavsln/5DdRUmcB3a20jtVKd4t8l4yEgxT961omTZRD+n
	 5pElYtWFMhkeiJYdXP4R33seeRNO7rn2qBYxhIfAeb9+p3anmyn9JCZUJoqpPND8+9
	 DF2wpyGufs8feUSGhxlgX7W2zcRDYtExbphUYwmfSDePCsxGqqGzzVJUD/GaqT1pmX
	 xpotSpbJpKO3J6+ll51tZNLQiFDp5OpKe/98JC9O5jHUNv7Wmt/0h6DKeQLAWidARD
	 H4WhzhUf746Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE29CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883923369.9127.13788642435510519720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3e8604a3c500cda7cd1d4d59677bf1f2d4339a25c76c042ed4578bcbbd4eff
Date: Fri, 15 May 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778839233
