Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6BC318B81
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769651033; cv=none; b=hg+KhJQA5QH38SufQux03KKdnNoS1iD02jUmXjmekwpeauOPvWpLL8kNlboQfoS+MJjzez/G6jQXZl2zO1Rci2vsNXWDhdup50ljBJ05rBgvFr62uh7Hxok7xRtO5V5nUMDOWnuxYxit8fmWomIuYjLz/4Rf2yThmO6ZuAEC3t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769651033; c=relaxed/simple;
	bh=rkNf9AZC2yC3P3stjmV2gGkt/t/aC3gfXy2wa4oiX9U=;
	h=To:Subject:From:Message-Id:Date; b=SmLu0EvYBJmvkYwfhXjcBMDexLbGv2PTKmsvOb/2Y6ZR3nCVjVkeJgd4zKH/VFa45p9cgsWid6HOwc2bxBAlXBAHJ5U3jgzu+vwYa6g/GjGi/vFszwGp4G6key16yr+LWyM74flOZ6gqN3PUKkdNZSkTkG4srO/JLfPCPV9K1ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rqa8Xta3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rqa8Xta3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDA9C116C6
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769651033;
	bh=rkNf9AZC2yC3P3stjmV2gGkt/t/aC3gfXy2wa4oiX9U=;
	h=To:Subject:From:Date:From;
	b=Rqa8Xta3xMiZhLS1B82byt1uirXpUinT2VEzoQVG843/1/bVOBYYc3Q8PPpuJrF35
	 whfmTGcD/07Rwu9AIxMsovFouwH+RkvELziICtmCAzRdJV3vIGMyTTMkrKnh2wyHex
	 xKeaTDGdzQbtXPJEpfIfcx4bizkLiQ9qzPq7L8j+ZbqS9KGXECDaFp0vbufiYw0nih
	 cBuZyZRufSdtU4zMv9SuCfdwVMYZKl032h2hmZ7yavC7FvyL8PLJX2sFywxG+f//DO
	 EhHAu8P1lzOOsbh0PONzdTZsbtj9u3C5CxWYct55GqccsZGfhSWzJmIKDl0srpvgkv
	 Boxj06Rwj38Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFED46BF0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965103357.23160.10811776766201218549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233287a731b31a2621b8d75bd1efaf565dd7df25c15bf3d12ea943f21ef4485e
Date: Thu, 29 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769651033
