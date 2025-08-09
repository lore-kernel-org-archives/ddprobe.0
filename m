Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC702750F6
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754701193; cv=none; b=X4NfUQVHqM6qzAE7X4I1SiTD4Xgn1EyQBrl42FpFjRkkdPKkr0IOKjficmbjP4E9fY+10TvfBxB6MCJgTlEhrrNMleaO6IBjeR1omX9Qd5kP71zYvNtjkmtKumu5dI5zzj39Jm3Kx/TdqawpfTEqQP+IcWZIFH2rMjw1RFBvYWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754701193; c=relaxed/simple;
	bh=G+Hrp5XjlHIW20koZHfsxlrOyOXrN+u4FRl8B1rD65M=;
	h=To:Subject:From:Message-Id:Date; b=G4IwvgfpUOKEtWE/k6S4SRqnvplrSuvJURvxJix0FJQPy3/w/5kMXP8F4qK+SDeiyBy5oGewNkAUyIqzX93Eg2xyYgrbl3CpwHpdk0fiyFDNHgbxhjNZspQpa2fD3w0/dTnTTAfPsBifEaV2eHsm+Tf4KBMM2WNLSnwGUfeo620=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uy60nBIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uy60nBIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1510C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754701193;
	bh=G+Hrp5XjlHIW20koZHfsxlrOyOXrN+u4FRl8B1rD65M=;
	h=To:Subject:From:Date:From;
	b=Uy60nBIlNUtz7bzPhWstzg8lwTJqfK5iuTDKZOm9AQw/aq+jGe+ve4H6R+DH9EK51
	 2Y6i06XiytkGCrqUQkQxGOA9bGSor4PoU+Ay9SHIea272WxJc97Lw7u7oKfomyXHEe
	 /P8AmkuTSiuQvq0/AWbUsX6QYqr6i9vlRqlPA1tCP3iIr0MVtnJPOjodzcQgyoAXzC
	 aoVdn8lNWjgYPCbdsEhwhSwnk/FSItufAITRaJ7SPvJ5qDKMGMZ1R3O56VaCfRmxQ4
	 EgfTDMYUS9JA/hqyx/xbZnU7j3/t0LyDTB130eFfa1RSCukUD9+PCE0CkWi2i/GJn2
	 SvknIGP80smTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9386AC87FDA
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470119357.1796.7515740282017810377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af1386d84a4451dfd6422081b8ceaff9a39a3305e5c02d4baf5207134602370
Date: Sat, 09 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754701193
