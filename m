Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C5E30E0FC
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771320894; cv=none; b=H8sgxYwWxuAAtFVckjejdbN1phuPkho3DgzD3HO1/dXQr5WD/+OZNyp2R7TcC2CEyhSOJN+JIUXVNRNSxSnAhcryEocLyYjJZ36ucx1pM+9sAvCmT86CecHYtbiI0aMqpt5DLkEeSbSzE2S/L1YP8FxRItMNQDxK1VFYF3dlATY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771320894; c=relaxed/simple;
	bh=KTD4NKyD33QQDLUQjcBtYV3dFgcgvSHMoZIRBC/cvbE=;
	h=To:Subject:From:Message-Id:Date; b=MZrb/A9n64epwgbedX4xtGahJSpOew82oXsqQAxdOPDdAZ6nfDa99ED/qV7vcJjbtstS6yNFeN8QIsz5BhxcQxumo9zAnjdwilvYFvMziZ0k1YLa9Q1GjST/KX6rsz16LOaAL4wvMZJA8fJZhxOPvtVpEG/GdK1UcjidqROgUis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmcbXDSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmcbXDSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF99AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771320893;
	bh=KTD4NKyD33QQDLUQjcBtYV3dFgcgvSHMoZIRBC/cvbE=;
	h=To:Subject:From:Date:From;
	b=PmcbXDSto31MpKH/tbRxUOdjEpmsFBPvTW5NZtVIvACi12Wd8mEik+zhjKnGGexeI
	 x5GsiJw/XCVrqM76MDyvLgVxlLHd+hDcLTgmdCz4gYjR8sppP4WjFxt8aZNHCoGnqG
	 7Pd1xw0tN+gksIUkNTj9Kcz03sUhkQp4l5Zn/YP2m0BQ9Tiq0IkaO2PEWpFVyMxaPF
	 zyz/jUdfCoB8XJ0f6DoNFyhITheOLKBZwpxgX6FjdZKZGuAtLylFmFmrYMHdtF3Ha6
	 3+dSd2Gj94S6mfh5C6PrnKdZfCuJeZovWcGRd5LFdsPH3xnvSiRDBSY7g7hMs0ijaO
	 P8K9XAQ++9Y5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3D4E68152
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132089361.15885.326011816960375363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3238639c4b94ddd9ff30f13a9e8896068ec49d6e126c6c39a1d7f00e5cf231a0
Date: Tue, 17 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771320893
