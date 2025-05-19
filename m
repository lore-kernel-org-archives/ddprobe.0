Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C4E279324
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747660794; cv=none; b=QVeaToMqAiWVeMuFxJ1nvemznO4WWtFMNY+9FSO75JtXyLo4Xc3uwUj7sWm19+d+FXFuLZb2Wnve7RtWSh7iYWjQTxT3xLDSN4ONy4XMAQQcLnBvgahAFdFon45VKoqT+do5xTgx5D0EGKrAAFz+NEe9kmwXylCZNHSHF1CNsk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747660794; c=relaxed/simple;
	bh=eWJ7VZhGseGzbTF2EoKQjQGvBFuJCKcgdMesQVuYgZI=;
	h=To:Subject:From:Message-Id:Date; b=ZuVChrov4XaNjGy+t6GXT066h6ipvN+b+GlRIr1oLxs5xcmaQs7GkorZ1Ljpvsf+WP1qSc/r5MSTSujz1b/Ay94OoV3DGE7YNCeiao89F9WAZ90+NZgTytVc0uMFxB4kFkF+izFBy0Vifaoq8kYy3OOF0nmNu0aNtV2eXVoP+9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdoRzfE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdoRzfE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A38C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747660793;
	bh=eWJ7VZhGseGzbTF2EoKQjQGvBFuJCKcgdMesQVuYgZI=;
	h=To:Subject:From:Date:From;
	b=MdoRzfE77G/UdxZypkXCrXbURrec/Ovc11dakoihgCa7P4sP0t6OBxvS1DArKGM17
	 Mr8hECIu16jv0xJNCuwv20NMUAj1yg95KkpyVagEZBXA7J+hYbCh5+s6YFfUiC29uK
	 jcvgUh4tBPNUGHAo8GXLYVRXBe9ToWhze6pB0C8f1E3/cgincnrVzEqdbL+GJODd6W
	 i2eemOlORo/5tfXVcWO+jrUizdFxqPwjqrJrgoG/SfWuyZ5U6TgpJk9l7fcybAMgPd
	 u/Cv7ss2fftFanu3InSQD0OijZaiV9CV6JUtbdhm9dZ82RBTBC3xFxuO+p3kesnd71
	 g6AGyE13JgZsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB13C3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766079357.8192.7520646287596376429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b1371822f0f51f962c66907c59c5fd537715099b393c14755c7a2432b05755
Date: Mon, 19 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747660793
