Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF161AA79A
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731396954; cv=none; b=Bi7qP1B/kUdXixRYsKmhFVlS4eX/hy0sh8VfqWYKOxsVL5E3HDjViAimBstbYf3h2zubBWhlB2rDOkQZhri/GyLZZX9KJKeRcsjnIbSkKCnyZYbfH7ivCv0KRrQIQ0U8lPE4h+INUouVOx9+x5ZvL3OnbQWthWUfQKmAbxcbt7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731396954; c=relaxed/simple;
	bh=QegBSFtZVmjDrjxRl6aTKcK37jybj/IwOd8SUUnM4ak=;
	h=To:Subject:From:Message-Id:Date; b=OR7Z/NE6Cn/HLn49rEB/RNWmpgt9gN+b66Ye3qKPeg3hgYcxmB8oLGozsrRuBOtHNhjit827mBbGeO2iRMnBHKbCsXNCd174Ik5pqiovbID0Ju3X0hFCU85ej+aUhqHpSQIhKYyLfhjFacJFS17gxZsPvO0qObYO/qaYKamyZFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6R2dr8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6R2dr8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1F0C4CED4
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731396953;
	bh=QegBSFtZVmjDrjxRl6aTKcK37jybj/IwOd8SUUnM4ak=;
	h=To:Subject:From:Date:From;
	b=F6R2dr8XHUo4++rSHtsK2Zagdmv1XeBwJE//lUjmvDc8sSn4jTwLoix6Ezvb9p+D0
	 RQdpvOtVYIq9G40ISymoTDro8Jt5VPzwYjPLgnLRWVw+m4My3xS5BFupL5qtAUQsCI
	 DDJEbqzLKPi70Ivhu84XKPjS97CaetW4FQ4+7Hlfj68TUzpY3sRuoTWZopLTOtJCzB
	 RddNK4XCLoMzshYc4wOeWRIfGZCl7tm7xJLwUY/ZPLWeIemwneot+i0GbVejsfq174
	 6cxbUdE73Q75+haxJrHR8D3g66iHE5BetQbPa50TKovzF7ctvxTI0CWIjxE33bowZx
	 Z5uPfnWcd9C6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9886AD41D63
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173139695361.12469.5808233597415433432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d9670dd2fb6dd467f41728e49fe52aef0691ef9bd7c203ecf96b39fdeff61b
Date: Tue, 12 Nov 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731396953
