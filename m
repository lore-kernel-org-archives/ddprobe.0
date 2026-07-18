Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAA934389E
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784387314; cv=none; b=Rh1ztyXcxQbGglSiZfegFc7Mog0UK+996i9Kwjtf3C694TYzQZmOoqbhlPAXr0a3L1dprOA1N23NWvFrZRr7VmN+3LOdH7d7O63cXzqabgKzb3IewQM5UAcDfp1bnFbzPoc/rrtWJ/3j+LXd1qJIaFe0euQK9VybuSlJ4NRdYuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784387314; c=relaxed/simple;
	bh=rdO3AI16+fEr0tSMg8Qid1+47cYsbYXBkm87NEtT0yw=;
	h=To:Subject:From:Message-Id:Date; b=Jn9VfYtUBTB9dODT1Ncfuwe1r5rGnWduYD67Vp2vPF0KkWAZLLGkwTxdsRBrnfEmxFi6jkzhJsuvvDhEa0/c5PQUf6Kd1L8pptYd1qPrG8iH4zN5NS3wAojzxE8tAMMpAPHGJ7npBun3peQQ9pWgG0ncICH901XIqqjSeWv72Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHvLyHli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHvLyHli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0192C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784387313;
	bh=rdO3AI16+fEr0tSMg8Qid1+47cYsbYXBkm87NEtT0yw=;
	h=To:Subject:From:Date:From;
	b=YHvLyHliGIBWH8+BLNg6LXbhRJa79CDpAzgw9FwHRFk/IXjoAZSogMOE3cuTqJEK2
	 aYMv386TcukcR92f4ruNneic9M4GSmHx9Cy/8dspz5eiCkyErFb5PwWcB8Mv9BYPXG
	 2ZCjHdzVgIoKGpBVzqsfIngQJILliuyWtr6WcYwIhvq9tO2Z9UJmFEBh+eyelbwCB2
	 eFpNsNtbIXBeniO9OeYRvMCrexrqtZer56il50xVdkc3BO6FS/v2rrFi8bDW9aJsjk
	 cgV6nbRjJWUwkkqQb5OteRNyDlpYRjKaQivBCs5s5Qh6iB8sozmn5ChBthnUrlZd42
	 fmIDX6di08UvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9E8C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178438731368.795.2801882902842579741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3fd15ae04ff94ebee23d3daa0854b17d902fd10dd205bf1a7b6309de16ad865
Date: Sat, 18 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784387313
