Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E5813AC1
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745961594; cv=none; b=tfvIU4zcAC6xJNXtsM1ZZukUbTLXSYhZrkSahdFTu9XzbGJIyunW6G+r8MdzEesQH80IKe0pRt7s55ZKcnyDjX1xbWvRcWgCBWLkCxC0DxwUd0DSBwhaCi5WDIIYcjo3ZASpS+0W0rBnlU7j5ggydCaS1c0cPyupnRRQK/IkB0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745961594; c=relaxed/simple;
	bh=Z6Ul80eMJkpNVNZQ6PvbNol58DAnjnighO8S9CjecCM=;
	h=To:Subject:From:Message-Id:Date; b=eNJH8Esl9RYgchCrHOz08CtBDlY5Gr9wNt6CspF3qOLyLY4Wwe8r/fAdsqbjUilQFL+jPHWwZ3bRzYHs6gD7UWn1UCmsW+GHSUe8evtpshJXGEVpyYa846WOe4ARYT9m+zpQKreGsq5d/wb6gIwhT9QmT7slYnqJ5dtkljaXU1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uiv7rPLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uiv7rPLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3C7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745961593;
	bh=Z6Ul80eMJkpNVNZQ6PvbNol58DAnjnighO8S9CjecCM=;
	h=To:Subject:From:Date:From;
	b=Uiv7rPLX/17UbOSCr239VIccAG06bJ7Rg4i3TyM6wLYTlvHGwgVG5XfsYq8WD9Dk6
	 JvyZnrwmqtGYsynviVSbOfOdAfFYqtt0NuohDq1y1F2/aRii0tMvpcpwav2Fss0an6
	 DaYqi+se6RNJCbf7mfWLS+p+Efn4fM3mbM+gmm8d1aJPaSxpnzhra974wLozSUsvSw
	 JtOJfRcphgU1i5jiyD/vyzQroulyJsjuCbIsyBO/soxvQRWNDK6b+/5G5VzfNfVgF2
	 C/zLGI9cluLU8D3CMUAhFTnkUZS2zPfvTCqhAgGjhoJXmCNuRVJaOBeSMRjX0CaJ0R
	 n1GtlcNaMfE3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4D0C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596159357.12779.1083934863076649776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae9d92aa246ff7e5d8c6bda041740f07bd86bdf3c2a5a7a2d66bc22c8cee0d4
Date: Tue, 29 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745961593
