Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5632F7F19
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780152814; cv=none; b=WvUGCJVQmnTPBvdB21II5kqFb3hngBni13bmgXKNza4buGML5IQINnz8yjELfCvfOVHoNZklCQxFs0K7Zj0jP7iiZAj3czZvcg0DI3xe7iR1onUF6/sXhnOpj7inXLSipyuyUrWJ2QUWBirVB3bZD4Bf8ibieoE/EQkjCTWUiYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780152814; c=relaxed/simple;
	bh=Z11J7qTI6tes4A7JjZNjQj1a+vvXJRh2G5bCmV0eQVM=;
	h=To:Subject:From:Message-Id:Date; b=VXnqJfKwBjn4mbnTINc/P+Gf4CEB5ClL7sES+5zghRLpeJaA/FppZ9CG71XRd6XX1hcWAbiG97fITc4urlUt4Mql5Of6R71Ve8QJCaj4tA1Xj7ft6B5fxeUlo3oryB6rB3ndF/IZr4+YeVf8Yn6ZdRJCeC2wTjJMo35KY70iGqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vns06Fsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vns06Fsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8418C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780152813;
	bh=Z11J7qTI6tes4A7JjZNjQj1a+vvXJRh2G5bCmV0eQVM=;
	h=To:Subject:From:Date:From;
	b=Vns06Fsv1VUqegpfkjUlcx72dZ5hcsSi7SEwVWt22OWKf1Idd5D+9B2aYJN/4x+zc
	 wXw9gCgsnovvTxIm5qQ3ZHudByUzsX/mr9KSXibCWCASIeeIpr+lYWDiEMVvdZtU5w
	 sCKwXAD33GyZMU6Y9pckQY9+/TZh4ZQD3VQxjqDiWHliQ3y7NhWoVfdxgdUaTw7ioM
	 4qnrTvKhHtsNWfEpUAERNXNvL4F83f++DxhLVN9BEEXi6416RGePSAQNAdzPNDFVz2
	 U0ev+mDZ8DBgV131BXEdybcSS54pRjbwpoKky5d4VYzlp7/gc9EXrGKrezrSo7TFlJ
	 Nj9OUUI3E31Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7327CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 14:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015281367.18678.1837865034081577280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4a7335f7f90bb6465375c60e74b134e910fe04e740220a392c857f0a2bd3bc
Date: Sat, 30 May 2026 14:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780152813
