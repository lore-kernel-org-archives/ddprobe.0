Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B0A3B388A
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773357294; cv=none; b=WyjjwfrefxMdxEP8K+PxNy5RiBKoCt+meAGycPchJ+nWMTUYZWBtVKYK6bitb6/9XzWXvAaZ89bJUK+JMsdRDJvbe/6itvq+vBBwyPL8e4Pp1t289aNB9pfsgtvtnalMb9/HACTwOAylA+uYxsYI7TbG6qxYh3eHz6+FuYZQp5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773357294; c=relaxed/simple;
	bh=L4Irub7tUwKpUU/q0YCXLfiXDHEWFerlVG9aWIjJxxU=;
	h=To:Subject:From:Message-Id:Date; b=Zx68oSGU3dW9M1lP4oLZ+DFmrnl1tVfV14dboH/tc5QfowFOwtNMTCAIvTMgKJnY82/M0wF5avAQns5WZu4LmOuftW6Z2MAZ4dDafKYkHFxPWuXNErH+YcnbhXFl3zz15d5ubc21tNKefRone9c/JnYP+uViVanMgklRReu6CLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWgI/nfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWgI/nfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A543DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773357293;
	bh=L4Irub7tUwKpUU/q0YCXLfiXDHEWFerlVG9aWIjJxxU=;
	h=To:Subject:From:Date:From;
	b=bWgI/nfp0HYLD1JDLxo6X9FECrHeeVf2Z8PeE+IU+jKYjbwcIuGFkdaadmVtaxtBC
	 RDstsEeCZu4sYfc5HI3KCvGBgDNsHSKNE6x/ItewYEOaIy/sHPSDPmqsXpmvYfSqRU
	 7xfJpLGeBbw0kyIuHvyAckXAJTV2Rl7Io0Q7F4tHzS5+4cQyn17ev8tVAPfpPKbUUH
	 rxrB3APoWMhTukyk4tTn7ZQ8cIZlW+N1StFxRdIEY9Df3wbFEOsm/7tLH3ncuMsuf2
	 F+05YhKOQ4LgIn678AnwjfmTE9+01NEX0kYbUe1ZqI2hoMQdP7sO0nes03B0gRTXq1
	 6GRGa5MR3hNPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CFD106ACF6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335729357.16484.1854642270004047891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fecf157e7f32774b2addb899f2cca266aa95363f960642ee25d5918418fd2e77
Date: Thu, 12 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773357293
