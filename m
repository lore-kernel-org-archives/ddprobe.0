Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40464366079
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783559314; cv=none; b=Ax9YRCGt4ODjbIIcp+sE7nFmHMPXxRKGKhNN6LZhWNopEQLFjmfyJ10OQXXudNckj4hlb/WA7jf0Wy1orD0MthKgdU6dm97aMaA8DlkNRkwDQvuWviynikxOJfnl8zf7JzoBw2JHJ1SAspnucXZF0/CyfVM8zUXAA5ttJJMU3y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783559314; c=relaxed/simple;
	bh=Sgfqg4rb7kSEpDeEANsEsR09C3sVxb92sGFtxeJKlws=;
	h=To:Subject:From:Message-Id:Date; b=RQLQi6cFiM+piCmVDUiW6Iuuvwdlsmi6AnNuPovTyzRjAydCblxj0Rbe4pQRuF98DdRMrvnlljNSUZw5Ck07NJCc1a7j8UcIvio6Z5TgsyNxxssyfhRQdplU+83sA6Stb5EaqOUl0/+2ULwm6+jw/a6v1g30iys0uAWL/61OLqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEGmzk18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEGmzk18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0691C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783559313;
	bh=Sgfqg4rb7kSEpDeEANsEsR09C3sVxb92sGFtxeJKlws=;
	h=To:Subject:From:Date:From;
	b=mEGmzk18r2QB/N6viBDial9wyJihhhllk1zHZdZBQsmaFlMI+M4Xe8uAowQR3kwXy
	 eUz6Mqj1ubnVrZDV4AJWnW/yyrpdExTNEbG9Q7wUiZ4gJK/JKHNdRdpANprfOXFibC
	 lnNrSFEnbs22NZ7FRb9OSb4rLHuW5w1JaStruOtU7xwCSwnHwwp6Lqor3Y9kaLQxYB
	 n0VL+pFG+XGvnislf9PbC/Soxt4fypQN22F/3wwbqBD1bpbcO9L6WjMSKeni9vk8XM
	 wxUHwG8tR9yq9Q1JawQNdmB0tVUKlClVM0QxgsuKASlUGQ+z7mbObCWHqs+Im3XsQ2
	 Yv+RVI1XhLnTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE449C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355931368.28195.16413969313544565051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dfbe9edf4cf6f6ecab9b20bebd59944d1e982bfd052100c503c822f44d63b88
Date: Thu, 09 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783559313
