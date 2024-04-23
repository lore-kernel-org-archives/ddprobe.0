Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B5413DDAF
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 17:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713894023; cv=none; b=GybPdDc+hQ7NzHXt7LbxQ4jYPYNC70LPSTK46v9SfjXUv5CfOva0fGQLrJLKwPG+UbX2HrPc3qabiJr0wce6K1qL4Id2KdEbmpB4gHAvqZX9i4HQmDmIu+Gl+yilGTR4m3CHuSPbnQKOoxWuo4XlgRjkdSaUbqsfsX1cENDQIuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713894023; c=relaxed/simple;
	bh=xbldBnjxFqMWK6bggGDouMweM17MLy6hr6Mijm14Zus=;
	h=To:Subject:From:Message-Id:Date; b=c5CArLRKDZ8kYhVnFATQDiWU3+DVbg5A++L2Pst8JO8cuI1QD4nrGotEpRwXRfvzGbVnpSyahJql8Ss/h6ALJe7cvDKBZbDR7p+ihk42+5kS2js5DcvFH9+3f65/4dm3YOGtZOrXbDQ+0rFOCfL8k6E44XuKc8Oiqj5CkgJT3Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiv5w9Qs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiv5w9Qs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E114AC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 17:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713894022;
	bh=xbldBnjxFqMWK6bggGDouMweM17MLy6hr6Mijm14Zus=;
	h=To:Subject:From:Date:From;
	b=uiv5w9QsQfODUN8WvQDnTz3ab25jxXD23j8QnDHbcT3sbzC5XDujyLVa1z6sRL26G
	 XaxgCP/da2LHYKzMRj53sIWUbAE4kdPUhTiJayEaq9sjKbS2dJuVWLpeQ4gOn1CA7i
	 r380WvReuzma6r4eYvaZ9PcNNYYfJd/ptv/r0wZ4xO0l8vxqVnWngldegM61cjuF6y
	 K4WBrTQAK8ooKO1AekH/7QoLYMr70mNE5HN/OVEun4OKw/3gcXdk7eMEWsG3kZI6dS
	 Ey8PRzCPhMKNe6JMfy3JLiPNRq/zccZlW6psAA8KnfCHcrTAJ7KpgAIRje+M+DmRxD
	 TOCUgZLt2WqzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE9EC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 17:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171389402280.5453.10009923394228720657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15786513885057b6487049cd020e953539584062168bed058103f501b4902de
Date: Tue, 23 Apr 2024 17:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713894022
