Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D47C3B2A0
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762107594; cv=none; b=sbu0L2tR6G9OWpDF935MbQ5k12XcO3IUVtFRcFZNMSLdSQvmqAUc3AFzmTkGtj+ORH55U7UTyBF8l8Krwq8IwYu3J4M+eOjh+hxR+VxpNk8dQQsYuY8A37PGwL10X7qlmjtQ8F1vmu6ZbNWz9VdjheCNXK8vRTFuheIqkT2oBzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762107594; c=relaxed/simple;
	bh=OuR4ikeBeOvE8JsOHLDIA5aLHDT1DGLz/UOLdg7EV+w=;
	h=To:Subject:From:Message-Id:Date; b=sUxYdoJM9cPJeGoiVTiuwrtzsE2OK0DpT3WVkvoK5Hi4IWASef65K/nHcIINlgxvcE9RX9zyF6X6ntBpgF5JkkyWnV5OwdJEiw+v8f/c0rrtG+wH5ceGV6hcB2/D937qA27cr7a+GhKsgj0zypjakTnTj0q1ZDaaXhBz651cfNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiJvhdrN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiJvhdrN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0FFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762107593;
	bh=OuR4ikeBeOvE8JsOHLDIA5aLHDT1DGLz/UOLdg7EV+w=;
	h=To:Subject:From:Date:From;
	b=QiJvhdrN13vZq0E8t4bOmtPE0bcLv6xWTPLb78lmGexVHjPgsA4DqsKW5oPivm7KA
	 TCfWr79zt7NY/pySW9yRbgV7GlaNQQ371+SmzPvSAuiaUWkMGR6eiy/kMdHNR+4KH/
	 bKq0KMbkRqCNc9lBqWsesJKy7E52GJQdwE3DNu7Kw0L3JxQKaPE/u/iHcG5vjoJ0ls
	 mVX1beTXM/OSk0SaAJ6ORSkmpTXb1lIr0F0BvmHjl+8hePWnxv94M+YosOw5Dk6sRF
	 CCJSvnliZXaYfQK4bqRvSHPYe85Y8Dxbo29lrQ59hpEAh7JeyiIcGMASa13YzRGzDE
	 GX/Ca45UxbXIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86A5CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210759364.24901.1363436747823206848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e6628ed92ffd077cb6f9fb7a96788a88c4aaa38e5c541208e6cc2a371550fd
Date: Sun, 02 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762107593
