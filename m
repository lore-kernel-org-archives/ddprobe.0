Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E20E1DF980
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777756054; cv=none; b=XL6oeVwbMv+MqRnArdCtTjKNgfBkyjjtNFUJod9+VevHARbR0BVGlVIRgcWEc5BzqdC0E1/Zd91ryO8lb+Rcx2ZkaLgyPib8G9YUOM5VFZjJ8Vz4D5Dev//7sV3Gmn7CkvlSboSlLLYjRNig0Q/El4PxzVOuxrE/pDrzNqhhE+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777756054; c=relaxed/simple;
	bh=G7gK+LblBkT/AX/THr699wxp7wVPj1sCvaq/rHhf3jk=;
	h=To:Subject:From:Message-Id:Date; b=e/2XcgxXoU+O6mRCjGphUtgP/VsBMXtvtS62SF4qLucJhY3vGsyaKLLzjEeubyfqF3+vgTVK+qq9sPWNlRQ87Wc3Vd7gL3EakU77SauEJo8a+BkLgQiBhuwZ4HPbMepbM7C4zoLnXEsqONR3jsJULdyTPVnu6chD/NZHTSVJMAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N79GcisL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N79GcisL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0EB3C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777756053;
	bh=G7gK+LblBkT/AX/THr699wxp7wVPj1sCvaq/rHhf3jk=;
	h=To:Subject:From:Date:From;
	b=N79GcisL1B3+ldPahFJuyX+Vh1ZnL5SQsknvgWE3w3fdgM+MgN5hnGJ4BwBjsSPlI
	 XKKpVOAjbQ1uHw8LDcmodeMeFQtEAIoSpBKhH8oujwA9A65w3l32beumBotlKr4Vly
	 KwmMqb8C7MxDI9hFANnx6xjTQpqPCVPJBuGdaH3MQUP7UIqiqhofzwE5UvplINt+88
	 LTR3cchk/LLPxvZ/Nyl/VKPQaQxcJAKaPV0O/pCeuO9rvPggFuSkwYRj3zCiziOQ4L
	 jqzSZGFEDazv1Z+OtShA1YTqh356N1wY/T4xl0piNQwGXh5aSAjLWvqY9XLQN1eIn4
	 BNYHFx61jCtxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1F6CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775605368.6923.18084167130386129886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0953c9b7b35279426f1fb9da10a4bd3fe7d4caa8a90c7ccf6f76921e172aa8
Date: Sat, 02 May 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777756053
