Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F02C1E98EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792374634; cv=none; b=blbDAAYjktAroUTxPzlLzERuv6nJ5jAKMLLiU73Hvu3E0DMAvwyQSpo4MOt2RvIh6OsdLWdNNDrcV2oKZjQDqFdALG1S/Svk7foF6Kg1DgKJIxA99ohwClw2fULCae5N3EwM6fuwI23T6APcn3iXKHJiPwGOB+ngrtJB7Qczy04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792374634; c=relaxed/simple;
	bh=nf+LIBlJkYDzPnVuEmichzhDQ51RoeNUySFqPdX7a84=;
	h=To:Subject:From:Message-Id:Date; b=qFVTOS6N+y0DVPDQOdRHe/QEj4lAY/U5lIKVRpUfEURLgVsjLDY0NRa2AUZvXoyWYW/fxDOYWOZ5hy7tZ6vBijGlZv8ZV/qOAvjszyDaz1uM9QNHOI/r2jY6UOHLatqA3O4hC7FWxkCWQ1v/TDj42y14fbdbfMhAIlyt0EfnIWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uI/uFzWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uI/uFzWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D546CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792374633;
	bh=nf+LIBlJkYDzPnVuEmichzhDQ51RoeNUySFqPdX7a84=;
	h=To:Subject:From:Date:From;
	b=uI/uFzWjb0B9MGDcT5awiqu19nC1eQtVarFmwu2RrkJrPsUAANi/Btl+5PTaWOLf1
	 SPu0z1Jx7gg4S4tqcFDdBqzafqtlZDVo5g4/upMuGQidr7rC9c22TWAaFVKb7/VQnX
	 nBeHEqfDukzOc2ybAXMaTiNSVQLLV/3Udq48HEWnBN7pimmdNTlDWEUl53DEEbNw5/
	 LMtqDMU6Pm1exteDi1Rj1rHi3in7cn1uGbTtPltpybfR0vFKLkzKf9WKxG90vz5SnR
	 sfwc79hRbbNYd20lJnBN6IBS0LjVwfHa0f2yUiXfyBfOh4psDVWABNkQcMe9aB7Z+k
	 KwM8jLdRN9D3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15FCCCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237463371.15155.7054156202037159903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e86ce6c76e4ab7f67e966f239a5ada9a40754a1b2ca1ec1b7f6293fdcbbc8ad
Date: Mon, 19 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792374633
