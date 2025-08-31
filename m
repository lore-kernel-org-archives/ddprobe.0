Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FB5239E6C
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756624795; cv=none; b=mdYbVnNaDcuayBU2wBmSbKCO317bIrKGpZxDcOuPsXd2xIPo+BN7jrRTzuCecjpC4gyN/7qok7tQ6uA44CyOxewN4EnBb03GrAHEgKquTmUiTBVTqEZOrA4A7w/2Kj/5FmkTUlOrwiY1anBFfjzgnEuP3bN2hNz0CxKTAsbZ5B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756624795; c=relaxed/simple;
	bh=CgSDw6yk3zcota5plQdkFQ+fL8RSXflsR64cwfJWqI8=;
	h=To:Subject:From:Message-Id:Date; b=LkLGY8XZs8d2c69MmGExiyexYZKd3wmU4KZrLcmmxLUGLPS4hV/DwbQ93iSf5D4yxCoTVbz3krLgpxgFRLl2y1A4aJT4LST6cgMmbEoIHHBXJUn24nd9yCUOifbT3pT7hy9TkAz3zJYrgUTUIGp7LD96rsJNX53KRRgmUGznFZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5DQR3g9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5DQR3g9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D03C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756624793;
	bh=CgSDw6yk3zcota5plQdkFQ+fL8RSXflsR64cwfJWqI8=;
	h=To:Subject:From:Date:From;
	b=C5DQR3g9ni4GNf7PzDvq5p8du+tgbPX6cHxNDhS5HioF7B/n8zvFkiHmcMcpTbt0W
	 YymnJjCLC1DQnXEjlGD1OyTtFyKe1MDhJvf1RfTk5FMRgDwLZ7QzadOZbg/ArsdHKS
	 GngJeo3+0HSy78zfAlafT/onPkDeK4QvxChXAD6qCm7yIfduui4t4l07AB4juRm6sf
	 O/Fot2uhH6wPiU4stKiWZOOeEpOpV/eFlGFbEO3f6ktrimm5jSpZ9hcDDAHOuD9+Fa
	 PrgTw1ClYzvWI4FS15N+NgZ/SZj/O/kdMIq6d1mmAsQwp96DUesihINaTf495i2Dv7
	 jdsRnZLBwVDjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90526CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662479357.16632.2086438423397799758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 569a010f9c87dfcca50660ac26ff659551b2409d1c2524b71ef51e53594f4763
Date: Sun, 31 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756624793
