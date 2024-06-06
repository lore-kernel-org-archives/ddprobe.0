Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6855D182BD
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717642643; cv=none; b=lhof9galzBweJFrjGxRHInCLfneYLdUvCbRRdtCmZ1sWJhrghCbqWynar/GOEQlk6Fx9kzObNMztJJLXJ/tZsYkeZ0wKcAAJFGsxSYRTeoQzcHf7YI99B+FDBuTPw6ckh9jH0N8QJ/6wKvYZKtItMAUAS3jndYq5A2C5HfWbGKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717642643; c=relaxed/simple;
	bh=jRR35Voi1Ardj6qiHxi6qHuF/SVHq8gSeWjTMkB4c6c=;
	h=To:Subject:From:Message-Id:Date; b=HOK90XRJHcyy1neSld/F7D4GLN0yLbIAVgTxzH+bO0jVYKnZxOe00FfThxjmmsT+giRLeM5tox/qbVolCACZBGaOVNAzsPhYTGLFxkGxikaQJJiZqKEDVWdfgMXed9xikabkTrGzpXMzHP7MdtnDsloarJRjsCE+t1y4YBBXWog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0fBJOc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0fBJOc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1584C32786
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717642643;
	bh=jRR35Voi1Ardj6qiHxi6qHuF/SVHq8gSeWjTMkB4c6c=;
	h=To:Subject:From:Date:From;
	b=Y0fBJOc+VRsgSIdd1txYPg8eTQWxWoIRpbtc9NQYbkR2zh91uTDHNRNSpxsLDfZ8D
	 JlUAM2u1CIs3pp08ynLy4XLTKf9kfUt3FPbZbYSxlZRg+Al0JGvbV9NuzQ6HRZgc63
	 99Jjw7LGRP/Mj7aDmAmwjSqVgaKXkWHPrVrBs8AKkCtLziYVomB6tKe1S09YADnmS9
	 Bk01rEZsc4Mb8b7HduyFbW0FlekUTbYmEPNR9KBQav41MhwO8i6npfM/3XXOBJ830J
	 pEpvi/6/JUF3IxvWP76eMqOjKSkdq5faEPJU8iEA/MjkN2pyKpnKKDZhguqrg80AeB
	 cjBmNvxk/qP2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7D26C25B76
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 02:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764264287.22498.965234767562798750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ac86e42f544c3216cb781639932a8d8d578218a0ed494786b824029548e736
Date: Thu, 06 Jun 2024 02:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717642642
