Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E89415573B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720537583; cv=none; b=GN865w4SM4PzIKYUw71lYh+7Lx8HLlMRxQsRLjZOan8M90yrA8zWUetEufFKx7YxzZC1/+0PkwwCxlzQLuiCx7u78HInrQAngd0+S2PyJWeu1wjctYIYua4IDBoVJe1hYVLiri472gROv6CHB2N78ZCrNp2ItYVmv/GPtcXs4j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720537583; c=relaxed/simple;
	bh=kfTc4o/FD8XQVZ50FN45CC818Y0tFmBX1OORYR8U3FM=;
	h=To:Subject:From:Message-Id:Date; b=vGauVBhU0MtbZ5Jis2aHbwNzm5TAmR4mLahbl1Ml1hknzOy8rau0OP7ESFRvIdLq8A8QnHcAb5Nyb0NhlktHqJjubuty7JhPUimVBTlr+LD3D3nMOidbrpG403DhJlFQo74QRiaaFiGXEZ0PE92F2yxQBOMnccLuxWALHcDeOqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpuQgkG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpuQgkG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4798C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720537582;
	bh=kfTc4o/FD8XQVZ50FN45CC818Y0tFmBX1OORYR8U3FM=;
	h=To:Subject:From:Date:From;
	b=fpuQgkG+K6msXYGv9qOOD0abnWIYE9zGrVa/WAnmAj8TbnYYLuB4MuB0wLWDB1AOi
	 eTFT3Ahj+UzYNNK8RqWtMca7nBzU7mCXylNyI544QtS/VKXuV/1GWagSI7nkYjFj+h
	 7uGgVBi9lSzXtNIPvXTRE9Qj2pP0xsajjAsz2wLnKnvf+YwI3HB0639RT+izf8lsjW
	 ewfKz7c8zsCLMsgLo5GihkSC7emxYW6iwcD559/5sVohswSryN9FFYX1PZkfXrsN8g
	 MBn4ngeYqiJZ4ihoGO8z2I2ld4Jjt+NqqrnS1gW7EQ+jaCMm2YQnGhxVYwCu6nANFw
	 jffWdUu8jYXXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2354C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 15:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053758285.24334.11519685466224698645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8efc4fc7d1a087780f340993dfc73060d774c15a9974dc4a7654791e0d6888b
Date: Tue, 09 Jul 2024 15:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720537582
