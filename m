Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE3623A9B3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770573234; cv=none; b=oI5pAwIF/JaoXxv/tlrX1DzyNIs5VCxVLWqlOhfcVNj0GL2JYk0V53vUTuY9Qje+mCCyKTxm7MCI3yI6UpeZdtwREef+1mBqDfAQHXtAOKgN9HMmyR9FZQYzpm9XTuCHPn2vSOr7VoTZV0n7ujpxW3gOvcWNRuU3XFG9vdPL5xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770573234; c=relaxed/simple;
	bh=x8l8WRyv8DbEPu1GZpPovAM5JDo/uSkNSCt1X0GYOBA=;
	h=To:Subject:From:Message-Id:Date; b=XXQ+1sXCiNKSx28UnWSjBFXfPT0oAJ8tSwOR5S4BTD0Lxa2/JC+RUaBEj5/ZdeD5VkhyJcuKjm6XL2ogjdsgPzOWEDEh1vUUkCe7WlhjNiV5mP5L9dN0M1Qj44aPzCIEQm/uvfbjFWZwLixvLXZ9Q6xUNM7YuFxhdlgX0Um9P7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xnv5lM8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xnv5lM8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74E2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770573233;
	bh=x8l8WRyv8DbEPu1GZpPovAM5JDo/uSkNSCt1X0GYOBA=;
	h=To:Subject:From:Date:From;
	b=Xnv5lM8ScBkGY44JmQWzRO5EG1FLEFz2dYALiGXzVmbwaeaQToHZ0RD1q0gACtPUM
	 Kmv8Vfa8A+0dz8W32fVf1LBitCzTHMANkaXiddH9GKOvFpErSEbjudAlVbonD0d4Wt
	 fXM9eHc88HKKSz8gdDkZOz1SVoiTe3F0Qc9MlEKIR4i1uICqJcL/+20gEgWhpkwu+e
	 S0uooLHJXaHtdg1gL9qbisGIg3nl8JGBEmvjNo32CrZvxQhs4beBQrWMMd+gnrp7+c
	 iOt+8+W/thwAEpRfsp/yOYPZ5LrqkJU4FGADg5byJPenpewzWlNGKc6nlNsNlFq7qB
	 saKqa0RJ8235Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CE5EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057323360.15129.16859469446555871933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5de4aaa34096d5868a02ac6dcde36a1f306242ea14b5bda72e861978f0c3dff5
Date: Sun, 08 Feb 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770573233
