Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEB922068F
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766426034; cv=none; b=Jr4BmtNMhsQCFslLfJG/dTzT31vYgtDfxAMIUHfYVOV1L9UKRagB7Yk6HKNfYS4L39G55kqJfcVkeHGCJd+3ANIT1EKHm6IRUFkAxlRLS1IhwAU6rsgvN4X3ARcE6FZeU3+la3SkQUoqvbw5nKwybRX2XNb7JPMcCk62eJbOonk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766426034; c=relaxed/simple;
	bh=k4+ILBlgoAVzcK6udG6fXhDNsRlEab4JHVScjRntbEI=;
	h=To:Subject:From:Message-Id:Date; b=M4hHE8sdbAXEmbkKeYlkuUdMqI2rhny56Uc82f9NdA7AvSBorDOnR2+4P7mpatHyhoHEfRPPwp99wlGIL7JwRnza8xjlyE8ebfZ+kg0+nCHEiZhzo2L3mbqBbmVHM9urz92ZfrvObzjQqxcpVCKZCCLvzlEG4bDWhG3lDjXNPkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuBQZmnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuBQZmnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9F6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766426033;
	bh=k4+ILBlgoAVzcK6udG6fXhDNsRlEab4JHVScjRntbEI=;
	h=To:Subject:From:Date:From;
	b=LuBQZmnvhD6mtD+BvvhA2iJNRlSAbbcxDYyagFt5HaNKHIE18YuWc1qFEkpyhAR+S
	 Om7UqM5xnUmocsBEinPgHXeATdg2dqOwN86r8FDFmXWgBtUH9U8ZIifGXtKC+rg4hq
	 aQXW4K1yaz14wsB70GCYIjODlH5+QvXq3cl8PI1QnWU8DereNWeGEBu5eBgtAYa9o/
	 ndk3BZ8c+c3Y8ZKz6HyRvrSY3LNBniA7PlAH6xH4zLzCNw88LGqba51CkHDsNgCdEa
	 hL7TuJdpdiYyh8xLdoMtFoT1jw75WxpmEiYiXm8t8G8g11dsqAmx+EtgI4vCbrR4lR
	 oEoJMUm2kOOiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB9FE6780F
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642603358.3867.13471040545564575885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7220f5f8c422ded326bdd2cbb3a683dbcdcf91a6f2b7ae213b74cad347deb576
Date: Mon, 22 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766426033
