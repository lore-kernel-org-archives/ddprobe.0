Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392DC1474CC
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776478054; cv=none; b=duKMMDo6EB/rz1HOAXzN4cYWQbPuT2YNm9Erl3WJ7qSj/rmy9Soc0jdljnIUu9Q5rYdRFOVHQC8HzeKdpq2rSlj3sdSGifGocG1pnQkstXPhtRmdr58OEgq+hMguSPTBvdkAo6adNXH9QJIFb71RE+v9B/tnZebi2MzvFwDML6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776478054; c=relaxed/simple;
	bh=7NCd4pmRo+pFbHcGseFZXOZLgkvkQXD4ttVVZJEZZCM=;
	h=To:Subject:From:Message-Id:Date; b=rflbqXq9/ai7gJUHdTKfqzxjYY5YFDhpPQqBicKu2tWLZ9a+SNsmgoG6mpyNdgqfkb2vt3bV5sNq1Qw1PHeS9mqqf/vHm1Ty5Mrxs7+P202I6jlXX1K3BlL/Hp7kjawOy015/0mITBQ6nA8eAK+q61QrKLDTGS4N5n+OxzeLZ10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qit2Wnkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qit2Wnkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9798C19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776478053;
	bh=7NCd4pmRo+pFbHcGseFZXOZLgkvkQXD4ttVVZJEZZCM=;
	h=To:Subject:From:Date:From;
	b=Qit2WnkcVmFL3X7zivlVr2k3PsgZakcKY4WMYYeTEgEs1R40RqgV2ZJOH28fScsau
	 O89IpbQQrx94iMPSkWFLnnrTdqEJqkNehUQuWjcLr8lfx2yev+x4Mv4Wnw39KbraSQ
	 u0RRRAxYX3wW5p1F/K2dfKYbwu3vg1SgpFgkDfLyNQw38Vn4SqwrKu9euq19dgCPOb
	 WHZ7XKe4eRvX+Krq2/jnRFEEMt58MNwx2hMbq2dqXAlSI/EUold/QmqKqGSilR3hTO
	 EKflMLh2o0LwYj1+OouVSkYM2qTw7LdOLX+QtFK520VmZAKXVeQpCPg7MO0IU60rRG
	 UO1VlsXT6NF1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD9EF99C71
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647805368.24219.10560597817179346077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179076cb3e1f6302d3371ba4d98031ad59ad753bd5c8c4d3a8e17cd19b3228f7
Date: Sat, 18 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776478053
