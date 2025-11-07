Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED5A2FFF98
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762545594; cv=none; b=OZUj+JGPx2Mg0RghhtIMGzRnu2DvUN64lfkHKMkjiXY6MPoEdjJR1Pmlp6a4p+CkGAf7yplsWo4Gl/0yGOh7nxvXhuvvkfQe8yvH5RfrbJycc3kgMFUOnvfLzMEV3CLyq6CFkobQAkiAc9Y+MIYobTv1/PA3d3MhU6I2f7mgjhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762545594; c=relaxed/simple;
	bh=0qfNpeCfIxigR1DKfesIIJ5ieRg7E+9Sh1PKtUoC58k=;
	h=To:Subject:From:Message-Id:Date; b=nEfRZypiKeNgCfdrlXaAYwP6SGdh86tucXCkMkmeG8xGKu2w0NId1THAa9XkwW/Y0zxdhFmZBbcmCr+i7Rp9DCaMXWxicBhsPHLkPRz1wwQrkI1RgMAbftrSg3XN68lgSmSFx3ZzF8nnIAuw9oa/UpIkMSzl8rF77Xa4PO5nF2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o85Ac1PC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o85Ac1PC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C707C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762545593;
	bh=0qfNpeCfIxigR1DKfesIIJ5ieRg7E+9Sh1PKtUoC58k=;
	h=To:Subject:From:Date:From;
	b=o85Ac1PCvDXEhccGdM0OHttKhNRFuWmO3C7GPePvIshCGa4K5PPRJq8hRoa2KaP2c
	 61KwTCPDb91sfXTtCaWlCXH0J5cyv9qqrdUHz7IwnHBW+cq+mpQHhEm5qkkcgsOjIb
	 BOLWKZmZ+xxSw0y1c4xNIaOS2hKnFcGYRQ/7bcprhDGNrDqTDiyHmaAJ8G0pbIXDAd
	 +hFVNStb3rhfbzwGIiN8+WQbOCnM9DUty+H1iz8mpNpfZeSUCfmk8F71m9jycbSTWp
	 D3BMnasTTJ7pOGJLh97RIvoA2kArLEhnLlg/db00g+aLGxGBkPmsI3ImhB3rcs9LIh
	 PSbinBKhF2FZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9236FCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176254559359.26086.4847301780107668767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aaa11b3c663221a77bc619d284fe576e5ed62874453abdf2d1a3cb06a5824cf
Date: Fri, 07 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762545593
