Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BECF2BD08
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726514754; cv=none; b=H3U8W+LEJw2zF/GYMEQUtZ7777cs4IYQcaEjnRX2vTzw40uDp/DgqvRbYVQixrTrLfuulFsfQ6+A1uBer5SPn+n6gu6a2B+kg70QVohOyiCEJdt0f6jfacefQJR7Zws5NTctu98hWoqG5qOszGPTiQ8WF8R/Rq2N3VNoP5KEEFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726514754; c=relaxed/simple;
	bh=kS6s46vF/eOxO/SY5JLSMCthFmwSDbeBemD9R4gjrF4=;
	h=To:Subject:From:Message-Id:Date; b=J8RnXCLvUOptwB/qVmqYdzOpdPGvJhwps5ryKk/MKff8VQhTJ3alskr0yozqs/X3Ie17arQzl2Zt0XelqM0gpx+Z78F3L4FI2Li+WWrNWsOFGX4Ps//SfvrvPPafRaf7KRyzESlP2wfUZSXcvoi9Qjpcy+3qiUtNiVYFPAw/MCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXcYTPoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXcYTPoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61E9C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726514753;
	bh=kS6s46vF/eOxO/SY5JLSMCthFmwSDbeBemD9R4gjrF4=;
	h=To:Subject:From:Date:From;
	b=oXcYTPoCDdG3kOitj7i+lY4if7JgJKmOTy3DoQC2kMECWxGK8n17khSu6uI62ZKbp
	 WzhAsr4Nb9SOPGgrE6IbXk34D9vSMQsqJBt2+k3qAorm1JJND1ByFEcZW6MINBUDLk
	 vzJtqCh0LYEGEs7aczzTthu0jxxnHiMfGmssAzFlNW7OHrptZdhs0/crqkvfrgTr4m
	 ppLhiY0VNjJzGYvizQInUlc5QV0Aa48U0gFAQ/LZU+5oLi/sWqQ5XIGDSzbfDwdA2o
	 zJSgDaSpt3l54jVNPO4mmktL3ioPyG8vQ2CE/jlICn+3B8RLg8Wnlzq+XJ6fRYIfVK
	 LISiSfBvIEa4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B645C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172651475360.23496.1666723717055026261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60dc9d25464f681acca68cbba81cfddd153c26fa06cb81c69b79ffb5d61aaa13
Date: Mon, 16 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726514753
