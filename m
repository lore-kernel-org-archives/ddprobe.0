Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0781598EE
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712749097; cv=none; b=UAjBAg6H4EsOX7/3z80XaVIOSmzin+MfI8pprPvToyU7Bi/76PLJt0egdwWWsQ0R3lEfzgU3pH1t9iwH6H869MPlyP9ymClT08CojhTaOOJZZH8bBijFbhX7Vnl4NZ89GFmNtGGrkrpjL0hAUGacz170S+Abs01Ci7VxAO7su/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712749097; c=relaxed/simple;
	bh=i6QwrTinxEkd4gyH8hhqeS0r/p3lJJPdqhdatqRitgc=;
	h=To:Subject:From:Message-Id:Date; b=APiVy0BhnTmpTBNizq6zKYTxAURjV35AEW07waTuEItFdiLb1BM5wRXpTSO72g7Vn1WoCWnoKygkRBUXF6XgYk20pK6ETIEcrDFnFp21NIDcIn+Kokr8roIwdonta1yZ9lw514W6GQQzVSMpir/kW8EJ7t8vec4XLlauiXZFfuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRBcNh0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRBcNh0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C07C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712749096;
	bh=i6QwrTinxEkd4gyH8hhqeS0r/p3lJJPdqhdatqRitgc=;
	h=To:Subject:From:Date:From;
	b=LRBcNh0iQzMV5gjbx7FfDCk67vYS5VGIFpJDpcGb8tbJ99quCIwwmMCl3dPj1sLAf
	 yEyspI0vu6vRvdC88RrU29fSMqMlSyNTZvKkNHOphw7+RpqhbgJIxW83dK1zpUQICg
	 rb30F5ZPqUMICzDsu0xklK4pvbwDb7tJG6pnLuyCvTGnRUwAIGJl0z8qTNrKHcmDvC
	 8LSkMjpyjjff9B7cC9MDChO6q6++0UKC7CJD+2F13PCZn5sexm+wfmyRUYla1xdRtD
	 p0Eg0mXi7Qi7JlbXK2okeHHjcgxhJuNyR4l7cgUqA6xwiPNh7JPK8fLfMhZGi8INUC
	 3iGGyP66FQmzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C0DCD128A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171274909640.28347.3412153942177776209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10228d3c0b210c126c20c9340e3e15113afea86c86c60e2d53132c5df9b389f2
Date: Wed, 10 Apr 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712749096
