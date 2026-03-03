Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279D3374E71
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772505894; cv=none; b=QmxSiXUDRIwCFZIdGMlJc9G1N5vBbnvd8han2AE1VcBOMoHTHVjx5INwKW5ehGfI1dOZ+H0JDpjPX9HX9Gd78KUX0/Y3olVi1jyezMXTumDNe/nXPrwmsy9TQAgHG+tHMZgPjSUfmV6bLoU/iXlX0TmOEpkDiawDoJdVC6j8u2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772505894; c=relaxed/simple;
	bh=uN5Pt+Ft5+NdvsJPOzEI2yZLMYk/bZnD8VSp8BR3Ye0=;
	h=To:Subject:From:Message-Id:Date; b=ky50Pag2yZFbIoeeXdq/KuzPlnKXhlQL0t/rn82bMUK94U6YxzUDCYshhmba3AlhBYeOKlUZl0JRWxaPxXCSoKslzxoSVY5rpzvTXiFuFQJpNx79UpvY8x8OD8RpI18nJ73SGnjc06bhHyL6OUoQBFdxNFPwFqf9GFpzMZ9JnbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLlmxbwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLlmxbwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD63AC19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772505893;
	bh=uN5Pt+Ft5+NdvsJPOzEI2yZLMYk/bZnD8VSp8BR3Ye0=;
	h=To:Subject:From:Date:From;
	b=aLlmxbwuxz/GuQ5EAZhpL11+anMaxtHLzE0CTSrNvIvMEJnmgYwWVa+nISk5IhErv
	 /BWcr0HcxfGF8ISnub2dyl+5yFpHO4jfiY7N1zuqg/NbF6mg1IQ0M8ImltWO2BO/Qt
	 W7CqCjDTp86bzhsDqo4v+4K7e+VVYgAZVGUPpg1wpirUJUwdPvNkabhwuoo7Ip0/6l
	 uu5UyPXlRRK6T1tSYNnYpqQbxLu9vgSvGFBFlWysCdsqdVHGHhuxBdpj7is+7B07DV
	 GlKIh/1yMENJk2drSLna6/gjCot8MyFkPBJi1JMGzSTlNmOu/j6qmQVUERY03sioAF
	 2YinXrqitSBsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8212EB3659
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250589367.19415.14543783092725306305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3aa36af7cbe20bc7601ce0d9a6159e64fe4c2da06f07d675d75b99483553456
Date: Tue, 03 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772505893
