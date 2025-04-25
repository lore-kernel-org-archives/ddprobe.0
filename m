Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6FE17A2FD
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745624994; cv=none; b=C/3wB/iL3jjodceraPWHOnmESHO0HlDQljPUrHPQ74ABwshIJDjn+FbSYQyZagrHUWfXKC71lj6Muv/tr0/wxmbpckBSTqDinGEyjlsDfz9GoW++jg6i3EArxSJclXpDSZcM1g9gKgbrIv87LBnCRxYXsNmIvk0OpGYOmKErQA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745624994; c=relaxed/simple;
	bh=y566EQS0KtV8jqaeCDsFhvRgEucSOJhVKW/HlYzVID4=;
	h=To:Subject:From:Message-Id:Date; b=muZ4efSv1oohkMVtd9ePeiNqMgCzRiGkWFGDEg6duqtRU/kGT+gTLVjdqV524dEi2iyUywORHaXBNAbqMGeo39HoaD/5hAcE/chnM8RDhUe0ucTVpGkvyUb/dNJ4Lu/e/kbYlzuPp/CVJMpp4AKx9HHo5ZbbSSMFNtn0st2mUpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1TpGMCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1TpGMCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A610DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745624993;
	bh=y566EQS0KtV8jqaeCDsFhvRgEucSOJhVKW/HlYzVID4=;
	h=To:Subject:From:Date:From;
	b=U1TpGMCkjqH/3qSZIak4Z4vWumjAJj+7MRgcmlDJX+7GDhoZI1x/IiP5pLbiSGJw2
	 SwnNIZepCr/AOl94SV/FwdNyKyDT+cnMokJGv5Fd/yRD5mxH+lSws12XoZ/aap7VK/
	 WuXOF5ZbdOtmGUTxig9CP0ipKpI+chVeDAdR98bZhfkkLSm92dF5ZaCCZt13SUSzXR
	 mVakNGiXsrZwksI1rKLoQePG8bX7RYqiuiqjj5IIIcJsnrCb9ZkZojYv8wFPeX4NQg
	 674tNSg9wAUrc3M4V8i3PfythPpLLemdnCEzJzwzNltH580hcBun3pP05p8/K1+iTt
	 acmNOiXs+YYgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94072C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562499357.26689.13029917276717616702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd8ef7bf694c3fbd4b601f6fb120ba8c162f0a9cf428dc956202ad32a7db962
Date: Fri, 25 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745624993
