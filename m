Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFECB54B1A7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790194834; cv=none; b=ac2yZggKzNqGedAnaor2cuQNz5MD5ZxQAz/cy22G5lMm42k8ZxBoQvliE+6hfTjamZ0v716IIuwdMM3to+mZyW6IyaaZHgfOz8gcqwQ8QB0yFI5VdbYyGn1RN7kx/MC9Pxr1ZsPC6ecGUQIOC6aYUfZB39PkSVQ2wc8MXYywn/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790194834; c=relaxed/simple;
	bh=28wVz+QqZ8O+/wXSpZDKF/9nPYcHH6bayNGoEQn3oXM=;
	h=To:Subject:From:Message-Id:Date; b=SV/SGwUaD0giuj6yKVAScOxkggIBps9lO9qE38qa4crJbUqKKxMo/jTFzu0spbj5jbjWKZRC9+YDlaLqBdlAkrw0pA/hHISpMadNn9tH9W+kiz3+T/sn3nGj75+ESgiMSlkl8T77kcbxFSNkEas5M+3SwfQZbC+OKTolWMR6Fbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfvSMVuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfvSMVuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3896C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790194833;
	bh=28wVz+QqZ8O+/wXSpZDKF/9nPYcHH6bayNGoEQn3oXM=;
	h=To:Subject:From:Date:From;
	b=LfvSMVuvuaZkFwxCs9DArpxw4DhKgtjesPOFtEIVGba+o0HwIWF8BLsAn5EEeypMH
	 W1xIs1u/c8cMzmKeF7oVfzbW0InnKOL++cAwLzMQrtoowKvH36tUc6IJTGzfoNssXG
	 QE9PsfidjeKwYBPrWYiUTWHFn8yAiGVcCkt8fHEoXk2KcwDutFu34efiuxrGlXY3qk
	 BSkdF/CRkmw2Cg0vEKbmlgKirMsn6EFKC2nnAZkYwUPwLx1IdGjIUypK2XtOv6X36q
	 B8YCCHNtfj2oyfMkWhu7Ma9TnpF2UMAePGtQHClEBpeZE7jhcBjMimiqjK2pLlNdky
	 7508TLAyQ11rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE083C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019483370.15874.17945874923360248133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 692a2028ca232141839bd632319e403f15a405a76ed09d044fc6e50901e32b2c
Date: Wed, 23 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790194833
