Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD8436E48F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768241034; cv=none; b=Uu33MblN9Bh4pNlC+rz/NUBgT8Vpr/oe6uemTy7pMLGuXnPFS28QPb6qZjp+RKmIXJDgIIUajBHWSW8XlreGwGJxqcq6VeUwLAan9MFWGsP5FVptW9zoSqfMSw1bKX4G71bOuol1wT12KnTdO8gL3s72lfwgY6Sxz9+ACPHyLLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768241034; c=relaxed/simple;
	bh=VOg1PKdsiTGTZTATFonTmhQ68qakhFByr2xQAbQftKI=;
	h=To:Subject:From:Message-Id:Date; b=DZWn54b2jzVifJ3iNfv4j1afGsquKa7nGyiJRWGeKkBDZ5yYpM13f0I7Mgjou7rdR9U1RHAtHJnCbVQwN787nJMQpkwjTuF9lWbVNKnEjXuL6cFg0nYMdPHjcofenp91e2Rd4DVUzeCu2zFUfnTp/kFEeH+Fgl6EY2NS1mQTaeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3YOu2ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3YOu2ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88D1C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768241033;
	bh=VOg1PKdsiTGTZTATFonTmhQ68qakhFByr2xQAbQftKI=;
	h=To:Subject:From:Date:From;
	b=q3YOu2ubupJbNqnQnF7Y79euaUDl0RbakPyk3c0FnsvQf2QwRgXcmzOPuv/ntHcbs
	 BRgQl51L79aCvBDZfYvLLCdpz5pPCmyIIrc49oqc5PkFm9J/We1JMMCnnbt0vzBLIN
	 IaJncXcZG5REwKgQvZmG25ZrdoBLHdJBINMq5+AQvvr2u54VEZA1aKAyyy3o80K4NY
	 4jH93XQp2t+6TmUsEb5wbmJAQFmlxHls+jmqioN8mM/JkdOS03rTiqAHi7WUq09a6d
	 5zxeEmzSXaPD3LQKgYCCv4salvKi8Ws091nc5TAlyE7T1ol/0crTvLzYst6PU6HP9S
	 GPPDirVotMegw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE8CF45BB
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824103359.24561.9477254788281354078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb600df7007d754cf07f2d1d10418b0ea8a4bdc4207ed63ddd7bb8fe98217cd
Date: Mon, 12 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768241033
