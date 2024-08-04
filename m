Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305E83BB47
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722791754; cv=none; b=l+ztrJr43F7yBnUlZ77994z68X4z6PBGB5qi4y2IdR+SIyNCj9PHMJ8Sri71XkkEagox1B1IsNmb1nC4DHGewAnLFkg4AmVg/LoUkN+FjWzH7lrY7yyEV06JeALcFganBXZE+WnmfKkSUMukcgGxkuNwJcWqtWo+x0mMTwaLLLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722791754; c=relaxed/simple;
	bh=wFkeqtgcJz3ArBGi5hUpJR4ZdmBiEQiJm/5/3Pndjaw=;
	h=To:Subject:From:Message-Id:Date; b=JI01EqG9kvivO2teh3DZ4X3QwSeIfnOve+nbM7l4F4Z3W9wBuxJqEt9N7cdNQkGqQZcj8JmFV/eM4d3OkEL3opKmGPle8sap1XZBA849/DInNvRDWVfRTSJ5YGvjyGZPzlQVkhZJjoTmTbEq7pc6bkM3SCFv4PgV699D3uvYfMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MueVa1gc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MueVa1gc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84B9C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722791753;
	bh=wFkeqtgcJz3ArBGi5hUpJR4ZdmBiEQiJm/5/3Pndjaw=;
	h=To:Subject:From:Date:From;
	b=MueVa1gcE3Jt9Q0SvFNCxY6si3We4uI6A+ERsMvv8EH36roOS6qPyTJoW64oC+ybR
	 7lS7n3JtswgRNwy8ncchmGFmPQrEBj8ppEcSWfFczGlKvLTcIcsNVD9NHchGEJO/oi
	 MzlC/Pa6RAoNt2hHMt2MVvBCYMvkLdUEK97DTtRJ8e0WhBpyuQALBN2Tz+SYhr/CK/
	 JzswF0YPm1gJfyv4j1ax0X/vdqaI0W6gPzed2e4tWxpAlMD7r6JLXnuAKiqajee8QM
	 ZabP0tqMpmrGX7pQ3FgzJNt7uDQHZfn8+5Ly7UuyPw1IQRbgTlZrW4aVOLk3k1Pfyv
	 dHAAL5AjAiczQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96176C3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172279175360.17389.1096232875068533599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00cd38e39739b1b10e0614656e791d3b303612747d85f240e71948fb95487177
Date: Sun, 04 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722791753
