Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEAA218AA3
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742428194; cv=none; b=pAdSDCNtMjwX4TEM6NeTQnXbCGh0i0pJIsU08ZTvA37AsiMQRPrtK7ATSbE7uFVqNfDRo1kzHWHC+Z9sC99OETwPtkzpCnGpaw6OJ1W+Q+60G4xH+2gHR+GpxiSSUGPYhVjhbNLMNXm/5ARsK0EyW3+vqrPJ049+TZPV5W5sYvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742428194; c=relaxed/simple;
	bh=VjGH6ja/Kqdpr+oxqz61t8h/BzBaL050A7WgyFfPrE8=;
	h=To:Subject:From:Message-Id:Date; b=paWQg1jTcpK6BbT3YWKEMXzb9KKsf2D07B/f84NwaAeLMQ0UaB0JiZxleC4k389M/BL0w/xfxt6Gbcs+mD2iw1+xKt0fTA3p/WPywHYKUmt+8LoHId8IrA973/x/GXsC0k8rYTOxsWnPsDyMJlZYxvzq8X7s//3zF62hJrDwWAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHDRJXLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHDRJXLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EE6C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742428193;
	bh=VjGH6ja/Kqdpr+oxqz61t8h/BzBaL050A7WgyFfPrE8=;
	h=To:Subject:From:Date:From;
	b=qHDRJXLxVx8EAiPeqDQvmfEJhSRVHPY+fqaapMcQ2ECKAKnWxVB/jW1WSj8n6LTym
	 qe7d0dlzfDFyJRssOB0E1c49V4NjbS/+qrbRb2ub5P4uiDnLI2UXvAFktwB2lQQ9+W
	 WIQmK6B73kgXU2lY1h+lQdxdbncDXKq39p7g8Ye3eWJFkymecIjh2S/5z8Wm+dGscw
	 wkb0kUkg/MW0MRoGJLnAVo/AKBILSFKW4KB8w0XSBur3RycqaiuZ8pDN8svrTUxBHr
	 nyhE/5oQgtft1xemL3yC09dQFCMxZgTSZUW/LznD9iAr7rqDuy7imMsU556y82q8eE
	 IUxr0jBNTfvKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A5BC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242819360.22466.15904043931861153946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d1399c41e0aa96d5df46a3a5f378eb4ab6ab68f12000773c91a1cf42efd6a3
Date: Wed, 19 Mar 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742428193
