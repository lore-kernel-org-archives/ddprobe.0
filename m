Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E093241686
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780104214; cv=none; b=XW0vP9+GSOYeNQG1aLgmCe53FpDpjh4VFWHhYYevGeh/LH16r193VUBM0bHkkyoEDM3hDLWLe73kzjMU+yrN+5JzH9sFlCeUoMnpdtzTDN8femLq09NyvM4sJOQ2FTDV12C/KBG5wGF6fzBuqx1thYT5+WndaHONZQy8DJqYgIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780104214; c=relaxed/simple;
	bh=QZKUQhC5PqZ6G46352YtAqCbVN1ytlBJKDuW8NGAOMY=;
	h=To:Subject:From:Message-Id:Date; b=M1X9FOO33d+fC5E+xB6mTPSDqXmHSPZLiklgUZ4DOxcq6o2dW0wR6fxTXH+UrDgtWGol1KU2f0fen1LPMxRBALfMeNmWB+mJQdmwR3jJmqd5nC6HayuMqsH4nk5efe8dKcu6kvHd3Ifq5o3pFo7mEQuPx/Zu8m4hB3fau0oLJtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjEGAlSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjEGAlSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE62C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780104213;
	bh=QZKUQhC5PqZ6G46352YtAqCbVN1ytlBJKDuW8NGAOMY=;
	h=To:Subject:From:Date:From;
	b=gjEGAlSc1czTvORcfPTsugE0XCG2pCiHug65oQIUHiGnZE8mmePfRlO8rS/41Xg+k
	 IOxNJpE9EIx0OJKzaBOsJnFBjERwsebFDNQeonG7j0FqVBiATeUO8cr8TAvOQGwVFg
	 1MT5/Y3TCbv+QarrphW33j0dkgBYSN6WdvRu+zSw2IhY/wCTc3IZXoO61+0RPQqpwU
	 rm4Th6SISeNSNlp59UVUmiyusq/c4sHlYgDqTKdIjhW6rPmDJtj3h2VsDIa9+rTEOi
	 Ay6on3NXIrjTpbuxmMZWqQdE6TfbdyKTYmVJRglhFqGaxYX3uMnTh1QzHwO0e0GDGp
	 +pkqNqGoNuOEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8129CD6E51
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010421368.5426.15456169982997514074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e901c0b34098c23dd34ad9c8a1a6f6ff059c9d696ccf1f39b325e31000aff167
Date: Sat, 30 May 2026 01:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780104213
