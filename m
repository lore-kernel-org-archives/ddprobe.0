Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384DA208961
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770066834; cv=none; b=a4NXBkeXrO0gHqZSqgphj3e9jxCOjTlwBr+WJcscY0qd5DXtBoBDApSJGr8tcCctDQlRb0kMgAH2f38p8KvxCx08Pxlbm0n3Zws1hpErDa6eQUCRgdGW1lLhSNgFYt9ALPT1q818mVq1jv+++CIjFT7UK+E8r7upYMvbf9/tMUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770066834; c=relaxed/simple;
	bh=ac7l98IeM5IrA3uA5qnxNVH7rqs43wk4PnFm6TIxqxo=;
	h=To:Subject:From:Message-Id:Date; b=clkSspZ70z7Y9yqtPfRz0KT8adq9DRuVm2tzRMNcirhUQbbG6wN1vexCoWsKOqQWVkghJsiu8shRTUnPZI6/4YlMgKu+XRcZ10dVbr7DqOZ/iaOG0AOXwLf3FD8f790WmQf0RCkLE09NoEhdUJsJSuGrLkWm08ueLHXc9XhngLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PThbH8dI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PThbH8dI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8087C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770066833;
	bh=ac7l98IeM5IrA3uA5qnxNVH7rqs43wk4PnFm6TIxqxo=;
	h=To:Subject:From:Date:From;
	b=PThbH8dIWX84uLAgwmF9qOv0+eESTteqSgFiRdP6MoLZQdsEsBNVlqy0BN7GZxhKw
	 6xre0XHrKYH7CULsKHtQUkBFJBULwX/KopaqcrdY/XqdC7KQbFuo2Mbpcbr2h8zJ+x
	 f7AYHmDS02cfloQqieCpGyHVOQbwtXL+kUAi1K52C8/p1NAsfR2lQVtRDTuuVZh2Vg
	 GsSQ/H3sF95eg82E6+TpDk3pS/qUeTeZUGml+I51PuycyhRIxioK1nzTH4JOVKhOPM
	 1uJW5yjG4eBxKYLTQNedb3Rx+F7xZHoCiJaApNA6VIJp4cZEeZ7RlLROExGndHorfv
	 Sx0bUr+PD2ZSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A7BE7FDDC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006683372.3835.5908946582818289614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac140490fd836d1cb30cc43f25cc44d495d4a183f73f7e7cf851436be148db55
Date: Mon, 02 Feb 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770066833
