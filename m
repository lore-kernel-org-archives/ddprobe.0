Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B8F202961
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760127594; cv=none; b=OeIwtwS/xmcztvZ+Q6nVcS/nQ8t1zEKY1qarAwzDigGxvSQqfjbKb0qxgDp/pKmg9VbYnva55U0MIRLrsAl1QVKT6K6nPGelJXRt/9K6DBQc8jR12cukzB3IwBoqZNYsBppSFPa1GZwSku27F5Xma/rX+AbVhAMdP7llWWzN924=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760127594; c=relaxed/simple;
	bh=22U+d2XHAOysGWWXtAuauctKGqqPWLd2wMphRj7hwiQ=;
	h=To:Subject:From:Message-Id:Date; b=ddnTKC5hZiR96LoVqD0j/J35beyJJ7iIHMBWz+0y8E7RQrYAycMHDzCEai3G3m2N24voWPZsEYIcD+7IAFPUL0FPU3tUhspOMW02NH3JkSeg00PZNGJ9ZecRpLBcl7qhFxGAb2HdSInvRVavjokPa1tVdEZENkctLskuptZuJoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOGBCVEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOGBCVEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760127593;
	bh=22U+d2XHAOysGWWXtAuauctKGqqPWLd2wMphRj7hwiQ=;
	h=To:Subject:From:Date:From;
	b=bOGBCVEnlGH9TCEDcYV27HH0m9BuZvb4bnsm4M5snFIMyglC11Lhln8IzkzHDLoHd
	 nc0suBdJpG9pW4USgIdzs7JxCxoPGGfZm+rrZTF6EbvwdP5l5gZ21AJWQ/ka2FYGx/
	 7bkUtR+83sFF2tOtegTN/9iOdlfOzG5CJ/WbVCfEqVdAOVEFk4VmJAuc0BfXA39nB1
	 WOhf3Hj2i9PH7aMkHyIX+S9ZfCBQcE/b2iTKt51YvlcRUkgBFhOqpXoxBoYMmTyS7J
	 UI6/ivnaZZVqBgAhcWdwNgfZHFRWMwbClzoaW69F9Ac1v10KHvWOf6c68sOkjfZeBg
	 fTmJOoI60wItw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6DCCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012759358.7412.1917470837924278556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e62f90e59ae4f0398f0bc5b94b2a8fee48f7315af58a21fd4cdd531757f64a
Date: Fri, 10 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760127593
