Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A103112AB
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775457334; cv=none; b=e2uU4iIqsPXOhgF43xNoqLAnCh3HTpnkpVBEn90dQJv4KdfVJbE2ZOJW5/WhCZfdoejtbmYxOn98TJqhWR/EvF+jAnujn+9XnoV7pkBSH+iFu2wE8Fwwy6FXYkudXZaCNGDC8o6E8nJB1epX5Lfl/5lLEOFKQjevgYbGPwXmLVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775457334; c=relaxed/simple;
	bh=Q/kE04/CFwkM7gCCkovI9yZz432IL6q8fUXCe16SSxo=;
	h=To:Subject:From:Message-Id:Date; b=ASMv5r/fH5/BnE+sN3jFqxrmCVFD038JLwOo7Z4WwRe3dh8KUcxp7P+J/dT4ZBpkXZgnzlbSmP9QBWG+O8h7jc3doWi6Ty6QOrUWtyaQKf5x7v9251XTD5BUQpFk4WZkc4s7qGdXmBdcRlpEAcQuMp64iq1Pb2KuCwtYWZzkdE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sv9F4OhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sv9F4OhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF7CDC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775457333;
	bh=Q/kE04/CFwkM7gCCkovI9yZz432IL6q8fUXCe16SSxo=;
	h=To:Subject:From:Date:From;
	b=Sv9F4OhFo45ay/VdAClQ8ahe1CJ9/Md1jyNY3S/VVeIQApAMbz3ZOUf3by06+X4rb
	 ozFjXJ9Hzti3YozY3Uo3K+0OhRrc/kTx0I6JX7A9DDKmSlSnn6l80BZ0hfXZ+HwllH
	 fLzXGNCkyNXSu+b5zRzJRbQX2Rb70QifEQFMY4K8hsS2bHLWwn+wijW8JlmyGaOw9y
	 oe+vwkYBnu2JnWDD3qa3RNBx08ewtMtHQKQeWauxRGepeJOq2hrTpK1/vfOBHqeKDb
	 oR+47YJQngaAugp4nifxbk8hDnAqs1F0GCloGTZnM892JKuv84Ye5uHOSzmGGCQBKE
	 lUWEm6TlDx/Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC488EF4EAE
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545733369.20589.15176453251981915557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf361ff80842e128c61cc16d05c208db82c66a27126b464d598c855a0d6de52
Date: Mon, 06 Apr 2026 06:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775457333
