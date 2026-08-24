Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2201C1990A7
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787532634; cv=none; b=d50pa532Ga64ZcVlqQnnNssZjrgo6+7DTVWkbodFbtrTyrsysLvQjDYS2POchB1XaDgZWCx9suarByLt9+WHy0pQq2ouTuYfGasRd2KwCjj/DSKquSG4riwS4P0VFpXKFeY680pEkFTCjcW1joN4DS/SU6Qddi88gC2n4v5HuX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787532634; c=relaxed/simple;
	bh=OfSzXZX7t3wTrro2nSFXasLVAPhVmvwr6QiKfJB3e6Q=;
	h=To:Subject:From:Message-Id:Date; b=QaSK1omuqF6PuznxguadXnqvbKzNDqQIMiPZCRs8zSxQL66fzkdiKAPYVBCWuhb90szhmhd0dUGBncsrfFZEe/nMU10WcS4cQlbwsLlcHqwvloA97I9/HDn+IUrqpmTwZAkAMkD+FLjiJFQBVLPAVqGqVeUeBu5HPHY5HHVu/ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3Gz+uRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3Gz+uRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2F0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787532633;
	bh=OfSzXZX7t3wTrro2nSFXasLVAPhVmvwr6QiKfJB3e6Q=;
	h=To:Subject:From:Date:From;
	b=a3Gz+uRq16v2BBPGzvHRRNNjZsEiJKCiuWDvaEIq8IOoKF8FNhMZoY+8Ht1kOOOzr
	 iOF6fFGSIUa+jRQ6WokcMZRvVj+shr6g0692mY4XZxhOgM+uoXIIPpabuvavaPQv0j
	 caOL397tDJo+ns1nVYiROIApTDRnPCxpoD+WPPgagstcuIbpVLoPx+cA3ZzuA73P7Q
	 SmL8YbxlTnpEdTmglbJS/cj5uaF2vxMJmn1nnxwRV/55Do8AW2+ntAFt05VgCSOnCo
	 OgDTsod7cC5ATcjVBseTM83jeliiwFDWSLMdWNWQjjsw9ZnLeph5JVpBZxRTsnTNwi
	 e5qh1JGpCZ+IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA67AC5DF97
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753263368.29513.8049529009787139983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113c5a05b7819bf612415dfa2753b4ed5066d06f38ef6156dfc77ab078037c94
Date: Mon, 24 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787532633
