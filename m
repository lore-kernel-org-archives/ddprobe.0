Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474E51514C6
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720561583; cv=none; b=CpX68muDBjoApjvShHj5T5+qxA11CXTlktix3zf0+JWotZVnCENYjLKsBB1qPtfUxIstD1e/rH6iztvq4dPJmIg2AsWrWdHzFwWKIJ+FDgAgWR7WR+LgeglQDv4WXadcwFpvrV3sYGKiYVXaaC3zOK5uHLgEQi4c98evyVkbsxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720561583; c=relaxed/simple;
	bh=soR+FaxKjXn+tcx828lOru4tXL85THNpBJrMShSXuiM=;
	h=To:Subject:From:Message-Id:Date; b=onJra9t2asrfoUriEEzhbwrmwa5xe8Mbv7GhstPyZsDNrG1TOzo6XeM3LcTH7uKKkrelKXa9o5C7wG1/T79K3FIIjtUAmekhvSxGFormwWUnF7r3/zc/wf+mzzoioGto45kCyL0uHcXjW6gzJBRQ3u18cY3o388r/thPpS5SFFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C86vjXiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C86vjXiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C7AC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720561582;
	bh=soR+FaxKjXn+tcx828lOru4tXL85THNpBJrMShSXuiM=;
	h=To:Subject:From:Date:From;
	b=C86vjXiJQ6NL6nFi2zT9U4rZBWduuCjsNry4RFZZ1u238ccu6qDNUd3v4EXAx7ZL4
	 kkiqcvsLAIlQ4BdxRaKFLlYYIRqeNkY1JVzXRkZ10SybPoXhNvTUb/JC9+Yj9h1+5p
	 VqTVm3bLz+Vd0xSHp5rIREyRKRkpSC+r4ydjL/4XHMxw/D7JMtEMVKadAlrw6s0TlN
	 X5MqVmqXPdfycJBEYdxlTcFdNB00grBbeuUM7YdHxGoZHOHEdawIhk9esQAGu/Xq7q
	 T8SJSsUM/94bODgYjDE0UjhC8MzRbPY+qeqHz3eQSGL/Cxs/4aSz3RqAXn8uif8044
	 i+FD755tmaI2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2701C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056158278.11994.8137363530784932654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cac9f13c6edf7e4300fbb042faec04408348e98e626775cd3fcdb806e907b74
Date: Tue, 09 Jul 2024 21:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720561582
