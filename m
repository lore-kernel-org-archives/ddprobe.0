Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9F62566
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754189394; cv=none; b=L2izROuf+m60kMGK+nOmCaymXPbgldQke8WNCpTb/r/VCTTibWvJRr0XTJozMpuCdvm26Fvo4QDzFzPXALouE00iwmXvg+HZJObfl7R0abNbB3dTE9HJ0VzqCDlxeikCOxGPNJWqz4TMu2beCvd7Yw7DSqlBDe+pA6cxg0Km9Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754189394; c=relaxed/simple;
	bh=V6+t3+cR+gwyMvwL6nGJXH98nAA9lD5BTkR1b1zqNdc=;
	h=To:Subject:From:Message-Id:Date; b=L0WhVNjIAIbHpmCq6MjodHLxpKXeiH8vRzuIIF8alI0/+q3s7D2B7zbYblzn+/7yJnpWVfdbdF400y+lE1nex/u2ISDTyhdnXA7S1jiVRxHSQSBGd3YhE59SnxxD10SeGupumn3Kd5DJT3DvKJdlVCqxa21thqXYyXZzrQWuseA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EF7C6cpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EF7C6cpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3832C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754189393;
	bh=V6+t3+cR+gwyMvwL6nGJXH98nAA9lD5BTkR1b1zqNdc=;
	h=To:Subject:From:Date:From;
	b=EF7C6cpYmM673JRhvIsaQaEyyS+5gSYnzlXvyASBhKwRQ9EOoXtnU2aGT0cFG80+4
	 3xKr1wmPw1Qm420EbWnHtLiiiUyrulYlWUmUE/JJapHGirmPJYS+aieSJgy2M5/S4w
	 qdVQHLmRURQ2vKotLSN35VZUC8sT8EgKCD/uHfpgljRVr/A0yQTkQquuGBqcTHCKXe
	 FnZC8WwrlwLpve+j6N5E38ztb+lVOVKCcuFnPrdTQRLGH0XTCcZjhjwqlkNxtzunBh
	 cyj9GSGLGeC7Feks48K0YJdiU6k+A9DJWo+aS1vk6/T1CAwYQtfyZ06s6PWXyLyWya
	 x+vZa9gL6rxag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915DCC87FD2
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418939358.7999.13009740215682902635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe5eb03e2f82eacae636c6347daba4f50b40057bf42253d7256640f6ae2ff35
Date: Sun, 03 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754189393
