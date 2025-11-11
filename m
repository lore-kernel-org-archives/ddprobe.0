Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BB1277CA4
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762839594; cv=none; b=Luwr4nm8+7JMR2qRsevgeNXUwgYsGXM3QhPPoq6IMcBJSM6mW+xtmXR4kM/I1EAlBEs9KGDQyJ0WCczNO+TuXBjeuWsdqN7ZrQYTohcvwe8nkWeub80MCY/E5lrOxwohSwSb0f3Ad1iZdaFfChr3yDcr/3K731Eovq9t4EZVr3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762839594; c=relaxed/simple;
	bh=C4y+Rl+08gC3m8qVGYFzv/sCHMLREzEdjxiUxcFrifM=;
	h=To:Subject:From:Message-Id:Date; b=rChb06DFpFMTSPLEPyMVY6bJDlVO/fzCbd65C4WJuqMdE2KqE2euwZxX2Eutofk1BBqc4ec2xHe+2/nMlBE+5a9ta31eYRydxvSrV0RWFive31eMr8KNbJDnUIqM4mAtl0eXTt26XeG6IW+LGL1xOsrORZKAvWQ3wEOVS8r2lxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uxwe+Qu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uxwe+Qu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA85C116D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762839593;
	bh=C4y+Rl+08gC3m8qVGYFzv/sCHMLREzEdjxiUxcFrifM=;
	h=To:Subject:From:Date:From;
	b=Uxwe+Qu1g9RrWnwuQYbRIu1uyFj66nLKM/CWdMKzplIet15ZJKwdBpLBByPhsRYm5
	 tUx/gPCRzJQwpsa3e8w9kBVZ9OxylxhvED1mrzh5BdAi+zsKzwkbrHvfCpqrbacPH2
	 as0FxHNifmbZ8DvE3IzYUWlxABnWcs8tgSb9MRlR9GTdsGIbRfFo+PKDp+0UXUa/mp
	 on47Rc2ky8FfoKjTIqOKMhBAETF5pEWynoTRMPL44HqsU6CU2ybYKUNXPyhfTjc88w
	 sDc+DX+il1Vi71cwxvqBwXvE1jjMJemTDazNnpAi+rcBeRJMmsiy891jrvZ14n4Xst
	 KZ5q8wbImLA0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92104CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283959358.10805.15527469415397644322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f6f625d8032053a61f3289e5be71d5727b87912d08ad0d73920a222958663e
Date: Tue, 11 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762839593
