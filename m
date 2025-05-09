Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB9521CC60
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746811794; cv=none; b=fqw2ri6bwoJ90G/o2hfJ65+nVk2MwVihEUhC1cvJaIjhudcxN1PtSHeYD96AmDKlaK/Lzz0RaH04CAi1GlIll2LqZ2PXHo/d6rJjXVIBxXr4aUN/t6+z39+Ohws2kNaaTQ51Qb768GoAmSZyfMAfQNOR6VOg+gK679mY7GE909A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746811794; c=relaxed/simple;
	bh=cbO6ltGAFghrqTgovC0kstnZSeeBXOh9Mk3LS2TVSH0=;
	h=To:Subject:From:Message-Id:Date; b=oRV4kuMqId/+6P8ngdwV2xmIX/08mgdR3sfKeF3jLUnmOZfbscahxZa9q3HNOKFdafwuQfrbgx+EIbcldwbEHo56WtYTP87rW+XH5IlGhWLf2U5YDAtwYLiaD4ZjCwyQ+vM8fLB79F/XMpKqUY2xzbB1c2o9EKzloilO5AEyD1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFebHnSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFebHnSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61F6C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746811793;
	bh=cbO6ltGAFghrqTgovC0kstnZSeeBXOh9Mk3LS2TVSH0=;
	h=To:Subject:From:Date:From;
	b=XFebHnSVm8cUjjTr3IEz/03eP8xb9vZBMlXv0uhRLAY+XPEzinqtcalogXOxn4oDF
	 4xtouS8y3s6FDrMnrfLiFU5sSEzxPGATnmyidHVgkkAdFuo77X7qwNAImg8t88CVrR
	 JprEE4GbjFn5mEuXWHcQc9zSi+eIEYdSbIKd92D3Sb95cQvcaqaFCYzoO8LMHm68fi
	 YFHLQhF6SeXcl/WrjLMF/prAS3J8EwISZjmCTJBYnuZVSG31F5dxcM/44FY5mk+o0+
	 rEktsBYXptliX/hsL4s6V7vO3bxubH6aNWA0DJsGrOkowHeA0Ztcqr4+KpVkFldLp8
	 eWZLdP0IrzMEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91266C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681179357.18552.2623449529042698600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ae79735dc264b92069b621007562df3c9288a107427c953c81d63a034a5230
Date: Fri, 09 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746811793
