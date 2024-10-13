Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AF641C62
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728791754; cv=none; b=SrQRGr1ESfVRabgWMrbPtHZGA72sGRkIcg8yKqAREz+eoOkt0tpefUwvwnVQLsyT1wvdtY9L1PT8tRYEvWoZUHSfZpMAamPwigKB+zDOFxH+oiG/RNp93LPJjo+i9DLIGLxUQUPINs0bHE2X5vmrTJrbgztIqTo5YtA+heRFjAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728791754; c=relaxed/simple;
	bh=CH8eHXDVdrwyWPDQ1s53FW/um8IJxGWVqRu64VKjNzo=;
	h=To:Subject:From:Message-Id:Date; b=d8ImBGO98g6QQnt2eStTuxUfNUjCUxp6yhFfWAiElZHYrbi4H4vlLaXu+CexliQ9pqox7Ua2xO4hr6hqhI1u6qUJD1IfOyVjF/ASc44wjHBS3gLt3rN5up4FRzMo9xyBZktPctA5c1sTqp+jPCp2HxV5liETIcKeDg0uztBfXGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpX9mwkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpX9mwkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EC6C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728791753;
	bh=CH8eHXDVdrwyWPDQ1s53FW/um8IJxGWVqRu64VKjNzo=;
	h=To:Subject:From:Date:From;
	b=dpX9mwkxVndCSYv+SUaM8VYW39qYpf7zmQNlfHYwnjJsno8xJWkQp4Ia1WhQlzCoi
	 jMUyqMBV2UnI442cGbZt9GOCc9SlAdnDQTnUaHSQNDE6rhoPRzb27T/4c4qo//9mZj
	 crdgPOzVZ7txi9ZAb8CPchRHZWpBlmIG9dUjcftE6oIR7EZlWnTr66y6J/fdTwDGpg
	 YUdf+Tr+XIJcpQYHqK24MC2QdOOq5jiQdDRQSUZlckc7xrALRBRUvJq0pdwTOKAWWJ
	 whUZA6rSud7MLrX5zACZgAy31sRRssFOAzroU6wp4+81NHIC+kppF6peV4gfiBog9g
	 cBszXiAmqHsZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D460CF2592
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172879175363.6030.1935832902343538806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb41119df69365d715d410019740f62062a92c85a4fc42d6af99af19f5c9c972
Date: Sun, 13 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728791753
