Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D35347C0FD
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792189834; cv=none; b=jcQNc4f4/FwhCKaWFSvEIBglcLJ5cAcq6Y8tSPq12QVweOAiDShG8L1FVdPQeXM9Nsbnf9d2AEg7FmcypChGdE8IwLN0cv4mN2E0Z6PasSy668ZokIuS3awxMQFVf8e/VLHmhnu1uW52Y0OmFGI4ORJKTGin02co2aEKASLziBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792189834; c=relaxed/simple;
	bh=tpocDba/b36IyFla/8vc/mdQrdobkL2Fw9Q2gfzeC9Q=;
	h=To:Subject:From:Message-Id:Date; b=LazGXWSCNwBkl0kk5smnMvu/kp6pBsz3172Eh1hdxYhySo6e9zUvzeK29acM/0yxPe9VTuOiH/JhbQwRmXipUhlmMKDFfJFldYaWw7nAyOpArHN21Pn2on9Z1WHE6MTDgwaufao7mEcXORr0biuzxXhXPev+A6NDkWU8LoO4wSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5/xGE8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5/xGE8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5334C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792189833;
	bh=tpocDba/b36IyFla/8vc/mdQrdobkL2Fw9Q2gfzeC9Q=;
	h=To:Subject:From:Date:From;
	b=n5/xGE8L3Z3p70u/HFM2WuY7DvyzRCJIzhE+0yeABiquBnEH5IZ/sL9xiNrQvz8T3
	 F2J0avLaNTbqhToVMhzSk2okSfcOnAF46R5ZO94iNz/4xcfSr0Q383D/Kza1iHfLc1
	 4CikiIrxCzN48RRkcBAxfcFHX8Kec2tVJE42MoE1xMYC7cJ0ZMM8Vnl4sCjV/z2OPf
	 BBAdzOkuE5K1l2HZp5XLM1rETs5k4lwo33/tjJi3CbYEcOHg8Nm6Hii4VbyXiOGRCL
	 1i2QjJxk+a01pNOaZ1UVtOxjOdmtn3Gmj4j2PkuXqtWEd354R0O5/ihwNiC/gDG3LO
	 VcLbwfYvRM80w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9B5CCA490
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218983370.4356.13476041352676234415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3b96747ff3ba1b43d9d508dc2b1f8868f4fc0442abf48d371858be10f31b281
Date: Fri, 16 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792189833
