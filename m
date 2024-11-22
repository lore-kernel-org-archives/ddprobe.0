Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE0FB67F
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732272354; cv=none; b=sNpybkeYKEd4gjPIP0CZY/0VvUSH/tfN9gC2BOqSHlkcWCjscJVqZG6uPNOekZs9yKkr1P9KHDmnAvtAp+Wi2GNdBf+Fdi2He85GaxS8NMUDnms1717NieJlx833gpUuPmmLBl7bGlgMylvUjklDlq2xebY6CW3emdAFGMgJ1gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732272354; c=relaxed/simple;
	bh=+zmwf+eZ8YzKWMB6H9ztEzr18686locjH0zCNG5KMvc=;
	h=To:Subject:From:Message-Id:Date; b=FS3xjMHdlF7qXhvesOsawh4Nio2dlbQT7cbkRU2NuPIO0X4zyLdQqkDYsRcCjekFc23CyIGF7umdCJLsTgyJJInrAQjzR9DM1cg9jaaDJicKsEoNdMomxae4wYLVV4tcERL1G5PdzGpJWu8G3XSpksadueiX4mcSD4K7KklQRC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZWpiBQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZWpiBQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6544C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732272353;
	bh=+zmwf+eZ8YzKWMB6H9ztEzr18686locjH0zCNG5KMvc=;
	h=To:Subject:From:Date:From;
	b=NZWpiBQvbL/u6LguZD05eGfKS2orki4dxe1Q0rhm7kP/QFrERjGLSPPfwDZtNIV5k
	 rr4yVuTML70/sb2OGtsuQP3R3UOQSbyI85oyiqziqWRE3z5r/S2DAcdMVTi1Klg50N
	 hOTU86ExxsxHWJO2mFQ3V7NpMHt8Q+iJYFL7i+/6F5C+mjWCMqN4LQL85K79vbQvjh
	 TRO25OfbMVGi08Xj5966ULo8q277OLC6cu8Cp21wqbbqrlNxlvM3yDzySI+b71aL4A
	 Dk9ltBsJG0/ovesimrTiGTlFJZ3Kxh4o2IXmfjsTUGLlF4P+h6jpaeZyeT36dJ4IVE
	 m8maBOqUm2l9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7C0D75E21
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173227235358.30552.15531714658228984317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4913a3688d2ca8bb5d256b1d54f8707c6ea083519478663cef1f851394d57e7d
Date: Fri, 22 Nov 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732272353
