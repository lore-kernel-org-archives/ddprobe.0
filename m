Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD9E175A80
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777073254; cv=none; b=Xno0cn3GCCbH03RMIzUEN4KB7Qwj6pd/tnCe6aahqCFP4uX8oCn27lxywyrnyAhJkERW8AyE7dtybVlsGQvT4hH1elLKTYgw+fCj/CKVIjKHW4jesZc/VwZkMdUe7U7cfyKeRKn++gA3Yk/Gku5TqCbIjzGp+cdyestjZW9E640=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777073254; c=relaxed/simple;
	bh=/Qz4JZMjSJqasXX6sofDrRyciF0V9lcZ4wI6p0TFS+A=;
	h=To:Subject:From:Message-Id:Date; b=rypW8bYppExAKS67Xklad74xzNkQc/VhriNPz5Lxo51UH69sVrbWb39t0cmcPoovNk9P9SGyYFiO6aDfg6BkpCyaYvpj1t0pi/XNgRphn7WlXOY+n1JgiGjS/7VFVVU0qYA1vsk7GFwF+U9cG297OH9fSl9kp8/mp2MTtI/2yF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTkdmD/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTkdmD/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81E5C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777073253;
	bh=/Qz4JZMjSJqasXX6sofDrRyciF0V9lcZ4wI6p0TFS+A=;
	h=To:Subject:From:Date:From;
	b=jTkdmD/unAKm3ngJpxIhrOJpcaNEZb3gxzqHVD7NVlVOtf2UcOrx1L+XWOIblZE0v
	 pDYAxhUbbzcTnbAuFVr7gXpoxKaP84WjqExZd5b/hXM58lek5dSbifZm9xpmtpb4cc
	 64oYZiuqq14bM+/ZQPSEZ6lNhtAuZnXq55GP/9kQKF8GoBV7g/pbp5NJmX9goBVBJm
	 VW1ATcIKvZTY9TTkAoa3x2tBiW7gqDS4enqHdXYtvc9MsrRnbpxKWCB87ANWhrr39x
	 q+tPYndt8z994hpCyhNZpRZB1sXAP+bFiKL6pyYkNfYEZXF3CmZ+SZsc+sEI9ZzT7R
	 yLm4NtD3+8Nvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9882FF8850
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707325368.29443.7918874623064689164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f0b4f060ac952a541a4abf878a90b55553286f8bb93c74a4109e6b02d974d3
Date: Fri, 24 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777073253
