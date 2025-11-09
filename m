Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A0E189906
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762686594; cv=none; b=ZgGbWatxq1tXilj0T9V6OTaCO4PQK3xflxxXhZ0RXuV/9pqIiRqBYvOfIYAl9trgy1td04by1gALvrvIMPJpU5pHMnA8B+8Xg7qXRR7Uv52RhHEzs2m/nfD8NeTor4JevMHB7xt13kNU5pwK6U1TXBrSCMZVayjJVaT8b2LhnV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762686594; c=relaxed/simple;
	bh=rOxzhXdwFdUIUMxjMvn2mfa6g+Nd5omhcYM+bopshrE=;
	h=To:Subject:From:Message-Id:Date; b=VlmvxDi+sY0IEUa77RZ3v21RDEgAqSJ0W8rfKHkhL9jxhqqE2tpRWL6pqsem+6zfpqx9zHwyziPmdgX8vhf/j4w/iWfqDivwE+DgGzb4nmWCm9Fo1b7fdv7tdk5BqVDcLTE3U2HFdyNFa/glVMkDHuN4YInRJIBsnmhx4sehhTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O93+WWFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O93+WWFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F370C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762686593;
	bh=rOxzhXdwFdUIUMxjMvn2mfa6g+Nd5omhcYM+bopshrE=;
	h=To:Subject:From:Date:From;
	b=O93+WWFk+iD+vEAdEin56WwI03npedc/mlz1hyccawYPgg8Wow82K78PgpqtJigp9
	 +fB3h81o3W8dUa8Ff8G9+EMc0Whn06HBCtdVTTRygAEVBl00WupqSclx93iBvfUkec
	 NtVS8n0uQqLmZO8EEoybR939PXkFzrMBQ0YgvOL02+b8O8FfU94uofEz3SqftUsdRr
	 MbqyvJSLMk7t5U1yXrBfCYxU3HDVhVBiO8A1vs89vIfilQoi6eippq0bxjGALGFTUG
	 J6rDEXOOsRfNYcj1yaOS5c+KCT17wxBVqP4Zrl8toHBl9w6eJ9A26xFJkR1Kk/FMM5
	 HAzzxYfOdApGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DA4CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268659357.4706.10816899269738917228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2658cd4832d9a44bbbb371bb78552cba6f30ac6c93fd3ac3ff6845d553a3897f
Date: Sun, 09 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762686593
