Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6F11DE4C9
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744180794; cv=none; b=QLYiAVz3HPCvE1oeAnaU/yQVYyyrYBCmNcpQL3dcDvLZCb0F8R0C0BSJkZ8zlpN/nvNOgUgQ/p10Pl0RO9LU1EyNNMxgNduxtHN0lfxYFo0W+P7EUFNY30igu7MUPy+Pf6ito4a9//juUoNOfy0tc1jjNWH9ETVSEOapO/hJxAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744180794; c=relaxed/simple;
	bh=0iZzwoaKv9Pf5U5ooK1VJfsCQ8E2yAbs+bNV9HfTO4E=;
	h=To:Subject:From:Message-Id:Date; b=EXUjcNXSmqXSenAf/Xh4BO1t8cD0lt0XlqFrtOLjovZ2P68Fjp633rUony5tE/RtELYln/Sr1IZuYldTj41q5uE6acAhpUdbuV2ZricKpt/FiXUTIVs4ojFT5T5dXNPc66M41eFVIfOLSE1mCEJsM1SbewkdT10QganrTA3csJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gi/E+NxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gi/E+NxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB4EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744180793;
	bh=0iZzwoaKv9Pf5U5ooK1VJfsCQ8E2yAbs+bNV9HfTO4E=;
	h=To:Subject:From:Date:From;
	b=Gi/E+NxUvsaeIM4iz1I3ISK96olIFKB+EIyftwmm5mTZer5gApkr208YH+2RcGSAX
	 reOXVzlSRrN/83GGKe+eNA0an1hYNnzRKpH6o8JhSDyYDcKzaaCS+c8IN3B7o9CJkf
	 40PzpLn5qlq9KT9Uio092eVZ+IhKV81n8nNF4tVz7+y0feIfVMF9XzDuFmScWrxt46
	 vK3OtUB9Mh4eW9AIrDI1cYdubOc/lUfl8rQTqSyJd+V/i8jY1uVisj2m7zaGziDgNB
	 abh1NGsdqALLWGplGKuoJPfLhiCRdfqz7IGF7ddgtx9VUgxlCTrIzMMl3IEpHwIFvr
	 q3WKMpprxGhsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E81C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418079358.32263.6191829991008780321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec672fd03315df778e37e45f965bfa98fcf4f0d42afb7aef91410b0e13176d4
Date: Wed, 09 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744180793
