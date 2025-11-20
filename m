Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFDE3358D4
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763643114; cv=none; b=TdiVjmoIzSGg4U9CB5l+XQ278f2CyMWmE3JaOAnZoCkhWxkfZLg0lcb6gCMVZsf0750/0HtWeFjS+YNo/7ro30oXkODzSQh7BKSb2IWfcFH24KFM15Yf+9Hmtoc8MFo8AtyDvK/prNH2lEfMHWhZblzjPTVVA8PXuniutoflSEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763643114; c=relaxed/simple;
	bh=4taV1qYbZA9N2KFKzuiGF/KDaRVXSiw8aqdDBU2N+VI=;
	h=To:Subject:From:Message-Id:Date; b=QndmEVwUyG066YxtItk2FUqhaA79wJQ+upFtXe1K+HqTgCwWFNpPSK5Cf1cDAxzUPWtAQrhghkuWCw6UiQAPr527aVWtzIrLN2nCRQ3+7QcZ9KHDZgo8zEmuJGJKAvKVCNjeoObuUBiUlNIXwOYSRxT467fdqFmRSpEXhKUUchQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYlYcI7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYlYcI7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD665C116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763643113;
	bh=4taV1qYbZA9N2KFKzuiGF/KDaRVXSiw8aqdDBU2N+VI=;
	h=To:Subject:From:Date:From;
	b=iYlYcI7R7Vmmyj4ER0UB0B7fuBvZZ+ieezt+w0FnAYVGiO6xxjXDnc4Ni9EoBj8f7
	 kALYcn07tjTxla3E9ABJoXTr8r0bZ4quFUQtPVedJNHSmoOf3g65xtyqTdfeH21Sb6
	 PhG1AJFYU2J7OxbtJXgzUpraQGKd0+yDfFlc6iYshiq3PAJLiHUknq067EZD6D9Jf8
	 OSZrVIm3BPT4uYdlI6rY5gemeSPkP01ZBxjfopSpoaymSiK9pD9+aVoQTMJJPeRbcz
	 8+QoFITWC3yb2+2oCj5IORaGlyWUSyUnhp/AHn1BJ03IBISPuBVglfviRbmu65q7XX
	 m12DB4HwV4Rig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A43FCF8854
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364311362.16295.11531548977451291023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311a92856c3db0cb84ac4e6c2e7b5ce73535597d753131913e35efaec3c8b8fd
Date: Thu, 20 Nov 2025 12:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763643113
